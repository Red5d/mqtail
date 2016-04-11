# mqtail
MQTT-based remote log viewer


This is a web app that connects via websockets to an MQTT server (one that supports a websocket interface) and can display and filter logs sent to it.

Any MQTT client can send data to be viewed. A convenient "tomqtt" python script is included here that accepts stdin input:

Example:

    tail -f /var/log/app.log | python ./tomqtt servername topic
    
Received data will be displayed in real time with the MQTT "topic" it was sent on listed next to it.


# Quickstart

If you have Docker installed, clone this repo, cd into it, and run:

    docker-compose up -d
    
...to start the mosquitto MQTT server on port 1883 with a websocket interface on port 9001, and a lighttpd server on port 8083 serving the files for the web app.

Open the web page and click "Connect" next to the server name/port at the top.

Then send some data to the server with an MQTT client with the tomqtt script (or another MQTT client of your choice):
Example:

    echo "testing this thing" | python ./tomqtt localhost testing
    
The example above will send the text "testing this thing" on the "testing" topic to the MQTT server (assuming localhost for the example) and it will be displayed in the web interface.


# Additional Notes
This project uses the [mqtt.js](https://github.com/mqttjs/MQTT.js) library for the websocket MQTT communication (after running it through browserify).

The "tomqtt" python script requires the [easymqtt](https://pypi.python.org/pypi/easymqtt) python module (available via pip).

This project is inspired by [rtail](https://github.com/kilianc/rtail).
