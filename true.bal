import ballerina/http;

service /booleanService on new http:Listener(8080) {

    resource function post alwaysTrue(http:Caller caller, http:Request req) returns error? {
        // Create a JSON object with the required format
        json response = { value: true };

        // Send the JSON response
        check caller->respond(response);
    }
}

