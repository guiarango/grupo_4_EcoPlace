window.addEventListener("load", function(){



    let signInForm = document.querySelector("form.signInForm")

    signInForm.addEventListener("submit", function(event) {

        let errorsCount = 0;
        
        const formFields = [...signInForm.elements];
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

        const emailSignIn = document.querySelector("#user")
        if (emailSignIn.value.trim() != ""){
        var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        if(emailSignIn.value.match(mailformat)) {
            emailSignIn.nextElementSibling.classList.remove("text-error")
                emailSignIn.nextElementSibling.innerText = "";
        } else {
            emailSignIn.nextElementSibling.classList.add("text-error")
            emailSignIn.nextElementSibling.innerText = "El email no es válido";
            errorsCount++;
        }}
           
            if (errorsCount > 0) {
                console.log(errorsCount)
                event.preventDefault();
            }


    })
})