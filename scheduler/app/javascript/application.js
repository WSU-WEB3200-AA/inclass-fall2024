// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"

import "trix"
import "@rails/actiontext"

import ReactDOM from 'react-dom/client'

// Your JavaScript Starts Here

for(let btn of document.querySelectorAll(".btn-secondary")){
  btn.classList.add("btn-warning")
}


const root = ReactDOM.createRoot(document.getElementById("root"))
if(root){
  root.render(
    <h1>Helo, World; welcome to REACT</h1>

  )
}