![2-secured_and_monitored_web_infrastructure](https://github.com/Fortunatekio/alx-system_engineering-devops/assets/97586344/f62b1bd4-b25c-4810-bda1-332b4954c989)

Description
This is a 3-server web infrastructure that is secured, monitored, and serves encrypted traffic.

Enhanced Web Infrastructure:
1. Three Firewalls
   Firewalls are added to enhance security. They control and filter incoming and outgoing
   traffic to protect the infrastructure from unauthorized access and potential threats.
2. SSL Certificate for www.foobar.com:
   SSL (Secure Sockets Layer) is added to enable HTTPS, securing data in transit between the user's browser and the web server.
   This is crucial for data confidentiality and user trust.
3. Three Monitoring Clients:
   Monitoring clients (e.g., Sumo Logic) are added to collect and analyze system and application data.
   This enables proactive issue identification and performance optimization.

SPECIFICS ABOUT THIS INFRASTRUCTURE
1. The purpose of the firewalls
   The firewalls are for protecting the network (web servers, anyway) from unwanted and unauthorized users by acting as an intermediary between the internal network and the external network and blocking the incoming traffic matching the aforementioned criteria.
2. The purpose of the SSL certificate.
   The SSL certificate is for encrypting the traffic between the web servers and the external network to prevent man-in-the-middle attacks (MITM) and network sniffers from sniffing the traffic which could expose valuable information. The SSL certs ensure privacy, integrity, and identification.
3. The purpose of the monitoring clients.
   The monitoring clients are for monitoring the servers and the external network. They analyse the performance and operations of the servers, measure the overall health, and alert the administrators if the servers are not performing as expected.
The monitoring tool observes the servers and provides key metrics about the servers' operations to the administrators. It automatically tests the accessibility of the servers, measures response time, and alerts for errors such as corrupt/missing files, security vulnerabilities/violations, and many other issues.


ISSUES WITH THIS INFRASTRUCTURE
Terminating SSL at the load balancer level would leave the traffic between the load balancer and the web servers unencrypted.
Having one MySQL server is an issue because it is not scalable and can act as a single point of failure for the web infrastructure.
Having servers with all the same components would make the components contend for resources on the server like CPU, Memory, I/O, etc., which can lead to poor performance and also make it difficult to locate the source of the problem. A setup such as this is not easily scalable.
