document.addEventListener("DOMContentLoaded", function(){
   document.getElementById("opinions").addEventListener("submit", function(event){
     event.preventDefault();
     if (event.target && event.target.className == "comment-form") {
       handleCommentFormSubmit.call(event.target);       
     }
   })
  
})

function handleCommentFormSubmit() {

  let commentForm = this;
  let commentText = commentForm.querySelector(".comment-text").value;
  commentLi = createNewCommentNode(commentText)
  let commentsUl = commentForm.parentNode.querySelector(".comments");
  commentsUl.appendChild(commentLi)
  
  commentForm.reset();
}

function createNewCommentNode(commentText) {
  let commentLi = document.createElement("li")
  commentLi.innerText = commentText;
  let attackOfTheClone = document.querySelector(".comment-form").cloneNode(true);
  attackOfTheClone.reset();
  commentLi.appendChild(attackOfTheClone);
  let commentUl = document.createElement("ul");
  commentUl.className = "comments"
  commentLi.appendChild(commentUl);
  return commentLi;
}






