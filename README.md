# upmpdcli-Renderer
upmpdcli Renderer Addon for Home Assistant
The easiest way is to create a folder named "upmpdcli_renderer" under the addons share of your Home Assistant server, like this: "\addons\upmpdcli_renderer", and then copy the files into it. 
After that, go to the Add-ons section and click on the "Add-ons Store" button in the lower right corner. 
Then, click on the three dots in the upper right corner and select "Check for Updates." 
Finally, refresh your browser by pressing Shift+F5. 
The Add-on will then appear, and you can install it easily.

Modify the MPD settings as needed to point to your own MPD.

in Dockerfile:

CMD ["upmpdcli", "-h", "192.168.1.73", "-p", "6600", "-f", "Home_Assistant_UPnP"]

in config.json:

  "options": {
    "mpd_ip": "192.168.1.73",
    "mpd_port": "6600",
    "renderer_name": "MASS_UPnP"    
