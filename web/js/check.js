/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/*Check passwords in the registration form are the same*/
function check_pass() {
var form = document.getElementById("registration_form"), //Objeto formulario, para luego acceder a los elementos
            pass1 = form.pass1,
            pass2 = form.pass2;                        
            
            if (pass1.value !== pass2.value){
                alert("Passwords introduced are not the same");
            }
}



/*Check user introduce righ answer in the form of CONTACT-> Email (4)*/
function check_email() {
    var form = document.getElementById("contactform"), //Objeto formulario, para luego acceder a los elementos
            human = form.human,
            name = form.name,
            email = form.email,
            phone = form.phone;
    
    if (name.value === "") {
        alert("Name field is mandatory");
    }
    if (email.value === "") {
        alert("Email field is mandatory");
    }
    if (phone.value === "") {
        alert("Phone field is mandatory");
    }
    if (human.value !== "4") {
        alert("Answer incorrect, 2+2 is not: " + human.value);
    }

}