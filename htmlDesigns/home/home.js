var m = document.getElementById('m');
var f = document.getElementById('f');

m.addEventListener('click',()=>{
    f.style.backgroundColor = "#FFF";
    m.style.backgroundColor = "#FFBF00";
})

f.addEventListener('click',()=>{
    f.style.backgroundColor = "#FFBF00";
    m.style.backgroundColor = "#FFF";
    f.style.transform = 'translateZ(0)';
    f.style.transition = "background-color 1s";
})