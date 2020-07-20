document.addEventListener('turbolinks:load', function(){
  var timerElement = document.querySelector('.timer')
  if (timerElement) {
    var remainingTime = timerElement.dataset.remainingTime;
    startTimer(timerElement, remainingTime);
  }
}
)

function startTimer(control, remainingTime) {
  if (remainingTime > 0) {
    var timerLabel = document.querySelector('.timer_label');
    timerLabel.textContent = remainingTime;
    remainingTime--;
    setTimeout(startTimer, 1000, control, remainingTime);
  } else {
    var resultPage = window.location.href + '/result';
    window.location.replace(resultPage);
  }
}