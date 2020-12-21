####How to enable HTTPS on WebServer

1. create keystore
   - generate privatekey and certificate \
   `winpty openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout my_private_key.key -out my_certificate.crt`
   - export them to key store \
   `winpty openssl pkcs12 -export -in my_certificate.crt -inkey my_private_key.key -out my_keystore.p12`

2. use keystore on webserver (example for SpringBoot)
   - copy file `my_keystore.p12` to `%webapp%/main/resources`
   - add application properties
        ```
        server.ssl.key-store-type=PKCS12
        server.ssl.key-store=my_keystore.p12
        server.ssl.key-store-password=dummy
        server.port=8443
        ```
   - call server `GET https://localhost:8443/dummy`


####REMARKS:
1. all commands are for GitBash on Windows (`winpty` helps avoid unexpected behaviour) \
   on Linux it is enough to use `openssl` instead of `winpty openssl`
2. if during a request handling there is an SSL exception in server log like \
   `not an SSL/TLS record: 474554202f64756d6d7920485454502f312e310d0a486f73743a206c6f63616c6` \
   Try to decipher it getting more plain text details. \
   Copy the HEX number from the exception and use terminal to execute: \
   `printf '474554202f64756d6d7920485454502f312e310d0a486f73743a206c6f63616c6' | xxd -r -p | xxd`
