Dropzone.autoDiscover = false; // keep me OUTSIDE a document ready

$(function() {
  var myDropzone = new Dropzone("#new_thesis");

  myDropzone.on("success", function(file, json) {
    // console.log(json);

    var jsonValue = json["infos"]["Keywords"];

    $("#thesis_title").val(json["infos"]["Title"]);
    $("#thesis_tag_list").val(jsonValue);

    var tagValue = $("#thesis_tag_list").val();
    var newValue = tagValue.replace(/;/g, ",");

    $("#thesis_tag_list").val(newValue);

  });
});
