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

Before clicking : 

    ![image](https://github.com/Dark-Edge/Vorp_Outfit/assets/6528375/65de3b8a-9f0a-4b24-b391-7687527e5cbe) ![image](https://github.com/Dark-Edge/Vorp_Outfit/assets/6528375/f65e1b92-ea22-4fe7-9e9c-46d8fbd6af3f)

After cliking : 

    ![image](https://github.com/Dark-Edge/Vorp_Outfit/assets/6528375/7034ef57-8a29-4335-a934-5857d8ea6c9c)

Feel free to use this script as you want 'cause it’s opensource :wink:
