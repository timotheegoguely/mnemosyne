Dropzone.autoDiscover = false; // keep me OUTSIDE a document ready

$(function() {
  var myDropzone = new Dropzone("#new_thesis");

  myDropzone.on("success", function(file, json) {
    console.log(json);

    $("#thesis_title").val(json["infos"]["Title"]);
    $("#thesis_tag_list").val(json["infos"]["Keywords"]);

    // injecter la preview + les data dans le formulaire + les tags
  });
});
