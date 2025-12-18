# TravelBookingWeb
# 🚆 Travel Booking Platform 

A web-based *Travel Booking Platform* developed using *Java, JSP, Servlets, JDBC, and MySQL* following the 
*MVC architecture*.This project demonstrates server-side programming using *Servlets*.

##  Project Overview

The Travel Booking Platform allows users to:
- Login into the system
- View available travel listings
- Book travel by providing source, destination, date, and price
- View their booked travels
- Logout securely

The system uses *JSP for UI, **Servlets for request handling, **DAO for database operations, and **MySQL* as the 
backend database.

## 🛠 Technologies Used

- *Java (JDK 8+)*
- *JSP & Servlets (Jakarta EE)*
- *Apache Tomcat 10*
- *MySQL Database*
- *JDBC*
- *HTML, CSS*
- *Maven*
- *IntelliJ IDEA 

## 🧱 Project Architecture (MVC)

TravelBookingWeb
│
├── .idea/
├── .mvn/
├── .smarttomcat/
│
├── src
│   └── main
│       ├── java
│       │   ├── dao
│       │   │   ├── BookingDAO.java
│       │   │   └── UserDAO.java
│       │   │
│       │   ├── model
│       │   │   └── User.java
│       │   │
│       │   └── servlet
│       │       ├── LoginServlet.java
│       │       ├── LogoutServlet.java
│       │       ├── BookTravelServlet.java
│       │       └── ViewBookingsServlet.java
│       │
│       ├── resources
│       │
│       └── webapp
│           ├── WEB-INF
│           │   └── web.xml
│           │
│           ├── index.jsp
│           ├── login.jsp
│           ├── dashboard.jsp
│           ├── listings.jsp
│           ├── book.jsp
│           └── viewBookings.jsp
│
├── target/
│
├── pom.xml
├── README.md
└──.gitignore

## 🗄 Database Design

### Database Name
travel_bookings
## Users Table
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(50)
);
## bookings Table
CREATE TABLE bookings (
booking_id INT AUTO_INCREMENT PRIMARY KEY,
source VARCHAR(50),
destination VARCHAR(50),
travel_date DATE,
price INT,
status VARCHAR(50)
);

## 🔁 Application Flow

1.User opens application

2.Login page is displayed

3.User logs in

4.Dashboard opens

5.User can:
View travel listings
Book travel
View booked travels

6.Booking details are stored in MySQL

7.User can view bookings fetched from database

## 🎨 User Interface Features

Centered card-based layout

Gradient background

Responsive dashboard

Clean and simple navigation






