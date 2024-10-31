import socket

HOST = ''
PORT = 50007
with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as server:
    print('Waiting for connection...')
    server.bind((HOST, PORT))
    server.listen(1)
    connection, address = server.accept()    
    with connection:
        print('Connected by', address)
        response = ('You are connected. Type your message: ')
        connection.sendall(response.encode())
        while True:
            message = connection.recv(1024).decode()
            if not message: break
            print('Recieved:', message)
            response = ('Message revieved! Type new message or [CTRL + C] to disconnect: ')
            connection.sendall(response.encode())