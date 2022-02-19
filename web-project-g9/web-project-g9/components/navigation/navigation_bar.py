from flask import Blueprint

# navigation bar blueprint definition
navigation_bar = Blueprint('navigation_bar', __name__, static_folder='static', static_url_path='/navigation_bar',
                           template_folder='templates')
