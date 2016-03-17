def app(environ, start_response):
    start_response('200 OK', [('Content-Type', 'text/plain')])
    qs = environ['QUERY_STRING'].split("&")
    qs = [item + "\r\n" for item in qs]
    return qs
