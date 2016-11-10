// Brunch automatically concatenates all files in your
// watched paths. Those paths can be configured at
// config.paths.watched in "brunch-config.js".
//
// However, those files will only be executed if
// explicitly imported. The only exception are files
// in vendor, which are never wrapped in imports and
// therefore are always executed.

// Import dependencies
//
// If you no longer want to use a dependency, remember
// to also remove its path from "config.paths.watched".
import "phoenix_html"

// Import local files
//
// Local files can be imported directly using relative
// paths "./socket" or full ones "web/static/js/socket".

// import socket from "./socket"

const App = {
  init() {

  function getRowHTML(index) {
    const html = `
    <tr>
      <td>
        <div class="form-group">
        </div>
      </td>
      <td>
      </td>
      <td>
        <div class="form-group">
          <input class="form-control" id="user_user_biodata_${index}_weight"
                 name="user[user_biodata][${index}][weight]" type="number">
        </div>
      </td>
      <td>
        <div class="form-group">
          <input class="form-control" id="user_user_biodata_${index}_height"
                 name="user[user_biodata][${index}][height]" type="number">
        </div>
      </td>
    </tr>`
    return html;
  }

  function addNewRow() {
    const table = $('#biodata_table tbody')
    const rowsInTable = $('#biodata_table tbody tr');
    const rowsInTableCount = rowsInTable.length;
    const lastRow = rowsInTable.last();

    if (rowsInTableCount === 0) {
      const rowHTML = getRowHTML(0);
      $(rowHTML).insertAfter($(table));
    } else {
      const rowHTML = getRowHTML(rowsInTableCount);
      $(rowHTML).insertAfter($(lastRow));
    }
  }

  $('button[name="add_row"]').click(function(){
    addNewRow();
  })
}};

App.init();
