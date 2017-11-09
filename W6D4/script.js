document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!


  const handleFavoriteSubmit = (e) => {
     e.preventDefault();

     let input = document.querySelector(".favorite-input");
     let favorite = input.value;
     input.value = "";

     let li = document.createElement("li");
     li.textContent = favorite;

     let favoritesList = document.getElementById("sf-places");
     favoritesList.appendChild(li);
   };

   const submitButton = document.querySelector(".favorite-submit");
   submitButton.addEventListener("click", handleFavoriteSubmit);


  // adding new photos

  // --- your code here!

  const showPhotoForm = (e) => {
      const formDiv = document.querySelector(".photo-form-container");
      if (formDiv.className === "photo-form-container") {
        formDiv.className = "photo-form-container hidden";
      } else {
        formDiv.className = "photo-form-container";
      }
    };

    const photoFormShowButton = document.querySelector(".photo-show-button");
    photoFormShowButton.addEventListener("click", showPhotoForm);

});
