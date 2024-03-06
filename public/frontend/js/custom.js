$(document).ready(function () {
    let Datatable = $(".datatable");
    if(Datatable.length > 0) {
        Datatable.DataTable();
    }

    let Banner = $("#banner-owl-carousel");
    if (Banner.length > 0) {
        Banner.owlCarousel({
            autoPlay: true,
            paginationSpeed: 3000,
            slideSpeed: 300,
            singleItem: true,
            navigation: false,
            navigationText: false,
            pagination: true,
            paginationNumbers: false,
        });
    }

    /*Btn Hover Event Listener*/
    const Btn = $(".animatedbtn");
    Btn.hover(function(){
        let obj = this;
        let Text = $(obj).attr('data-text');
        let Effect = $(obj).attr('data-effect');
        if(!Effect) {
            $(obj).html('<i class="fas fa-arrow-right"></i>&nbsp;&nbsp;' + Text).css('transition', '0.3s');
        }
    }, function(){
        let obj = this;
        let Text = $(obj).attr('data-text');
        let Effect = $(obj).attr('data-effect');
        if(!Effect) {
            $(obj).html(Text + '&nbsp;&nbsp;<i class="fas fa-arrow-right"></i>');
        }
    });

    /*Border Bottom Effect on Hover*/
    $(".border-bottom-effect").hover(function(){
        $(this).css({'border-bottom': '5px solid #25A31D', 'transition': '0.2s'});
    }, function(){
        $(this).css({'border-bottom': '5px solid transparent', 'transition': '0.2s'});
    });

    $('.owl-carousel').owlCarousel({
        loop:false,
        margin:10,
        nav:true,
        navText : ['<i class="fa fa-angle-left" aria-hidden="true" style="position: absolute; left: -1rem; top: 9rem;"></i>','<i class="fa fa-angle-right" aria-hidden="true" style="position: absolute; right: -1rem; top: 9rem;"></i>'],
        responsive:{
            0:{
                items:1
            },
            600:{
                items:3
            },
            1000:{
                items:4
            }
        }
    })
});

function StepFromTo(Step, TotalSteps) {
    for (let k = 1; k <= TotalSteps; k++) {
        /* Hide */
        $("#form-step-" + k).addClass('d-none');
    }
    /* Show */
    $("#form-step-" + Step).removeClass('d-none');
    /*Step Bar*/
    ResetStepBar();
    SetStepBar(Step);
    window.scrollTo({top: 250, behavior: 'smooth'});
}

function ResetStepBar() {
    $(".stepper-item").each((i, obj) => {
        if(i === 0) {
            /*Step 1*/
            $(obj).addClass('completed').addClass('active');
        } else {
            /* Other Step */
            $(obj).removeClass('completed').addClass('active');
        }
    });
}

function SetStepBar(Step) {
    $(".stepper-item").each((i, obj) => {
        if(i <= Step - 1) {
            $(obj).removeClass('active').addClass('completed');
        }
    });
}

function OpenModal(Modal) {
    $("#" + Modal).modal('show', {
        backdrop: false
    });
}

function CloseModal(Modal) {
    $("#" + Modal).modal('hide');
}
