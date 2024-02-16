import ballerina/http;

listener http:Listener httpListener = new (8080);

type Payload record{|
    string data;
|};

service / on httpListener {
    resource function post echo(Payload pl) returns Payload {
        return pl; 
    }
}
