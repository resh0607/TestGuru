document.addEventListener('turbolinks:load', function() {
  var control = document.querySelector('#user_password_confirmation')

  if (control) { control.addEventListener('input', checkPasswordConfirmation) }
})

function checkPasswordConfirmation() {
  var password = document.querySelector('#user_password').value
  var passwordConfirmation = document.querySelector('#user_password_confirmation').value

  var matchIcon = document.querySelector('.fa-check')
  var noMatchIcon = document.querySelector('.fa-times')

  if (passwordConfirmation.length > 0) {
    if (password == passwordConfirmation) {
      matchIcon.classList.remove('hide')
      noMatchIcon.classList.add('hide')
    }
    else {
      matchIcon.classList.add('hide')
      noMatchIcon.classList.remove('hide')
    }
  }
  else {
    matchIcon.classList.add('hide')
    noMatchIcon.classList.add('hide')
  }
}


