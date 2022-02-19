from flask import Blueprint, render_template, redirect, url_for, request, session
from utilities.db.users import Users
from pages import logIn

# questions page blueprint definition
signUp = Blueprint('signUp', __name__, static_folder='static', static_url_path='/signUp', template_folder='templates')


# Routes
@signUp.route('/signUp')
def index():
    if session.get('is_logged_in'):
        return render_template('settings.html')###############
    return render_template('signUp.html')


@signUp.route('/signUp', methods=["POST"])
def sign_up():
    email = request.form.get('email')
    first_name = request.form.get('firstname')
    last_name = request.form.get('lastname')
    phone_number = request.form.get('phone')
    password = request.form.get('userpassword')
    result = Users.get_user(email)
    if result and len(result) >= 1:
        message = "כתובת המייל כבר קיימת במערכת, אנא נסו להתחבר לאתר :)"
        return render_template('signUp.html',message=message),400
    else:
        if Users.insert_user(email, first_name, last_name, phone_number, password) > 0:
            return redirect('/logIn')
        else:
            return "Registration failed. Please try again.", 400

