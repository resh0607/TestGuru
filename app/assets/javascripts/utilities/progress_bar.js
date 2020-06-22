document.addEventListener('turbolinks:load', function() {
  var control = document.querySelector('.progress-bar')

  if (control) {
    showProgress(control)
  }
})

function showProgress(control) {
  var progress = control.dataset.progress
  var currentProgressValue = control.getAttribute('aria-valuenow')

  currentProgressValue = progress
  control.style.width = progress + '%'
}