from flask import Blueprint, render_template, redirect, url_for
from utilities.db.pages import PagesContent
# questions page blueprint definition
services = Blueprint('services', __name__, static_folder='static', static_url_path='/services', template_folder='templates')


# Routes
@services.route('/services')
def index():
    servicesContent = PagesContent.fetchServices()

    return render_template('services.html',services = servicesContent)
