#!/bin/bash
apk add openssl
openssl req -new -newkey rsa:2048 -nodes -keyout ma_cle.key -out ma_requete.csr
