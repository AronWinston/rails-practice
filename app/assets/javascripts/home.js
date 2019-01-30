'use strict'

alert("this is my first js in rails");

let image = document.getElementById("image");
image.style.border="2px dotted black";
image.style.height="150px";
image.style.width="150px";

let button = document.querySelector(".button").addEventListener("click", changeColor);


function changeColor() {
    var color = document.querySelector("body");
    // document.querySelector(".head").style.backgroundColor="pink";
    if(color.style.backgroundColor === "yellow"){
        color.style.backgroundColor = "red";
    }else if(color.style.backgroundColor==="red"){
        color.style.backgroundColor = "white";
    }else if(color.style.backgroundColor==="white"){
        color.style.backgroundColor = "green"; 
    }else if(color.style.backgroundColor==="green"){
            color.style.backgroundColor = "blue";
    }else if(color.style.backgroundColor==="blue"){
        color.style.backgroundColor = "grey";
    }else if(color.style.backgroundColor==="grey"){
        color.style.backgroundColor = "orange";
    }else{
        color.style.backgroundColor = "yellow";
    }
  }

//   function myFunction() {
//     var x = document.getElementById("myDIV");
//     if (x.style.display === "none") {
//       x.style.display = "block";
//     } else {
//       x.style.display = "none";
//     }
//   }
