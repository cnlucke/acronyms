document.addEventListener("DOMContentLoaded", function() {

  document.getElementById("opinions").addEventListener("submit", function(event){

    commentFormOnSubmit(event);
  })

  document.getElementById("opinions").addEventListener("click", function(event) {
    if (event.target && event.target.className == "delete-button") {
      deleteButtonClick(event);
    }
  });
})


function createCommmentLiFromText(commentText, commentForm) {
    let liElement = document.createElement("li");
    liElement.innerText = commentText
    liElement.appendChild(commentForm);
    let ulElement = document.createElement("ul");
    ulElement.className = "comments";
    liElement.appendChild(ulElement);


    let deleteButton = document.createElement("button");
    deleteButton.innerText = "x"
    deleteButton.className = "delete-button";
    liElement.appendChild(deleteButton)

    //deleteButton.addEventListener("click", deleteButtonClick)

    return liElement;
}

function deleteButtonClick(event){
  let liElement = event.target.parentNode;
  liElement.parentNode.removeChild(liElement)
}

function commentFormOnSubmit(event){

  let commentForm = event.target;

  event.preventDefault();

  let commentText = commentForm.querySelector(".comment-text").value;
  commentForm.reset();

  let commentFormClone = commentForm.cloneNode(true);

  let liElement = createCommmentLiFromText(commentText, commentFormClone);


  
  let ulElement = commentForm.parentNode.querySelector(".comments");
  ulElement.appendChild(liElement);

}
