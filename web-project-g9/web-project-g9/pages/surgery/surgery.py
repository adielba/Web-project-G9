from flask import Blueprint, render_template, redirect, url_for,session,request
from utilities.db.surgery import Surgery
from utilities.db.pages import PagesContent
# questions page blueprint definition
surgery = Blueprint('surgery', __name__, static_folder='static', static_url_path='/surgery', template_folder='templates')


# Routes
@surgery.route('/surgery')
def index():
    surgeryTypesContent = PagesContent.fetchSurgeryTypes()
    return render_template('surgery.html',surgeryTypes = surgeryTypesContent)

@surgery.route('/surgery', methods=["POST"])
def insertSurgery():
    email = session.get("email")
    typeOfSurgery = request.form.get('typeOfSurgery')
    date = request.form.get('date')
    animal_name = request.form.get('animal_name')
    type_of_animal = request.form.get('type_of_animal')
    result = Surgery.check_if_surgery_date(date)
    if result and len(result) >= 1:
        message = "יש כבר ניתוח בתאריך זה, אנא בחר תאריך אחר."
        return render_template('surgery.html',message=message,message_type='error')
    else:
        Surgery.insert_surgery(email,typeOfSurgery,date,type_of_animal,animal_name)
        return redirect(url_for('surgery.sent', sent = True))


@surgery.route('/surgery/<sent>')
def sent(sent=False):
    if (sent):
        pageMessage = 'ניתוח נקבע בהצלחה!'
    else:
        pageMessage = ''
    print('sent ' + str(sent))
    return render_template('surgery.html', message=pageMessage,message_type='good')
