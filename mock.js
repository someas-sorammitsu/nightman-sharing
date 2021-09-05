function(request, state, logger) {
    var data = JSON.parse(request.body);
    var data = data['data'];
    var $username = data['username'];
    var $password = data['password'];
    if ($username == 'admin' && $password == 'admin') {
        return {
            headers: {
                'Content-Type': 'application/json'
            },
            statusCode: 200,
            body: JSON.stringify({
                'status': {
                    'code': 'success',
                    'username': $username,
                    'password': $password,
                    'message': 'success!'
                }
            })
        }
    } else if ($username != 'admin') {
        return {
            headers: {
                'Content-Type': 'application/json'
            },
            statusCode: 400,
            body: JSON.stringify({
                'status': {
                    'code': 'Failed',
                    'message': 'Something when wrong!'
                }
            })
        }
    } else if ($password == 'admin') {
        return {
            headers: {
                'Content-Type': 'applicaction/json'
            },
            statusCode: 200,
            body: JSON.stringify({
                'status': {
                    'code': 'success',
                    'message': 'the password is matched!'
                }
            })
        }
    } else {
        return {
            headers: {
                'Content-Type': 'application/json'
            },
            statusCode: 400,
            body: JSON.stringify({
                'status': {
                    'code': 'Failed',
                    'message': 'Invalid the password',
                }
            })
        }
    }
}