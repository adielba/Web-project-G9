from flask import Blueprint, render_template ,session,request,url_for,redirect
from utilities.db.ask_doctor import AskDoctor

# about blueprint definition
askDoctor = Blueprint('askDoctor', __name__,
                  static_folder='static',
                  static_url_path='/askDoctor',
                  template_folder='templates')


# Routes
@askDoctor.route('/askDoctor')
def index():
    return render_template('askDoctor.html')

@askDoctor.route('/askDoctor', methods=["POST","GET"])
def addQuestion():
    email = session.get("email")
    fname = session.get("first_name")
    lname = session.get("last_name")
    phoneNumber = session.get("phone_number")
    pet_type = request.form.get('fsubject')
    message = request.form.get('question')
    AskDoctor.insert_doctor_question(email,fname,lname,phoneNumber,pet_type,message)

    return redirect(url_for('askDoctor.sent', sent = True))

@askDoctor.route('/askDoctor/<sent>')
def sent(sent=False):
    if (sent):
        pageMessage = 'שאלה נשלחה בהצלחה!'
    else:
        pageMessage = ''
    print('sent ' + str(sent))
    return render_template('askDoctor.html', message=pageMessage)


