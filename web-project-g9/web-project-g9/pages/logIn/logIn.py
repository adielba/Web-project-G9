from flask import Blueprint, flash, render_template, redirect, url_for, request, session
from utilities.db.users import Users


# questions page blueprint definition
logIn = Blueprint('logIn', __name__, static_folder='static', static_url_path='/logIn', template_folder='templates')


# Routes
@logIn.route('/logIn')
def index():
    if session.get('is_logged_in'):
        return render_template('homepage.html')
    return render_template('logIn.html')


@logIn.route('/logIn', methods=["POST", "GET"])
def log_in():
    email = request.form.get('email')
    password = request.form.get('password')
    result = Users.get_user(email)
    if not result:
        return f"The mail {email} not exists. Try register instead/", 400
    elif result[0].password == password:
        session["email"] = result[0].email
        session["first_name"] = result[0].first_name
        session["last_name"] = result[0].last_name
        session["phone_number"] = result[0].phone_number
        session["is_logged_in"] = True
        return redirect('logIn')
    else:
        return "Incorrect password. Try again.", 400

