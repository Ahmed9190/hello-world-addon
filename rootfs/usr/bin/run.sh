#!/usr/bin/env python3
from http.server import HTTPServer, SimpleHTTPRequestHandler

class HelloHandler(SimpleHTTPRequestHandler):
    def do_GET(self):
        if self.path == '/' or self.path == '/index.html':
            self.send_response(200)
            self.send_header('Content-type', 'text/html')
            self.end_headers()
            self.wfile.write(b'<html><body><h1>Hello World!</h1></body></html>')
        else:
            super().do_GET()

HTTPServer(('0.0.0.0', 1880), HelloHandler).serve_forever()
