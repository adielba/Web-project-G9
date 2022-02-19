from flask import Blueprint, render_template
from utilities.db.pages import PagesContent

# costumers_talk page blueprint definition
customers_talk = Blueprint('Costumers_talk', __name__, static_folder='static', static_url_path='/Customers_talk', template_folder='templates')


# Routes
@customers_talk.route('/Customers_talk')
def index():
    customersContent = PagesContent.fetchCustomerTalks()
    return render_template('Customers_talk.html', customerTalks=customersContent)
