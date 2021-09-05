function(request,state,logger){
    var data=JSON.parse(request.body);
    var data=data['data'];
    var username=data['username'];
    var password=data['password'];
    if(username=='nan'){
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
      }else{
        return{
          headers: {
            'Content-Type': 'application/json'
          },
          statusCode: 400,
          body: JSON.stringify({
            'status': {
              'code': 'I hate you ',
              'message': 'fuck you!',
              
            }
          })
        }
      }
    }