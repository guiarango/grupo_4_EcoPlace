window.addEventListener('load', function(){

let errors = {};

let productForm = document.getElementById('productForm');
let productName = document.getElementById('productName');
let productPrice = document.getElementById('productPrice');
let productDescription = document.getElementById('productDescription');
let productImage = document.getElementById('file');

let validateProductName = function(){
    let massage = '';

if(validator.isEmpty(productName.value, { ignore_whitespace:true })) {
    massage = 'Debés completar el campo nombre';
} else if(!validator.isLength(productName.value, { min: 5 })){
    massage = 'El campo nombre debe tener al menos 5 caracteres';
}

handleError(productName, massage);
};

let validateProductPrice = function(){
    let message = '';

if(validator.isEmpty(productPrice.value, { ignore_whitespace:true })) {
    massage = "Debés completar el campo de precio";
} else if(!validator.isNumeric(productPrice.value)){
    massage = 'Solo se permiten números';
}

    handleError(productPrice, massage);
};

let validateProductDescription = function() {
    let massage = '';

if(validator.isEmpty(productDescription.value, { ignore_whitespace:true })) {
    massage = 'Debes completar el campo descripción';
} else if(!validator.isLength(productDescription.value, { min:20 })) {
    massage = 'El campo descripción debe tener al menos 20 caracteres';
}

handleError(productDescription, massage);
};

let validateProductImage = function () {
    
    const Ext = ["jpg", "jpeg", "png", "gif"];
    
    let massage = '';
    
    let ext = productImage.value.split(".")[1];
    
    if(!Ext.includes(ext)) {
        massage = "Imagen de formato inválido";
    }

    handleError(productImage, massage);
};

let handleError = function (element, textError) {
    let textErrorElement = element.nextElementSibling;

    if (textError) {
        element.classList.add('input-danger');
        textErrorElement.classList.add('text-danger');
        errors[element.name] = textError;
    } else {
        element.classList.remove('input-danger');
        textErrorElement.classList.remove('text-danger');
        delete errors[element.name];
    }
    
    textErrorElement.innerText = textError;
  }

  productName.addEventListener('blur', validateProductName);
  productPrice.addEventListener('blur', validateProductPrice);
  productDescription.addEventListener('blur', validateProductDescription);
  productImage.addEventListener('blur', validateProductImage);

  productForm.addEventListener('submit', function (e) {
      validateProductName();
      validateProductPrice();
      validateProductDescription();
      validateProductImage();

    if(Object.keys(errors).length) {
        e.preventDefault();
    }
  });

})