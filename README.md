# mqtail
MQTT-based remote log viewer


This is a web app that connects via websockets to an MQTT server (one that supports a websocket interface) and can display and filter logs sent to it.

Any MQTT client can send data to be viewed. A convenient "tomqtt" python script is included here that accepts stdin input:

Example:
    tail -f /var/log/app.log | tomqtt servername topic
    
Received data will be displayed in real time with the MQTT "topic" it was sent on listed next to it.

This project uses the [mqtt.js](https://github.com/mqttjs/MQTT.js) library for the websocket MQTT communication.

The "tomqtt" python script requires the easymqtt python module.


