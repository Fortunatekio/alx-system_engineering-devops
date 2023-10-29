![1-distributed_web_infrastructure](https://github.com/Fortunatekio/alx-system_engineering-devops/assets/97586344/d7f97442-3892-4755-971f-4b04488dd225)

Description
This is a distributed web infrastructure that atttempts to reduce the traffic to the primary server by distributing some of the load to a replica server with the aid of a server responsible for balancing the load between the two servers (primary and replica).

WEB INFRASTRUCTURE DESIGN
1. TWO SERVERS
   We introduce two servers to provide redundancy and eliminate single points of failure (SPOF).
If one server experiences issues, the other can continue to serve the website.
2. WEB SERVER(Nginx)
   Nginx serves as the web server, handling incoming HTTP requests and distributing them to the application servers. It also handles load balancing and SSL termination.
3. APPLICATION SERVER
   The application server processes dynamic content, executes the website's code, and communicates with the database to generate web pages or application responses.
   We have one for simplicity, but this can be scaled as needed.
4. LOAD-BALANCER(HAproxy)
   HAproxy acts as the load balancer, distributing incoming traffic among multiple application servers.
   This setup ensures even distribution of requests and can improve the website's performance and fault tolerance.
5. DATABASE(MYSQL)
   MySQL serves as the database system, storing and managing the data needed for the website. It can support data retrieval and updates requested by the application server.
6. CODE BASE
   This is your website's code and files, which run on the application server to serve the content and functionality of www.foobar.com.


SPECIFICS ABOUT THIS INFRASTRUCTURE
a. Why We Added Each Element
  * Two servers: For redundancy and fault tolerance.
  * HAproxy load balancer: To evenly distribute incoming traffic and improve performance.
  * MySQL database: To store and manage website data.
  * Nginx web server: To handle HTTP requests and load balancing.
b. Load Balancer Distribution Algorithm
  * HAproxy is configured with a round-robin distribution algorithm. It works by rotating
requests among the available application servers in a circular order, ensuring each server gets an equal share of incoming traffic.
c. Active-Active vs. Active-Passive Setup:
   The load balancer is configured in an Active-Active setup, where both application servers are actively handling requests.
   In an Active-Passive setup, one server is actively serving traffic, and the other is in a standby (passive) mode, ready to take over if the active server fails.
d. Database Primary-Replica (Master-Slave) Cluster:
   The database operates as a Primary-Replica (Master-Slave) cluster, where the Primary node (Master) is responsible for handling write operations and the Replica nodes
   replicate the data from the Primary and handle read operations. This setup enhances data availability and redundancy.
e. Difference Between Primary and Replica in Regards to the Application:
   The application primarily interacts with the Primary node for write operations, such as inserting or updating data. Read operations, on the other hand,
   can be distributed to the Replica nodes, reducing the read load on the Primary node and improving performance. This separation allows for efficient data management.


ISSUES WITH THE INFRASTRUCTURE
1. Single Point of Failure (SPOF):
   The load balancer (HAproxy) itself can become a SPOF. If it fails, traffic distribution is disrupted, and the system's availability is compromised.
   Implementing high-availability load balancers or failover mechanisms can mitigate this issue.
2. Security Issues (No Firewall, No HTTPS):
   The infrastructure lacks a firewall, which can leave it vulnerable to security threats. Additionally, it lacks HTTPS, making data transmission between the user's browser and the website potentially insecure. Implementing a firewall and enabling HTTPS with SSL certificates is essential for data security.

