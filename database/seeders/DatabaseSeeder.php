<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Profiles;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();

         $Affected = \App\Models\User::factory()->create([
             'first_name' => 'MEMBOA',
             'last_name' => 'ADMIN',
             'email' => 'admin@memboa.com',
             'phone' => '123',
             'password' => Hash::make('12345678'),
             'role_id' => 1,
             'status' => 1
         ]);
    }
}
