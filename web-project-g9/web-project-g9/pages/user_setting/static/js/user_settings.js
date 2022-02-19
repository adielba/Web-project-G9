
function deleteAccount() {
    const xhr = new XMLHttpRequest();
    xhr.open("post", "/delete_account", true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            alert("החשבון נמחק בהצלחה! אתה תמיד מוזמן להירשם מחדש :)");
            window.location.href = '/home';
        } else if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 400) {
            alert(xhr.response);
        }
    }
    xhr.send();
}