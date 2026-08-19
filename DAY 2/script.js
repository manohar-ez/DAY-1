const toggleButton = document.getElementById("HIT");
const themeTitle = document.getElementById("themeTitle");

toggleButton.addEventListener("click",()=>{
    document.body.classList.toggle("dark-mode");

    if(document.body.classList.contains("dark-mode")){
        themeTitle.innerText = "Dark Mode";
        toggleButton.innerText = "Light Mode";

    } else {
        themeTitle.innerText  =  "Light Mode";
         toggleButton.innerText = "Dark Mode";
    }
});