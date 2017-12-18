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
});

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