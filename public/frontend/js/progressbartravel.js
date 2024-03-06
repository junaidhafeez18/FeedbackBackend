
// //Progress bar for travel insurance
const  Btnprevious1  =  document.getElementById('Previous1');
const  Btnnext1  =  document.getElementById('Next1');
const  Btnsubmit1  =  document.getElementById('Submit1');
const  bullets1  =  [...document.querySelectorAll('.bullets1')];

let current1 = 0;
const max1 = 3;

Btnprevious1.style.display  =  'none';
Btnsubmit1.style.display  =  'none';

Btnnext1.addEventListener('click',  ()  =>  {
    bullets1[current1].classList.add('completed');
    current1  +=  1;
    Btnprevious1.style.display  =  'inline';
    if  (current1  ===  max1)  {
        Btnnext1.style.display  =  'none';
        Btnsubmit1.style.display  =  'inline';
    }
});

Btnprevious1.addEventListener('click',  ()  =>  {
    bullets1[current1  -  1].classList.remove('completed');
    current1  -=  1;
    Btnsubmit1.style.display  =  'none';
    Btnnext1.style.display  =  'inline';
    if  (current1  ===  0)  {
        Btnprevious1.style.display  =  'none';
    }
});

Btnsubmit1.addEventListener('click',  ()  =>  {
    location.reload();
});
//Progress bar for travel insurance end
