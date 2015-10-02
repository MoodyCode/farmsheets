var ready = function() {
  varietals = $('#planting_varietal_id').html();
  $('#planting_crop_id').change(function() {
    crops = $('#planting_crop_id :selected').text();
    options = $(varietals).filter("optgroup[label=" + crops + "]").html();
    if (options) {
      $('#planting_varietal_id').html(options);
    } else {
      $('#planting_varietal_id').empty();
    }
  })
};

$(document).ready(ready);
$(document).on('page:load', ready);