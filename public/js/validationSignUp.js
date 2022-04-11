
window.addEventListener("load", function(){
    let signUpForm = document.querySelector("form.signupForm")
    signUpForm.addEventListener("submit", function(event) {

        let errorsCount = 0;
        event.preventDefault();
        const formFields = [...signUpForm.elements];
        formFields.pop();
        
        formFields.forEach(oneField => {
            const spanTagError = oneField.nextElementSibling;
            if (oneField.value.trim() === "") {
                spanTagError.classList.add("text-error");
                spanTagError.innerText = "El campo es obligatorio";
                errorsCount++;
            } 
            else {
                spanTagError.classList.remove("text-error");
                spanTagError.innerText = "";
            }
        })
        

            if (errorsCount > 0) {
                event.preventDefault();
            }
        







        //PRIMERA LOGICA
        // let errores = []
        // let userSignUp = document.querySelector("#user")
        //  if (userSignUp.value.trim() == "") {
             
        //     errores.push("El campo de usuario no puede estar vacío")
            
        //  }
         
        //  if (userSignUp.value.length == 1) {
             
        //     errores.push("El campo de usuario debe tener al menos 2 caracteres")
            
        //  }
         
        //  let emailSignUp = document.querySelector("#email")
        //  if (emailSignUp.value.trim() == "") {
        //      errores.push ("El campo de email no puede estar vacío")
             
        //  }

        //  let passwordSignUp = document.querySelector("#password")
        //  if (passwordSignUp.value.trim() == "") {
        //     errores.push ("El campo de password no puede estar vacío")
        //  }

        //  if (passwordSignUp.value.length > 0 && passwordSignUp.value.length < 8) {
        //     errores.push ("Su password debe tener al menos 8 caracteres")
        //  }

        //  let avatarSignUp = document.querySelector("#avatarImg")
        //  console.log(event.value)

        //  if (errores.length > 0 ) {
        //         event.preventDefault();
        //         let ulErrors = document.querySelector(".front-validation-error ul");
        //         for (let i = 0; i < errores.length; i++) {
            
        //             ulErrors.innerHTML += "<li>" +errores[i]+ "</li>"
        //         }
        //     }

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