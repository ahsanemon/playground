# ForwardAuth - Traefik
## Concept

![ForwardAuth](assests/IMG_0042.JPG "ForwardAuth")

assests/IMG_0042.JPG

## Simulation
Clone the repository, navigate to the repository directory and use the command below

    docker-compose up --build -d

This will deploy below mentioned three services
- Reverse proxy

   A traefik container
- App

   Upon calling this will print all the header in the request message.
- AuthServer
  
  It looks for a `JWT` token inside the `x-access-tokens` header of the incoming request and returns 
    - OK - valid token signature
    - KO - invalid token signature
    - Token missing - if the header is missing in the incoming request
    
  In case of valid token AuthServer will inject some headers to the original request message based on the data of decoded JWT token.
