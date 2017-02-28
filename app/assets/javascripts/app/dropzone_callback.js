
$(function() {
  var myDropzone = new Dropzone("#new_thesis");
  myDropzone.on("success", function(file, json) {
    console.log(json);
    // injecter la preview + les data dans le formulaire + les tags
  });
})
