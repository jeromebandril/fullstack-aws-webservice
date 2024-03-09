# fullstack webservice hosted in AWS
LAMP stack project hosted in AWS.
I've setup a webservice with a nginx reverse proxy running on Ubuntu and hosted using amazon E2C, with a proper firewall configuration (that give access only for the website or to the SQL database for the admin). (It maps the http request directly into https, and it should land the user directly in the login page if his session is expired).

**This is personal project made for learning purpose**. 
Things learned:
- aws E2C configuration
- containerization with Docker
- nginx

**credentials example to use on landing page:**
username: admin
password: admin

