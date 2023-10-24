#!/usr/bin/python3

"""
Ce programme sert à afficher les logs que le client génère
lors de son exécution. Ils sont envoyés via une socket sur
le port 4444, ce script crée donc un serveur pour recevoir
ces messages.

TODO: Prendre en charge le format des logs pour extraire
le message et les afficher correctement.
"""

import socket

srv = socket.socket()
srv.bind(('127.0.0.1', 4444))
srv.listen(1)
print('Listening on 127.0.0.1:4444')
cli = None

try:
    while True:
        cli, addr = srv.accept()
        print('[INFO] Client connected.')
        msg = None # Could be anything other than b''

        while msg!=b'':
            msg = cli.recv(2048)
            print(msg.decode().replace('!SOS','\n    !SOS'))
    
        print('\n[INFO] Client disconnected. Waiting for another client...')
finally:
    srv.close()
    if cli != None:
        cli.close()
