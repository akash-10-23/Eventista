# Eventista
It is an Event Management Website made to ease the process of booking tickets of some events.

System Requirements:
1. VSCode or Atom (as an Editor) with extension of HTML5, CSS3,
JavaScript.
2. Hyper Terminal (for server hosting)
3. XAMPP Control Panel (for MySQL and Apache ports)
4. MySQL for database
5. Node JS for backend operations.

Steps to run the website on a localhost server:
1. Open Hyper terminal to the location where the project folder is located.

2. Open XAMPP Control Panel and start ports for Apache and MySQL.

3. In Hyper terminal type the following command to start the localhost server:
        node app.js
        
4. Open any web browser and type :
        localhost:3000
This will basically the home page of our website.

5. In the new tab of the web browser type the following to open phpMyAdmin :
        localhost/phpMyAdmin
This will open the MySQL database panel where you can create tables
and perform SQL operations. For this to work you must have Workbench GUI
installed in your system.
            OR
In VSCode with MySQL extensions installed, connect to any of the active
connection and run the following.

6. Now run the Eventista.sql file on phpMyAdmin to import all the data to
your localhost MySQL database OR you can directly import the abovementioned
file in phpMyAdmin.

7. For creating any NEW EVENT the poster of the event must be placed in img
folder inside public folder and the organiser have to enter the path of .png
or.jpg file in following manner:
      If image name: event1.png
      Path will be img/event1.png
      
8. The Search Bar is a part of frontend and it has no functionality.
