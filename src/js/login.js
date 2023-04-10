// OPTIONS //
const url = '../server/auth/login.php';

// LISTENER //
$('#btn-submit').click((evt)=>{
  evt.preventDefault();
  console.log("ciao");
  $.ajax({
    url: url,
    type: 'post',
    data: $('#login-form').serialize(),


    success: () => {
      //redirect to main page
      window.location.replace("../index.html");
    },

    error: (data) => {
      //todo: mostra errore
      let res = JSON.parse(data.responseText);
      console.log(res);
      if (res.is_success === 0) {
        // show error message
        $('.alert-danger').remove();
        $('#login-form').prepend('<div class="alert alert-danger mb-3">' + res.message + '</div>');
      }
    }
  })
});