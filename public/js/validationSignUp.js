window.addEventListener("load", function(){
    let formulario = document.querySelector("form.signupForm")
    formulario.addEventListener("submit", function(event) {
        let errores = []
        let usuario = document.querySelector("#user")
         if (usuario.value == "") {
             
            errores.push("El campo de usuario no puede estar vacío")
            
         }
         
         let email = document.querySelector("#email")
         if (email.value =="") {
             errores.push ("El campo de email no puede estar vacío")
             
         }

         let password = document.querySelector("#password")
         if (password.value = "") {
            errores.push ("El campo de password no puede estar vacío")
         }
         if (errores.length > 0 ) {
                event.preventDefault();
                let ulErrors = document.querySelector(".front-validation-error ul");
                for (let i = 0; i < errores.length; i++) {
            
                    ulErrors.innerHTML += "<li>" +errores[i]+ "</li>"
                }
            }

    })


//     const buttonSubmit = document.querySelector("buttonSignUp");
//     buttonSubmit.addEventListener("submit", function(event){
// let errors = [];

// const userSignUp = document.querySelector("#user");
// const emailSignUp = document.querySelector("#email");
// const passwordSignUp = document.querySelector("#password");
// // const avatarSignUp = document.querySelector(".avatarImage input");



// if (userSignUp.value == "") {
//     errors.push ("El nombre de usuario está vacío")
// } 
//  if (userSignUp.value.length < 2) {
//     errors.push("Debe contener al menos 3 caracteres.")
// }
// if (emailSignUp.value == "") {
//     errors.push ("El campo de e-mail está vacío")
// }
//  if (passwordSignUp.value == "") {
//     errors.push ("Escriba su password dos veces")
// }


//     if (errors.length > 0 ) {
//     event.preventDefault();
//     let ulErrors = document.querySelector(".front-validation-error ul");
//     for (let i = 0; i < errors.length; i++) {

//         ulErrors.innerHTML += "<li>" +errors[i]+ "</li>"
//     }
// }

// });

});