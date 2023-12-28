document.addEventListener("DOMContentLoaded", function() {
    var toggleButton = document.getElementById("toggleButton");
    var colMd3Div = document.querySelector(".col-md-3");
  
    toggleButton.addEventListener("click", function() {
      if (colMd3Div.style.display === "none") {
        colMd3Div.style.display = "block";
      } else {
        colMd3Div.style.display = "none";
      }
    });
  });
  