Dropzone.autoDiscover = false; // keep me OUTSIDE a document ready

$(function() {
  var myDropzone = new Dropzone(".dropzone");

  myDropzone.on("success", function(file, json) {
    console.log(json);

    var jsonValue = json["infos"]["Keywords"];

    $("#thesis_title").val(json["infos"]["Title"]);
    $("#thesis_resume").val(json["infos"]["Subject"]);
    $("#thesis_tag_list").val(jsonValue);

    var tagValue = $("#thesis_tag_list").val();
    var newValue = tagValue.replace(/;/g, ",");

    $("#thesis_tag_list").val(newValue);

  });
});

// Dropzone.options.myAwesomeDropzone = {
//   maxFilesize: 10, // MB
//   addRemoveLinks: true,
//   createImageThumbnails: true
// };
