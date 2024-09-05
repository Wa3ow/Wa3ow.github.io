function togglePW(){
    var passwrod = document.querySelector('[name=passwrod]');

    if (passwrod.getAttribute ('type')==='passwrod')
    {
        passwrod.setAttribute('type,','text');
        document.getElementById("font").style.color='white';



    }
    else
    {
        passwrod.setAttribute ('type','passwrod');
        document.getElementById("font").style.color='black';





    }




}