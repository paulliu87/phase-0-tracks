What are some common HTTP status codes?
200 OK
300 Multiple Choices
301 Moved Permanently
302 Found
304 Not Modified
307 Temporary Redirect
400 Bad Request
401 Unauthorized
403 Forbidden
404 Not Found
410 Gone
500 Internal Server Error
501 Not Implemented
503 Service Unavailable
550 Permission denied
What is the difference between a GET request and a POST request? When might each be used?
GET - Requests data from a specified resource
POST - Submits data to be processed to a specified resource

GET is better to keep the parameter in the history, reload, bookmarked or cached.
POST is more secure than the GET. It is better to use POST instead of GET to send password or sensitive information. 

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

An HTTP cookie (web cookie, browser cookie) is a small piece of data that a server sends to the user's web browser, that may store it and send it back together with the next request to the same server. Typically. it is used to know if two requests came from the same browser allowing to keep a user logged-in, for example. It remembers stateful information for the stateless HTTP protocol.