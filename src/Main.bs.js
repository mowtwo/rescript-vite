// Generated by ReScript, PLEASE EDIT WITH CARE

import MainModuleScss from "./Main.module.scss";

var style = MainModuleScss;

var app = document.querySelector("#app");

if (app == null) {
  console.log("not find #app");
} else {
  var countor = {
    contents: 1
  };
  app.innerHTML = "Hello World";
  var h1 = document.createElement("h1");
  h1.innerHTML = "append Head 1";
  var button = document.createElement("button");
  var div = document.createElement("div");
  div.className = style.counterButton;
  div.innerHTML = "counter: " + String(countor.contents);
  button.innerHTML = "click";
  button.addEventListener("click", (function (param) {
          countor.contents = countor.contents + 1 | 0;
          div.innerHTML = "counter: " + String(countor.contents);
          
        }));
  app.appendChild(h1);
  app.appendChild(button);
  app.appendChild(div);
}

export {
  style ,
  
}
/* style Not a pure module */
