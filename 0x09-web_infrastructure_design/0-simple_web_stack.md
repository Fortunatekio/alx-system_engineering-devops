![0-simple_web_stack](https://github.com/Fortunatekio/alx-system_engineering-devops/assets/97586344/748cf75b-63a5-4f7d-b3de-9b4bc26b8364)

Description
This is a simple web infrastructure that hosts a website that is reachable via www.foobar.com. There are no firewalls or SSL certificates for protecting the server's network. Each component (database, application server) has to share the resources (CPU, RAM, and SSD) provided by the server.

* What is a server?
  A server is a computer or software program that provides services, resources, or data to other computers or devices, known as clients.
  In this context, it's a physical or virtual machine hosting the web infrastructure components.
* What is the role of the domain name?
  The domain name (foobar.com) serves as a human-readable address that maps to an IP address.
  It allows users to access websites using easy-to-remember names instead of numeric IP addresses.
* What type of DNS record www is in www.foobar.com
  The DNS record for "www" in www.foobar.com is typically a "CNAME" (Canonical Name) record that points to the domain's primary A (Address) record,
  which resolves to the server's IP address (8.8.8.8).
* What is the role of the web server?
  The web server (Nginx) acts as a reverse proxy and handles incoming HTTP requests.It forwards these requests to the application server and returns responses to users.
* What is the role of application server?
  The application server processes dynamic content generation. It executes your website's code, communicates with the database to fetch or store data,
  and generates web pages or application responses.
* What is the role of the database?
  The database (MySQL) stores and manages the data needed for your website. It handles queries and data storage,
  allowing the application server to retrieve and update data for the website's functionality.
* What is the server using to communicate with the computer of the user requesting the website?
  The server communicates with the user's computer over the Internet using the HTTP or HTTPS protocol.
  The web server (Nginx) handles incoming requests and sends the web page or response to the user's web browser for rendering.


ISSUES WITH THIS INFRASTRUCTURE
1. SPOF(Single Point Of Failure)
   This infrastructure has a single server, making it vulnerable to a single point of failure.
   If the server experiences hardware or software issues, the entire website can become unavailable.
2. Downtime when maintenance needed (like deploying new code web server needs to be restarted)
   Maintenance tasks, such as deploying new code, often require the web server to be restarted.This can result in downtime or service interruptions, affecting user access.
3. Cannot scale if too much incoming traffic
   It would be hard to scale this infrastructure becauses one server contains the required components. The server can quickly run out of resources or slow down when it 
   starts receiving a lot of requests.
