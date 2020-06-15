document.addEventListener('turbolinks:load', function() {
  var control = document.querySelector('.sort-by-title')
  
  if (control) control.addEventListener('click', sortRowsByTitle)
})

function sortRowsByTitle() {
  var table = document.querySelector('table')

  //returns NodeList collection
  var rows = table.querySelectorAll('tr')
  var sortedRows = []

  //push all rows exept headet into sortedRows
  for (var i = 1; i < rows.length; i++) {
    sortedRows.push(rows[i])
  }
  
  sortedRows.sort(compareRows)

  var sortedTable = document.createElement('table')

  sortedTable.classList.add('table')
  sortedTable.appendChild(rows[0])

  for (var i = 0; i < sortedRows.length; i++) {
    sortedTable.appendChild(sortedRows[i])
  }
  
  //replace unsorted table with sorted one.
  table.parentNode.replaceChild(sortedTable, table)
}

function compareRows(row1, row2) {
  var testTitle1 = row1.querySelector('td').textContent
  var testTitle2 = row2.querySelector('td').textContent

  if (testTitle1 < testTitle2) { return -1 }
  if (testTitle1 > testTitle2) { return  1 }
  return 0
}