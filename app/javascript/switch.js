document.addEventListener("DOMContentLoaded", function() {
  var toggleButton = document.getElementById("toggleButton");
  var leftSidebar = document.querySelector('.col-md-3.left-sidebar');
  var rightColumn = document.querySelector('.col-md-3.right-column');
  var centerColumn = document.querySelector('.col-md-6.center-column');

  toggleButton.addEventListener("click", function() {
    if (leftSidebar.style.display === "none") {
      leftSidebar.style.display = "";
      rightColumn.style.display = "";
    } else {
      leftSidebar.style.display = "none";
      rightColumn.style.display = "none";
    }
  });
});
