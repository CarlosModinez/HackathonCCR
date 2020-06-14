import os
os.environ["GOOGLE_APPLICATION_CREDENTIALS"] = "caminholivreccr-fbrjki-3b9877d0a1b2.json"

import dialogflow_v2 as dialogflow
dialogflow_session_client = dialogflow.SessionsClient()
PROJECT_ID = "caminholivreccr-fbrjki"

def detect_intent_from_text(text, session_id, language_code='pt-BR'):
    session = dialogflow_session_client.session_path(PROJECT_ID, session_id)
    text_input = dialogflow.types.TextInput(text=text, language_code=language_code)
    query_input = dialogflow.types.QueryInput(text=text_input)
    response = dialogflow_session_client.detect_intent(session=session, query_input=query_input)
    return response.query_result


def fetch_reply(query, session_id):
    response = detect_intent_from_text(query,session_id)
    return response.fulfillment_text
