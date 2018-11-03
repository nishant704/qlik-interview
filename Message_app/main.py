##https://medium.com/python-flask-django-tutorials-and-tips/how-to-build-a-crud-application-using-flask-python-framework-3a398b04c3c6

from flask import Flask, render_template, redirect, request
from flask_sqlalchemy import SQLAlchemy
import os
import time
import pdb

from flask import Flask
from flask_cors import CORS

app = Flask(__name__)
CORS(app)
basedir = os.path.abspath(os.path.dirname(__file__))
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///' + os.path.join(basedir, 'app.sqlite')
db = SQLAlchemy(app)

###############################################################################
# messages Class
###############################################################################

class Note(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    body = db.Column(db.Text)
    def __init__(self, body, id):
        self.body = body
        self.id = id



###############################################################################
# Load UI Pages
###############################################################################

@app.route("/")
def view_home():
    return render_template("home.html")

@app.route("/messages",methods=["GET"])
def view_messages():
    messages = Note.query.order_by(Note.id).all();
    print('messages all ...')
    return render_template("list_messages.html", messages = messages)

@app.route("/messages/create", methods=["GET"])
def view_create_note():
    return render_template("create_messages.html")

@app.route("/messages/check-palindrome/<id>", methods=["GET"])
def view_note(id):
    note = Note.query.filter_by(id=id).first()
    note.is_palindrome = (note.body == note.body[::-1])
    return render_template("view_messages.html", note=note)


###############################################################################
# API Endpoints for CURD operations
###############################################################################

# Create a new Note
@app.route("/messages/create", methods=["POST"])
def create_note():
    body = request.form["body"]
    id = int(time.time())

    note = Note(body=body, id=id)
    db.session.add(note)
    db.session.commit()
    return redirect("/messages")


# Delete a note by `id`
@app.route("/messages/<id>", methods=["DELETE"])
def delete_note(id):
    note = Note.query.filter_by(id=id).first()
    db.session.delete(note)
    db.session.commit()
    return redirect("/messages")

# Get a note by `id` and check if its a palindrome
#@app.route("/messages/<id>", methods=["GET"])
#def get_note(id):
#    note = Note.query.filter_by(id=id).first()
#    return render_template("view_note.html", note=note)

if __name__ == "__main__":
    app.run(host='0.0.0.0', debug=True)
