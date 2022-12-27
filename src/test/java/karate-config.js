    function fn(){
var config = {
    name : 'Adecarlos',
    baseURL : 'https://reqres.in/api'
};

var env = karate.env
karate.log('The value of env is ', env);

if(env == 'QA'){
    config.baseURL = 'https://reqres.in/api/qa'
}
else if (env == 'UAT'){
    config.baseURL = 'https://reqres.in/api/uat'
}
else {
    config.baseURL = 'https://reqres.in/api/default'
}



karate.configure('connectTimeout', 50)
karate.configure('readTimeout', 50)
return config
    }
