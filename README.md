# PURPOSE :

This Server script intend to create items from outfit native vorp_character script in player inventory that can be used to change player comps

# INSTALLATION : 

Add "ensure Outfits" in your server.cfg

Import Outfit.sql in your database

Add the following lines into \vorp_character\server\server.lua :

            - TriggerEvent("Outfit:UpdatePlayercomps", source, json.encode(arguments.comps), arguments.Result) => near l.238 under the MySQL.insert one

            - TriggerEvent("Outfit:UpdatePlayercomps", source, arguments.Outfit.comps, arguments.Outfit.title) => near l.313 under the Character.updateCompTints one

# IN GAME : 

When you use the native vorp_character script and you make a new outfit / you change your comps, you'll get an item named "Outfit" with your outfit name in description that cas be used to change comps in inventory

https://youtu.be/a3QxnQ1UmgA

Feel free to use this script as you want 'cause it’s opensource :wink:
