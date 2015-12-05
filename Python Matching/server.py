#!/usr/bin/python
from http.server import BaseHTTPRequestHandler,HTTPServer
 
PORT_NUMBER = 8080
 
#This class will handles any incoming request from
#the browser
       
 
 
class myHandler(BaseHTTPRequestHandler):
 
 
       
        #Handler for the GET requests
        def do_GET(self):
                self.send_response(200)
                self.send_header('Content-type','text/html')
                self.end_headers()
                def aTestFunction(self):
                        return "Thisisastring"
                # Send the html message
                string = aTestFunction(self)
                self.wfile.write(string)
                return
 
try:
        #Create a web server and define the handler to manage the
        #incoming request
        server = HTTPServer(('127.0.0.1', PORT_NUMBER), myHandler)
        print('Started httpserver on port ' , PORT_NUMBER)
       
        #Wait forever for incoming htto requests
        server.serve_forever()
 
except KeyboardInterrupt:
        print('^C received, shutting down the web server')
        server.socket.close()