/*jshint esversion: 6 */
$(document).ready(() => {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $("#user-password").on("keypress", function (e) {
        if (e.which === 13) {
            $("form#user-login-form").submit();
        }
    });

    $("#profile").change(function(){
        PreviewProfilePicture(this);
    });
});

function ResetRequiredField(Id) {
    let Object = $("#" + Id);
    if(Object.hasClass('input-error')) {
        Object.removeClass('input-error');
    }
}

function PreviewProfilePicture(input) {
    if (input.files && input.files[0]) {
        let reader = new FileReader();
        reader.onload = function (e) {
            $('#profile-picture-preview').attr('src', e.target.result);
        };
        reader.readAsDataURL(input.files[0]);
    }
}

function RemoveProfilePicture() {
    $("#removeProfile").val(1);
    $('#profile-picture-preview').attr('src', $("#defaultProfilePicture").val());
}

function CloseModal(Id) {
    $("#" + Id).modal('toggle');
}