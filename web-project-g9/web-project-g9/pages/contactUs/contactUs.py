from flask import Blueprint, render_template, request, redirect, url_for
from utilities.db.contact_us import ContactUs

contactUs = Blueprint('contactUs', __name__, static_folder='static', static_url_path='/contactUs',
                      template_folder='templates')


# Routes
@contactUs.route('/contactUs')
def index():
    # message = request.get('message')
    return render_template('contactUs.html')


@contactUs.route('/contactUs/<sent>')
def sent(sent=False):
    if (sent):
        pageMessage = 'קיבלנו את הפרטים שלך , נחזור אליך בהקדם!'
    else:
        pageMessage = ''
    print('sent ' + str(sent))
    return render_template('contactUs.html', message=pageMessage)


@contactUs.route('/contactUs', methods=["POST"])
def addContact():
    email = request.form.get('email')
    fname = request.form.get('firstname')
    lname = request.form.get("lastname")
    phone = request.form.get("phone")
    ContactUs.insert_contact_request(email, fname, lname, phone)
    return redirect(url_for('contactUs.sent', sent = True))
