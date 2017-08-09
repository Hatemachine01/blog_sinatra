$(document).ready(function() {
  console.log("hola")
  $(".button").on("click",function(event){
    event.preventDefault();
    console.log(this);
    var id = $(this).attr("name");
    console.log(id);
    $.post("/like", {post_id: id}, function(result){
      console.log(result);
      $("#vista_partial").html(result);
   
   });
  });
});
  


//   $(".dislikes_button").on("click",function(event){
//     event.preventDefault();
//     console.log(this);
//     var id = $(this).attr("name");
//     console.log(id);
//     $.post("/dislike", {post_id: id}, function(result){
//       console.log(result);
//       $("#vista_partial_dislikes").html(result);
 


//   });
// });
