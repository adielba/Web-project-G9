from flask import Blueprint, render_template
from utilities.db.pages import PagesContent

# about blueprint definition
about = Blueprint('about', __name__, static_folder='static', static_url_path='/about', template_folder='templates')


# Routes
@about.route('/about')
def index():
    aboutContent = PagesContent.fetchAbout()

    return render_template('about.html',about = aboutContent)
