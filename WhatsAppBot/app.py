from flask import Flask, request, render_template
from twilio.twiml.messaging_response import MessagingResponse
from utils import fetch_reply
import requests
import os


app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello world"

@app.route("/sms", methods=['POST'])
def sms_reply():
    """Respond to incoming calls with a simple text message."""
    
    # Fetch the message
    msg = request.form.get('Body')
    print(msg)

    phone_no = request.form.get('From')
    reply = fetch_reply(msg, phone_no)

    # Create reply
    resp = MessagingResponse()
    resp.message(reply)

    return str(resp)

@app.route("/cupons", methods=['GET'])
def get_all_cupoms():
    """ Method to return all able cupoms """
    return """

    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <title>Cupons disponíveis</title>

        <style>
            #circulo1{
                height: 200px;
                width: 400px;
                margin: 0;
                position: relative;
                top: 50%;
                left: 40%;
                transform: translate(0, 0%);
                background-color: #E4E4E4;
            }
            #circulo2{
                height: 200px;
                width: 400px;
                margin: 0;
                position: relative;
                top: -50%;
                left: 40%;
                transform: translate(0, -70%);
                background-color: #E4E4E4;
            }
            .title {
                text-align: center;
                position: relative;
                top: 40px;
                right: 0px;
                font-size: 35px;
                color: #9E260E;
            }
            .code {
                text-align: center;
                position: relative;
                top: 30px;
                right: 0px;
                font-size: 18px;
                color: #929294;
            }
            .restaurant {
                text-align: center;
                position: relative;
                top: 25px;
                right: 0px;
                font-size: 18px;
                color: #929294;
            }
        </style>

    </head>
    </html>

    <body>
        <div id="circulo1">
            <h2 class="title"> Cupom de desconto </h2>
            <h2 class="code"> Codigo: FKDSSDH439FS</h3>
            <h2 class="restaurant" > Comida caseira da Rosa</h3>
        </div>
        <br />
        <div id="circulo1">
            <h2 class="title"> Cupom de desconto </h2>
            <h2 class="code"> Codigo: LKSD439FS</h3>
            <h2 class="restaurant" >Churrasco do Tião</h3>
        </div>
        <br />
        <div id="circulo1">
            <h2 class="title"> Cupom de desconto </h2>
            <h2 class="code"> Codigo: FLSDR54FS</h3>
            <h2 class="restaurant" >Sabor da montanha</h3>
        </div>
        <br />
        <div id="circulo1">
            <h2 class="title"> Cupom de desconto </h2>
            <h2 class="code"> Codigo: KFJDK525N</h3>
            <h2 class="restaurant" > Delicias da serra</h3>
        </div>
        <br />
        <div id="circulo1">
            <h2 class="title"> Cupom de desconto </h2>
            <h2 class="code"> Codigo: FELGS45W</h3>
            <h2 class="restaurant" >Churrasco gaúcho</h3>
        </div>

    </body>
    """
    

if __name__ == "__main__":
    app.run(debug=True)

