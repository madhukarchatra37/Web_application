TRAVEL ITINERARY MANAGEMENT By Team1
=====================================

This file describes the project sub-modules and its libraries.
==============================================================

Description of Sub-Modules
===========================
JSP Pages
=========

1. Home.jsp
	This jsp is the home page of our application. It provides functionality to search for flights,hotels and cabs depending upon the source,destination,departure 		and arrival time. It also consists of login functionality for registered users.
2. Search.jsp
	This jsp page is integrated with home.jsp to provide search functionality to the viewers.
3. Login.jsp
	This jsp page ask the authorised users to enter valid username and password for login.
4. Display.jsp
	This jsp page displays the content onto the screen using search.java class.
5. Register.jsp
	This jsp page displays the input fields which are required for booking to become a registered user.
6. Welcome.jsp
	This jsp page displays the welcome page for the authenticated user. This page provides different options of booking a flight, hotel and cab.
7. Flight.jsp
	This jsp page displays the information related to flights onto the screen like flight name, flight id, source , destination, arrival time , departure time and 		cost per passenger.
8. Hotel.jsp
	This jsp page displays the information related to hotels onto the screen like hotel name, address, number of rooms , number of passengers, check in date and 		check out date.
9. Cab.jsp
	This jsp page displays the information related to cabs onto the screen like cab name, cab type, pick up location, pick up time and pick up date.
10. Flight1.jsp
	In this jsp page, the registered user select a flight as per his choice of travelling.
11. Hotel1.jsp
	In this jsp page, the registered user select a hotel as per his choice of travelling.
12. Cab1.jsp
	In this jsp page, the registered user select a cab as per his choice of travelling.
13. Cart.jsp
	This jsp page is an integrated form of Flight1.jsp, Hotel1.jsp and Cab1.jsp of the registered user. It displays all the booking information present in the 		cart.
14. Flightdelete.jsp
	This jsp page provides the functionality to remove any flight information from registered user's cart if he does not need it.
15. Hoteldelete.jsp
	This jsp page provides the functionality to remove any hotel information from registered user's cart if he wants to.
16. Cabdelete.jsp
	This jsp page provides the functionality to remove any cab information from registered user's cart if he wants to.
17. Payment.jsp
	This jsp page displays travel itinerary of the user as well as ask him to enter card details for payment transaction.
18. Feedback.jsp
	This jsp page ask registered user to give their feedback about their experience.It also displays feedbacks of previous users.

	
This project followed MVC architecture and the details of it are described below.

Model
=======
Userbean.java
It acts as conduits between the user interface and the back end of the application.It has two read/write properties user.name and user.password. The properties are defined by implementing appropriately named getter and setter methods.

View
=====
DBConnection.java
This java class is used to create database connection. It is also used to add user, flight, hotel and cab details in the database.

Controller - JAVA Classes
==========================
1. LoginControl.java
	In this java class, login credentials passed by login.jsp are validated with the database and if authenticated, the search results are displayed .
2. Search.java
	In this java class, the search results are displayed as per the information entered by the user onto the screen from the database.
3. Register.java
	In this java class, the information entered by the user through register.jsp page is inserted into the database for validation purposes. This makes the user 		authenticated.
4. Flight.java
	In this java class, the information related to flights are taken from the database and passed to Flight.jsp page as per the user's search.
5. Hotel.java
    	In this java class, the information related to hotels are taken from the database and passed to Hotel.jsp page as per the user's search.
6. Cab.java
	In this java class, the information related to cabs are taken from the database and passed to Cab.jsp page as per the user's search.
7. Test.java
	This java class adds flight details to the registered user's cart when he make selection in flight1.jsp.
8. Test1.java
	This java class adds hotel details to the registered user's cart when he make selection in hotel1.jsp.
9. Test2.java
	This java class adds cab details to the registered user's cart when he make selection in cab1.jsp.
10. Flightdel.java	
	This java class removes flight details from the registered user's cart when he deletes it from flightdelete.jsp.
11. Hoteldel.java
	This java class removes hotel details from the registered user's cart when he deletes it from hoteldelete.jsp.
12. Cabdel.java
	This java class removes cab details from the registered user's cart when he deletes it from cabdelete.jsp.
13. Payment.java
	This java class validates registered user bank account details and proceed with the payment and booking confirmation.
14. Feedback.java
	This java class inserts the feedback given by registered user to the database.

Libraries used
=============================
1. Java-j2se - 1.8.0_25
2. mysql-connector-java-5.1.32-bin.jar

Software used
=============================
1. Apache Tomcat 7.0
2. Eclipse Luna 4.4
3. MySQL Workbench 6.2

1. APACHE TOMCAT 7.0
Apache Tomcat Servlet/JSP container: Apache Tomcat version 7.0 implements the Servlet 3.0 and JavaServer Pages 2.2 speciications from the Java community process and includes many additional features that make it a useful platform for developing and deploying web applications and web services.

•Installation as a service: Tomcat will be installed as a Windows service no matter what setting is selected. Using the checkbox on the component page sets the service as "auto" startup, so that Tomcat is automatically started when Windows starts. For optimal security, the service should be run as a separate user, with reduced permissions (see the Windows Services administration tool and its documentation).
•Java location: The installer will provide a default JRE to use to run the service. The installer uses the registry to determine the base path of a Java 6 or later JRE, including the JRE installed as part of the full JDK. When running on a 64-bit operating system, the installer will first look for a 64-bit JRE and only look for a 32-bit JRE if a 64-bit JRE is not found. It is not mandatory to use the default JRE detected by the installer. Any installed Java 6 or later JRE (32-bit or 64-bit) may be used.
•Tray icon: When Tomcat is run as a service, there will not be any tray icon present when Tomcat is running. Note that when choosing to run Tomcat at the end of installation, the tray icon will be used even if Tomcat was installed as a service.

2. Eclipse : Version 4.4 Luna edition

To use Eclipse for Java programming, you need to first install Java Development Kit (JDK). Read "How to Install JDK (on Windows)".
Step 1: Download
        Download Eclipse from http://www.eclipse.org/downloads. For beginners, choose the minimal Eclipse Standard 32-bit or 64-bit (e.g., "eclipse-java-kepler-R-	win32.zip"). [You can click the "Compare & Combine Packages" link to see the differences among all packages.]
Step 2: Unzip
        To install Eclipse, simply unzip the downloaded file into a directory of your choice (e.g., "d:\myproject") There is no need to run any installer. Moreover,         you can simply delete the entire Eclipse directory when it is no longer needed (without running any un-installer). You are free to move or rename the                 directory. You can install (unzip) multiple copies of Eclipse in the same machine.
     
Creating a war file from eclipse

Right click on the project you want to select, and then click export.
Specify the target directory and click on finish.

3.MySQL Workbench 6.2 
1. Download MYSQL workbench appropriate for your platform from 
     http://dev.mysql.com/downloads/workbench/6.2.html .
2. Open installation file for MYSQL Workbench and then press “Next”
3.Choose the “Complete” setup type and then click “Next” and “Install”.
4.After the Installation process is complete , click “Finish”

Configuring  new database connection

1. Launch MySQL Workbench ( in your start menu, choose MysQL from your installed programs, and choose Workbench
2. In workspace, chose New Conection Option. Then a setup window will appear
3. If you installed MySQL Server under default settings, you should not change anything here. (Otherwise enter the name, hostname and port number for the    connection)Enter  the password for the “root” user , which you will set while installing MySQL server and click “Test Connection”. The below screen will appear
4. Click “OK” and in the workspace of MySQL Worskbench, select database connection
5. Double click on it and the SQL editor and the database connection will appear.

Steps to import a Web Archive(WAR) file and execute it
===========================================

1. Select File > Import .
2. In the Import dialog, select WAR file and then click Next.
3. Locate the WAR file that you want to import using the Browse button.
4. The wizard assumes you want to create a new Web project with the same name as the WAR file. If you accept this choice, the project will be created with the same        servlet version as specified by the WAR file and in the same location. If you want to override these settings, you can click New and specify your new settings in       the Dynamic Web Project wizard.
5. Click Finish to populate the Web project.



     
    
      

