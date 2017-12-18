$( document ).ready(function() {
  $('.remove-item').click(function(e){
    e.preventDefault();
    $(this).prev("input[type=hidden]").value = "1";
    $(this).parent().hide();
    console.log($(this));
  })

  $('.remove-question').click(function(e){
    e.preventDefault();
    $(this).prev("input[type=hidden]").value = "1";
    $(this).parent().hide();
    console.log($(this));
  })

  $('.link_to_add_fields').click(function(e){
        e.preventDefault();
        var link = $(this);
        var association = $(this).data("association");
        var content = $(this).data("content");
        add_fields(link, association, content);
  });
});

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).parent().before(content.replace(regexp, new_id));
}


  // function remove_fields(link) {
  //   $(link).preventDefault();
  //   $(link).prev("input[type=hidden]").value = "1";
  //   console.log($(link).parent().is(":visible"))
  //   $(link).closest('.fields').hide();
  //   console.log($(link).parent().is(":visible"))
  //   console.log('works!');
  // }


// document.addEventListener("DOMContentLoaded", function(event) {
//   var removeBtns = document.querySelectorAll('.js-remove-fields');
//   removeBtns.forEach(function(el) {
//     el.addEventListener('click', function(e) {
//       e.preventDefault();
//       console.log(el);
//       el.parentNode.classList.add('hidden');
//     })
//   })
// })