document.addEventListener("DOMContentLoaded", function() {
    // Znajdź wszystkie komunikaty flash
    var flashMessages = document.querySelectorAll('.flash-message');
  
    // Ukrywaj komunikaty po pewnym czasie (np. 5 sekund)
    flashMessages.forEach(function(message) {
      setTimeout(function() {
        message.style.display = 'none';
      }, 5000); // czas w milisekundach
    });
  });
  