
window.addEventListener("load", function(){



    let signUpForm = document.querySelector("form.signupForm")

    signUpForm.addEventListener("submit", function(event) {

        let errorsCount = 0;
        
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
        const userSignUp = document.querySelector("#user",)
        if (userSignUp.value.length > 0) {
        if ( userSignUp.value.length < 2 ) {
                userSignUp.nextElementSibling.classList.add("text-error")
                userSignUp.nextElementSibling.innerText = "Su nombre de usuario debe tener al menos 2 caracteres"
             errorsCount++;
            }
          else {
            userSignUp.nextElementSibling.classList.remove("text-error")
            userSignUp.nextElementSibling.innerText = "";

          }}


        const passwordSignUp = document.querySelector("#password",)
        if (passwordSignUp.value.length > 0) {
        if ( passwordSignUp.value.length < 8 ) {
                passwordSignUp.nextElementSibling.classList.add("text-error")
                passwordSignUp.nextElementSibling.innerText = "Su password debe tener al menos 8 caracteres"
             errorsCount++;
            }
          else {
            passwordSignUp.nextElementSibling.classList.remove("text-error")
            passwordSignUp.nextElementSibling.innerText = "";

          }}

            const confirmPasswordSignUp = document.querySelector("#confirm-password",)
            if (confirmPasswordSignUp.value.length > 0) {
            if ( confirmPasswordSignUp.value.length < 8 ) {
                    confirmPasswordSignUp.nextElementSibling.classList.add("text-error")
                    confirmPasswordSignUp.nextElementSibling.innerText = "Su password debe tener al menos 8 caracteres"
                 errorsCount++;
                }
              else {
                confirmPasswordSignUp.nextElementSibling.classList.remove("text-error")
                confirmPasswordSignUp.nextElementSibling.innerText = "";

              }}

              const emailSignUp = document.querySelector("#email")
        if (emailSignUp.value.trim() != ""){
        var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        if(emailSignUp.value.match(mailformat)) {
            emailSignUp.nextElementSibling.classList.remove("text-error")
                emailSignUp.nextElementSibling.innerText = "";
        } else {
            emailSignUp.nextElementSibling.classList.add("text-error")
            emailSignUp.nextElementSibling.innerText = "El email no es válido";
            errorsCount++;
        }}
              let avatarSignUp = document.querySelector("#avatarImg")
              const Ext = ["jpg", "jpeg", "png", "gif"];

              let ImgExtName = formFields[4].files
              let img = [...ImgExtName]
              if (img.length > 0) {
              let extensionImgSignup = img[0].name.split(".")[1];
                    if (!Ext.includes(extensionImgSignup)) {

                    avatarSignUp.nextElementSibling.classList.add("text-error")
                    avatarSignUp.nextElementSibling.innerText = "El formato de la imagen debe ser jpg, jpeg, png o gif"
                    errorsCount++;
                    } else {
                    avatarSignUp.nextElementSibling.classList.remove("text-error")
                    avatarSignUp.nextElementSibling.innerText = "";
                    }
                }       
           
            if (errorsCount > 0) {
                console.log(errorsCount)
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