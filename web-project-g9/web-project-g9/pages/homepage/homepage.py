from flask import Blueprint, render_template, session, redirect, url_for

# homepage page blueprint definition
homepage = Blueprint('homepage', __name__, static_folder='static', static_url_path='/homepage', template_folder='templates')


# Routes
@homepage.route('/homepage')
@homepage.route('/')
def index():
    return render_template('homepage.html')


@homepage.route('/homepage.lo')
def logOff():
    session.clear()
    return render_template('homepage.html')
