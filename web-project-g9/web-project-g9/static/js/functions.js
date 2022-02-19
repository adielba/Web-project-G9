function change_images(){
    const bigImage = document.getElementById("bigImage");
    const leftImage = document.getElementById("leftImage");
    const centerImage = document.getElementById("centerImage");
    const rightImage = document.getElementById("rightImage");
    let num = 0;
    setInterval(()=>{
        num = (num + 1) % 10
        bigImage.src = "../../../static/media/images/"+num+".jpeg"
        leftImage.src = "../../../static/media/images/"+(num+1)+".jpeg"
        centerImage.src = "../../../static/media/images/"+(num+2)+".jpeg"
        rightImage.src = "../../../static/media/images/"+(num+3)+".jpeg"
        if (num == 8){
            num=0
        }
    },3000)
}

function validateLogInSingUpForm() {
    const uemail = document.getElementById("email");
    const mailformat = /^\w+([\.-]?\w+)@\w+([\.-]?\w+)(\.\w{2,3})+$/;

    if (!mailformat.test(uemail.value)) {
        alert("Please enter a valid email address!");
        uemail.focus();
        return false;
    }

    const upassword = document.getElementById("password");

    if (upassword.value.length < 6 || upassword.value.length > 12) {
        alert("Password must include btween 6 to 12 characters.");
        upassword.focus();
        return false;
    }
    return true;
}


function validateContactForm() {
    const uemail = document.getElementById("email");
    const mailformat = /^\w+([\.-]?\w+)@\w+([\.-]?\w+)(\.\w{2,3})+$/;

    if (!mailformat.test(uemail.value)) {
        alert("Please enter a valid email address!");
        uemail.focus();
        return false;
    }
    const uphone = document.getElementById("phone");
    const numbers = /^[0-9]{10}$/;

    if(!numbers.test(uphone.value)) {
        alert("Phone number must include 10 digits!");
        uphone.focus();
        return false
    }
    return true;
}


function toggle(event) {
    const toggleEl = event.currentTarget;
    console.log(toggleEl)
    const descriptionEl = toggleEl.parentNode.getElementsByClassName("description")[0];

    if (descriptionEl.classList.contains("collapsed")) {
    console.log("collapsed")
        descriptionEl.classList.remove("collapsed");
        toggleEl.innerText = "הסתר";
    } else {
    console.log("not collapsed")
        descriptionEl.classList.add("collapsed");
        toggleEl.innerText = "קרא עוד";
    }
}

function toggle2(item){
		item.classList.toggle("activate");
			let panel=item.nextElementSibling;
			if (panel.style.maxHeight) {
                panel.style.maxHeight = null;
            } else {
                panel.style.maxHeight = panel.scrollHeight + "px";
            }
			return false;
}

function setNavActive() {
    let linkObj = document.getElementsByTagName("ul")[0].getElementsByClassName('navA');
      for(let i=0;i<linkObj.length;i++) {
        if(document.location.href.indexOf(linkObj[i].href)>=0) {
            linkObj[i].classList.add("active");
        }
        else
            linkObj[i].classList.remove("active");
        }
      }

function changePassword() {
    const current_password = document.getElementById('current_password').value;
    const new_password = document.getElementById('new_password').value;
    if (current_password === new_password) {
        alert("אנא בחר סיסמא שונה מהסיסמתך הנוכחית.");
    }
    let xhr = new XMLHttpRequest();
    xhr.open("POST", "/change_password", true);
    xhr.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            alert("סיסמתך שונתה בהצלחה!");
            window.location.href = '/homepage';
        } else if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 400) {
            alert(xhr.response);
        }
    }
    xhr.send(JSON.stringify({'current_password': current_password, 'new_password': new_password}));
}
