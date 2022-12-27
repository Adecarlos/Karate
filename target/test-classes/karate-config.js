    function fn(){
var config = {
    name : 'Adecarlos',
    baseURL : 'https://reqres.in/api'
};

var env = karate.env
karate.log('The value of env is ', env);

karate.configure('connectTimeout', 50)
karate.configure('readTimeout', 50)
return config
    }
