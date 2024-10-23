from ping3 import ping

def ping_server(host):
    response = ping(host)
    if response:
        return 'success', round(response*1000)
    else:
        return "doesn't work", 0
    
server = input('Print server name or IP address to ping: ')
result, delay = ping_server(server)
#result, delay = ping_server('google.com')
print(result)
print('Delay:', delay, 'ms')