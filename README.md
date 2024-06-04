# PURPOSE :

This Server script intend to create items from outfit native vorp_character script in player inventory that can be used to change player comps

# INSTALLATION : 

Add "ensure Outfits" in your server.cfg

Import Outfit.sql in your database

Add the following lines into \vorp_character\server\server.lua :

            - TriggerEvent("Outfit:UpdatePlayercomps", source, json.encode(arguments.comps), arguments.Result) => near l.238 under the MySQL.insert one

            - TriggerEvent("Outfit:UpdatePlayercomps", source, arguments.Outfit.comps, arguments.Outfit.title) => near l.313 under the Character.updateCompTints one

Exemple : 

![image](https://github.com/Dark-Edge/Vorp_Outfit/assets/6528375/2342f242-fbd6-4bda-bbcf-75a871b8c4d0)

![image](https://github.com/Dark-Edge/Vorp_Outfit/assets/6528375/d62a1480-c073-44b8-afc8-b2b1c500829c)


# IN GAME : 

When you use the native vorp_character script and you make a new outfit / you change your comps, you'll get an item named "Outfit" with your outfit name in description that cas be used to change comps in inventory

[![Vorp compatible RedM Outfit script showcase](http://img.youtube.com/vi/a3QxnQ1UmgA/0.jpg)](http://www.youtube.com/watch?v=a3QxnQ1UmgA "Vorp compatible RedM Outfit script showcase") - Showcase

Discord : https://discord.gg/P34hPqfn

Feel free to use this script as you want 'cause it’s opensource :wink:
