// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"

import "trix"
import "@rails/actiontext"

import "./add_jquery.js";

function previewImage(input) {
    const preview = document.getElementById('imagePreview');
    preview.innerHTML = '';
  
    if (input.files && input.files[0]) {
      const reader = new FileReader();
      reader.onload = function(e) {
        const image = document.createElement('img');
        image.src = e.target.result;
        image.style.maxWidth = '300px'; // Adjust as needed
        preview.appendChild(image);
      };
      reader.readAsDataURL(input.files[0]);
    }
  }
  