# MQTT Ball Demo

Use a device with device orientation support (e.g. a smart phone with modern browser) to roll a ball around the screen. The coordinates are then relayed, via MQTT (websockets) to an MQTT broker. A second browser, on another device (e.g. desktop browser) can be used to view the position of the ball, as it is moved by the first device.

