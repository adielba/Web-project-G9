from flask import Blueprint

# footer blueprint definition
header = Blueprint('header', __name__, static_folder='static', static_url_path='/header', template_folder='templates')
