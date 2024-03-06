<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Post;
use App\Models\PostComment;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;

class APIController extends Controller
{
    protected $success_status = 200;
    protected $error_status = 500;
    protected $bad_request_status = 400;

    //Login
    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required',
            'password' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json($validator->errors(), $this->bad_request_status);
        } else {
            if (!Auth::attempt($request->only('email', 'password'))) {
                return response()->json(['message' => 'Unauthorized'], 401);
            } else {
                $user = User::where('email', $request['email'])->first();
                $token = $user->createToken('auth_token')->plainTextToken;

                // update user login status
                $user->login_status = 1;
                $user->save();

                $data = array();
                $role = '';
                
                $data = array(
                    'status' => true,
                    'access_token' => $token,
                    'token_type' => 'Bearer',
                    'user_id' => $user->id,
                    'name' => $user->name,
                    'email' => $user->email,
                    'profile_pic' => $user->profile_pic != '' ? asset('public/storage/profile-pics/' . $user->profile_pic) : '',
                    'cover_photo' => $user->cover_photo != '' ? asset('public/storage/profile-pics/' . $user->cover_photo) : '',
                    'login_status' => $user->login_status == 1 ? 'Active' : 'Offline',
                    'created_at' => Carbon::now()
                );

                if ($user->role_id == 2) {
                    $role = "Student";
                    $data['role'] = $role;
                } else if ($user->role_id == 3) {
                    $role = "Society";
                    $data['role'] = $role;
                    $data['tagline'] = $user->tagline != '' ? $user->tagline : '';
                    $data['description'] = $user->description != '' ? $user->description : '';
                }
                return response()->json($data, $this->success_status);
            }
        }
    }

    public function logout(Request $request)
    {
        // $user = User::find($request->user()->id);
        $user = Auth::user();
        $user->login_status = 0;
        $user->save();

        Auth::user()->tokens()->where('id', Auth::user()->currentAccessToken()->id)->delete();
        $data = array(
            'status' => true,
            'message' => 'Logout successfully!',
        );
        return response()->json($data, $this->success_status);
    }

    // Feedbacks
    public function createFeedback(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'fname'       => 'required',
            'lname'       => 'required',
            'participate' => 'required',
            'message'     => 'required',
            'suggest'     => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json($validator->errors(), $this->bad_request_status);
        } else {
            // $userEmail = User::find($request->user()->email);
            $user = Auth::user();
            $Affected = Post::create([
                'fname'       => $request['fname'],
                'lname'       => $request['lname'],
                'email'       => $user->email,
                'joinby'      => $request['join'],
                'participate' => $request['participate'],
                'message'     => $request['message'],
                'suggest'     => $request['suggest'],
                'created_at'  => Carbon::now()
            ]);
            $data = array(
                'status' => true,
                'message' => 'Feedback created successfully'
            );
            return response()->json($data, $this->success_status);
        }
    }

    public function getFeedbacks(Request $request)
    {
        $Posts = Post::select()->orderBy('posts.id','DESC')->paginate(10);

        $post_array = array();
        $post_array = $Posts->items();
        foreach ($post_array as $index => $value) {
            // get post comments
            $PostComments = PostComment::join('users','post_comments.student_id','=','users.id')
                ->where('post_id', $value->post_id)
                ->select('users.name as student_name')
                ->selectRaw('post_comments.comment')
                ->get();
            $value['post_comments'] = $PostComments;
        }

        $data = array(
            'status' => true,
            'data' => $Posts,
        );
        return response()->json($data);
    }
}