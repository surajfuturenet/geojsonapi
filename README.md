This a API build for managing GEOJSON Data. 

JSON Request and Response Data Types

**Data Types**
    name = string
    address = string
    polygonid = integer
    partid  = integer
    pointid = integer
    longitude = float
    latitude = float
    description = string
    
**HTTP METHODS**

**Get All GeoJSON Data**
HTTP METHOD :- GET
URL :- https://sleepy-wave-43744.herokuapp.com/api/v1/conservations


**GET GEOJSON Data by ID**
HTTP METHOD :- GET
URL :- https://sleepy-wave-43744.herokuapp.com/api/v1/conservations/:id

**Create a New Entry for GEOJSON Data**
HTTP METHOD :- POST
URL :- https://sleepy-wave-43744.herokuapp.com/api/v1/conservations
JSON Request Data Format :- 
{
  "name" : "",
  "address" : "",
  "polygonid" : "",
  "partid" : "",
  "pointid" : "",
  "longitude" : "",
  "latitude" : "",
  "description" : ""
}

Note:- Any other data feilds will be ignored. 

**Update a Entry of GEOJSON Data**
HTTP METHOD :- PUT
URL :- https://sleepy-wave-43744.herokuapp.com/api/v1/conservations/:id
JSON Request Data Format :- 
{
  "name" : "",
  "address" : "",
  "polygonid" : "",
  "partid" : "",
  "pointid" : "",
  "longitude" : "",
  "latitude" : "",
  "description" : ""
}

Note:- Any other data feilds will be ignored. 

**Delete a Entry for GEOJSON Data**
HTTP METHOD :- DELETE
URL :- https://sleepy-wave-43744.herokuapp.com/api/v1/conservations/:id

