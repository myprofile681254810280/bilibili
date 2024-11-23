var cookie_arr = document.cookie.split(';');

for(var i = 0; i < cookie_arr.length; i++) {
    var ckname = cookie_arr[i].split('=')[0];
    var ckcont = cookie_arr[i].split('=')[1];
    if(ckname == ' DedeUserID') {
        console.log('DedeUserID: ' + ckcont);
    }
    else if(ckname == ' bili_jct') {
        console.log('bili_jct: ' + ckcont);
    }
}

