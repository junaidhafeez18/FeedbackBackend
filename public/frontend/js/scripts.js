//Plan cards

$( document ).ready(function() {
    $("#div1").addClass("activeMain");
    $('#p1').removeClass("text-custom-black");
    $('#p1').addClass("white");
    $('#plan-img-1').addClass("plan-white");

//    intl-input
    var input = document.querySelector("#phone");
    window.intlTelInput(input, {
        // allowDropdown: false,
        // autoHideDialCode: false,
        // autoPlaceholder: "off",
        // dropdownContainer: document.body,
        // excludeCountries: ["us"],
        // formatOnDisplay: false,
        // geoIpLookup: function(callback) {
        //   $.get("http://ipinfo.io", function() {}, "jsonp").always(function(resp) {
        //     var countryCode = (resp && resp.country) ? resp.country : "";
        //     callback(countryCode);
        //   });
        // },
        // hiddenInput: "full_number",
        // initialCountry: "auto",
        // localizedCountries: { 'de': 'Deutschland' },
        // nationalMode: false,
        // onlyCountries: ['us', 'gb', 'ch', 'ca', 'do'],
        // placeholderNumberType: "MOBILE",
        // preferredCountries: ['cn', 'jp'],
        // separateDialCode: true,
        utilsScript: "build/js/utils.js",
    });
    //    intl-input end

});

//car insurance form buttons start
    function next() {
        $('#vehicle_form').hide();
        $('#personal_info').show();
    }

    function previous() {
        $('#vehicle_form').show();
        $('#personal_info').hide();
    }
//car insurance form buttons end

//plan cards
    function family() {
        $('#family_plan').hide();
        $('#individual_plan').show();
        $('#parent_plan').hide();
    }

    function individual() {
        $('#family_plan').show();
        $('#individual_plan').hide();
        $('#parent_plan').hide();
    }

    function parent() {
        $('#parent_plan').show();
        $('#individual_plan').hide();
        $('#family_plan').hide();
    }

    $("#individual").click(function(){
        $("#div2").removeClass("activeMain");
        $("#div1").addClass("activeMain");
        $("#div3").removeClass("activeMain");
        $('#p1').removeClass("text-custom-black");
        $('#p1').addClass("white");
        $('#plan-img-3').removeClass("plan-white");
        $('#p2').addClass("text-custom-black");
        $('#p3').addClass("text-custom-black");
        $('#plan-img-2').removeClass("plan-white");
        $('#plan-img-1').addClass("plan-white");
    });
    $("#family").click(function(){
        $("#div2").addClass("activeMain");
        $("#div1").removeClass("activeMain");
        $("#div3").removeClass("activeMain");
        $('#p1').addClass("text-custom-black");
        $('#p2').removeClass("text-custom-black");
        $('#p2').addClass("white");
        $('#plan-img-3').removeClass("plan-white");
        $('#p3').addClass("text-custom-black");
        $('#plan-img-2').addClass("plan-white");
        $('#plan-img-1').removeClass("plan-white");

    });
    $("#parent").click(function(){
        $("#div2").removeClass("activeMain");
        $("#div1").removeClass("activeMain");
        $("#div3").addClass("activeMain");
        $('#p1').addClass("text-custom-black");
        $('#p3').addClass("white");
        $('#p2').addClass("text-custom-black");
        $('#plan-img-3').addClass("plan-white");
        $('#p3').removeClass("text-custom-black");
        $('#plan-img-2').removeClass("plan-white");
        $('#plan-img-1').removeClass("plan-white");
    });
//plan cards end

//travel insurance form handling start
    let count = 0;
    $("#Next1").click(function(){
        count++;
        if (count === 1){
            $('#trip').show();
            $('#destination').hide();
            $('#passenger').hide();
            $('#personal').hide();
        }
        if (count === 2){
            $('#trip').hide();
            $('#destination').hide();
            $('#passenger').show();
            $('#personal').hide();
        }
        if (count === 3){
            $('#trip').hide();
            $('#destination').hide();
            $('#passenger').hide();
            $('#personal').show();
        }
    });


    $("#Previous1").click(function(){
        count--;
        if (count === 2){
            $('#trip').hide();
            $('#destination').hide();
            $('#passenger').show();
            $('#personal').hide();
        }
        if (count === 1){
            $('#trip').show();
            $('#destination').hide();
            $('#passenger').hide();
            $('#personal').hide();
        }
        if (count === 0){
            $('#trip').hide();
            $('#destination').show();
            $('#passenger').hide();
            $('#personal').hide();
        }
    });

//travel insurance form handling end