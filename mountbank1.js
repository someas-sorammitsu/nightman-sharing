const { default: $ } = require("webdriverio/build/commands/browser/$");

function(request,state,logger){
    var data=JSON.parse(request.body);
    var data=data['data'];
    var username=data[${us}]
   
    if(username=='seyha'){
        return{
          headers: {
            'Content-Type': 'application/json'
          },
          statusCode: 200,
          body: JSON.stringify({
            'status': {
              'code': 'success',
              'message': 'success'
            }
          })
        };
      
    }