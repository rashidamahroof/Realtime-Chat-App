const form = document.querySelector(".typing-area"),
inputField = form.querySelector(".input-field"),
sendBtn = form.querySelector("button"),
chatBox = document.querySelector(".chat-box");

form.onsubmit = (e)=>{
    e.preventDefault(); //preventing form from submitting
}
sendBtn.onclick = ()=>{
    //lets start ajax
    let xhr = new XMLHttpRequest(); //creating xml object
    xhr.open("POST","php/insert-chat.php",true);
    xhr.onload = ()=>{
        if(xhr.readyState === XMLHttpRequest.DONE){
            if(xhr.status === 200){
                inputField.value = "";   //once message inserted in the database then leave blank 
                scrollToBottom();
            }     
        }
    }
    //we have to send form data through ajax to php
    let formData = new FormData(form);  //creating new form data object
    xhr.send(formData);     //sending the form data to php
}

//lets stop the scrolling function when user try to scroll up
chatBox.onmouseenter = ()=>{
    chatBox.classList.add("active");
}
chatBox.onmouseleave = ()=>{
    chatBox.classList.remove("active");
}

setInterval(()=>{
    //lets start ajax
    let xhr = new XMLHttpRequest(); //creating xml object
    xhr.open("POST","php/get-chat.php",true);
    xhr.onload = ()=>{
        if(xhr.readyState === XMLHttpRequest.DONE){
            if(xhr.status === 200){
                 let data = xhr.response;
                 chatBox.innerHTML = data;
                if(!chatBox.classList.contains("active")){      //if active class not contains in chat box the scroll to bottom
                    scrollToBottom();
                }    
            }
        }
    }
    //we have to send form data through ajax to php
    let formData = new FormData(form);  //creating new form data object
    xhr.send(formData);     //sending the form data to php
 }, 500);    //this function will run frequently after 500ms

 function scrollToBottom(){
    chatBox.scrollTop = chatBox.scrollHeight;
 }