document.addEventListener('turbolinks:load', function(){
  var timerElement = document.querySelector('.timer')
  if (timerElement) {
    var remainingTime = timerElement.dataset.remainingTime;
    if (remainingTime != null) {
    startTimer(timerElement, remainingTime);
    }
  }
}
)

function startTimer(control, remainingTime) {
  if (remainingTime > 0) {
    var timerLabel = document.querySelector('.timer_label');
    timerLabel.textContent = 'Осталось ' + remainingTime + ' секунд';
    remainingTime--;
    setTimeout(startTimer, 1000, control, remainingTime);
  } else {
    document.querySelector('.timer_label').textContent = 'Время вышло, нажмите ВПЕРЕД, чтобы просмотреть результат'
  }
}