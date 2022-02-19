from flask import Blueprint, flash, render_template, redirect, url_for, request, session
from utilities.db.users import Users


# user_setting page blueprint definition
user_setting = Blueprint('user_setting', __name__, static_folder='static',
                         static_url_path='/user_setting', template_folder='templates')


@user_setting.route('/user_setting')
def index():
    if not session.get('is_logged_in'):
        return render_template('homepage.html')
    return render_template('user_setting.html')


# Routes
@user_setting.route('/user_setting', methods=["POST"])
def userSetting():
    if not session.get('is_logged_in'):
        return "User need to login before changing password", 400
    if request.method == "POST":
        current_password = request.form['current_password']
        new_password = request.form['new_password']
        email = session["email"]
        user = Users.get_user(email)
        if not user:
            return f"User not found", 400
        elif user[0].password == current_password:
            Users.update_password(user[0].email, new_password)
            return redirect('homepage')
        else:
            return "Incorrect old password. Try again.", 400
    return render_template('user_setting.html')

