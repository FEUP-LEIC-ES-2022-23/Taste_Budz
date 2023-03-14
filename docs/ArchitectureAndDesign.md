# Architecture and Design

## Logical architecture

<p align="center" justify="center">
  <img src="../images/logical_view.png"/>
</p>

- `UI`: Observing the application;
- `App Logic`: Administration of user data;
- `DataBase`: Storage of user information;
- `Google account services`: Retrieving information to authenticate user;
- `Google maps services` : Retrieving information to assist the user.

## Physical architecture
   
   The physical architecture of the TasteBudz app includes three main components: the user's smartphone, the Google service machine, and TasteBudz's server. 
   
   The user's smartphone is the client that communicates with the Google service machine and TasteBudz's server using secure HTTPS requests. 
   
   The Google service machine provides location and mapping services through the Google Maps API, while TasteBudz's server stores and processes app data, including user profiles, restaurant information, ratings, and reviews. 
   
   Upon launching the app, necessary data is loaded from TasteBudz's server and stored locally on the smartphone to improve app performance. Interactions with the app, such as searching for a restaurant or leaving a review, send data to the server to update stored information and ensure all users have access to the most up-to-date data. 
   
   Overall, this physical architecture ensures that the app is responsive, reliable, and secure, providing users with the necessary information and functionality to discover great restaurants.

<p align="center" justify="center">
  <img src="../images/physical.png"/>
</p>

## Vertical prototype

