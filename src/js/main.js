$(document).ready(function() {
  // Check for session cookie
  if (!document.cookie.includes("session=")) {
    // Redirect to login page
    window.location.href = "./login.html";
  }
});

function goToSection(id) {
  var button = document.querySelector(`button[data-bs-target="#${id}-collapse"]`);
  var isExpanded = button.getAttribute("aria-expanded");
  console.log(isExpanded);
  if (isExpanded === "true") {
    console.log("vai");
    location.href = "#" + id;
  }
}