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
  

  const favFoodFormEl = document.getElementById("thing");
  favFoodFormEl.addEventListener("submit", event => {
    event.preventDefault();
    
    let FoodInputEl = document.getElementById("thing2");
    const favFood = FoodInputEl.value;
    FoodInputEl.value = "";
    
    const ul = document.getElementById("restaurants");
    const li = document.createElement("li");
    li.textContent = favFood;
    
    ul.appendChild(li);
  });




  // adding new photos

  // --- your code here!
  
  
const puppy = () => {
  togglePuppy = document.getElementById("puppyForm")
  const pb = togglePuppy.className;
  if (pb === "photo-form-container hidden") {
    togglePuppy.className = "photo-form-container";
  } else {
    togglePuppy.className = "photo-form-container hidden";
  }
};
  
  
const puppyEl = document.getElementById("show-form-button");
puppyEl.addEventListener("click", puppy);




//   const favFoodFormEl = document.getElementById("thing");
//   favFoodFormEl.addEventListener("submit", event => {
//     event.preventDefault();
    
//     let FoodInputEl = document.getElementById("thing2");
//     const favFood = FoodInputEl.value;
//     FoodInputEl.value = "";
    
//     const ul = document.getElementById("restaurants");
//     const li = document.createElement("li");
//     li.textContent = favFood;
    
//     ul.appendChild(li);
//   });
// });




  const showPhotoForm = (e) => {
    const photoFormDiv = document.querySelector(".photo-form-container");
    if (photoFormDiv.className === "photo-form-container") {
      photoFormDiv.className = "photo-form-container hidden";
    } else {
      photoFormDiv.className = "photo-form-container";
    }
  };

  const photoFormShowButton = document.querySelector(".photo-show-button");
  photoFormShowButton.addEventListener("click", showPhotoForm);


  const handlePhotoSubmit = (e) => {
    e.preventDefault();

    const photoUrlInput = document.querySelector(".photo-url-input");
    const photoUrl = photoUrlInput.value;
    photoUrlInput.value = "";

    const newImg = document.createElement("img");
    newImg.src = photoUrl;

    const newPhotoLi = document.createElement("li");
    newPhotoLi.appendChild(newImg);

    const dogPhotosList = document.querySelector(".dog-photos");
    dogPhotosList.appendChild(newPhotoLi);
  };

  const photoSubmitButton = document.querySelector(".photo-url-submit");
  photoSubmitButton.addEventListener("click", handlePhotoSubmit);
});