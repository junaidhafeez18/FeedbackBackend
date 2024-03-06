
//Progress bar for car insurance
    const  Btnprevious  =  document.getElementById('Previous');
    const  Btnnext  =  document.getElementById('Next');
    const  Btnsubmit  =  document.getElementById('Submit');
    const  bullets  =  [...document.querySelectorAll('.bullets')];

    let current = 0;
    const max = 1;

    Btnprevious.style.display  =  'none';
    Btnsubmit.style.display  =  'none';

    Btnnext.addEventListener('click',  ()  =>  {
        bullets[current].classList.add('completed');
        current  +=  1;
        Btnprevious.style.display  =  'inline';
        if  (current  ===  max)  {
            Btnnext.style.display  =  'none';
            Btnsubmit.style.display  =  'inline';
        }
    });

    Btnprevious.addEventListener('click',  ()  =>  {
        bullets[current  -  1].classList.remove('completed');
        current  -=  1;
        Btnsubmit.style.display  =  'none';
        Btnnext.style.display  =  'inline';
        if  (current  ===  0)  {
            Btnprevious.style.display  =  'none';
        }
    });

    Btnsubmit.addEventListener('click',  ()  =>  {
        location.reload();
    });
//Progress bar for car insurance end

// //Progress bar for travel insurance
// const  Btnprevious1  =  document.getElementById('Previous1');
// const  Btnnext1  =  document.getElementById('Next1');
// const  Btnsubmit1  =  document.getElementById('Submit1');
// const  bullets1  =  [...document.querySelectorAll('.bullets1')];
//
// let current1 = 0;
// const max1 = 1;
//
// Btnprevious1.style.display  =  'none';
// Btnsubmit1.style.display  =  'none';
//
// Btnnext1.addEventListener('click',  ()  =>  {
//     bullets1[current].classList.add('completed');
//     current1  +=  1;
//     Btnprevious1.style.display  =  'inline';
//     if  (current1  ===  max1)  {
//         Btnnext1.style.display  =  'none';
//         Btnsubmit1.style.display  =  'inline';
//     }
// });
//
// Btnprevious1.addEventListener('click',  ()  =>  {
//     bullets1[current  -  1].classList.remove('completed');
//     current1  -=  1;
//     Btnsubmit1.style.display  =  'none';
//     Btnnext1.style.display  =  'inline';
//     if  (current1  ===  0)  {
//         Btnprevious1.style.display  =  'none';
//     }
// });
//
// Btnsubmit1.addEventListener('click',  ()  =>  {
//     location.reload();
// });
//Progress bar for travel insurance end
