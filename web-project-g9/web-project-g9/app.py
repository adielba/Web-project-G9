from flask import Flask
from flask_session import Session
from components.header.header import header
from components.navigation.navigation_bar import navigation_bar
from components.footer.footer import footer
from pages.homepage.homepage import homepage
from pages.about.about import about
from pages.askDoctor.askDoctor import askDoctor
from pages.contactUs.contactUs import contactUs
from pages.Costumers_talk.Costumers_talk import customers_talk
from pages.logIn.logIn import logIn
from pages.questions.questions import questions
from pages.services.services import services
from pages.signUp.signUp import signUp
from pages.surgery.surgery import surgery
from pages.user_setting.user_setting import user_setting


###### App setup

app = Flask(__name__)
app.config.from_pyfile('settings.py')
app.config["SESSION_PERMANENT"] = False
app.config["SESSION_TYPE"] = "filesystem"
Session(app)

###### Pages
## Homepage
app.register_blueprint(homepage)

# About
app.register_blueprint(about)

# AskDoctor
app.register_blueprint(askDoctor)

# ContactUs
app.register_blueprint(contactUs)

# costumers talk
app.register_blueprint(customers_talk)

# logIn
app.register_blueprint(logIn)

# Questions
app.register_blueprint(questions)

# Services
app.register_blueprint(services)

# signUp
app.register_blueprint(signUp)

# surgery
app.register_blueprint(surgery)

# user setting
app.register_blueprint(user_setting)

# ## Catalog
# from pages.catalog.catalog import catalog
# app.register_blueprint(catalog)
#
## Page error handlers
from pages.page_error_handlers.page_error_handlers import page_error_handlers
app.register_blueprint(page_error_handlers)

#
# ###### Components
# header
app.register_blueprint(header)

# navigation bar
app.register_blueprint(navigation_bar)

# footer
app.register_blueprint(footer)
