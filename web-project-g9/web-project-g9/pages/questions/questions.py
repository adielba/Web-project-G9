from flask import Blueprint, render_template, redirect, url_for
from utilities.db.pages import PagesContent

# questions page blueprint definition
questions = Blueprint('questions', __name__, static_folder='static', static_url_path='/questions', template_folder='templates')


# Routes
@questions.route('/questions')
def index():
    faqsContent = PagesContent.fetchFaq()
    return render_template('questions.html',faqs = faqsContent)
