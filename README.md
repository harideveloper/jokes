
Application Technical Stack

Front End : HTML, CSS, EJS, JQuery 
Backend : Node JS, Express JS 
Database : MySQL
Containerisation : Docker

Application Design

Application is containerised with services (Application Service & Database Service) connecting with each.
Application service consists of both Node JS Backend , Basic UI with HTML, CSS & EJS
Database service is containerised with mysql images coupled with application database creation.
Docker & Docker compose is used to setup these individual containers running in a separate network

Pre-requisities

Gitbash, Docker to be installed in the local machine
App service runs at port 7000 & mysql service launches at 3360. If these ports are already use try to close them, if not these are configurable items that can be changed before bringing out the containers
Note : Local instance of MQSQL running in the laptop will sometimes cause port conflicts and not allow the docker containers to startup especially MAC OS. Please try to shutdown local mysql instances running

Steps to start the applicatiom

Download the git repository to local workspace or any local path in the laptop
Open git bash in this location
Enter the following command to start the application docker-compose up
launch the application at localhost:3900


Design Considerations

- Minimal data in the client/browser in exchange to calls to the database
- Considering only 400 rows in the database , we could also design retrievin all the data and iterate in the data in the client. I've not considered this approach pureply because of the amount data to be hold in the browser in case of large data
- Node JS backend designed to Stateless and hence all the reatime data is fetched from the database

