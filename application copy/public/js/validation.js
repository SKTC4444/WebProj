
document.getElementById( 'username' ).addEventListener('input',
    function validation(ev){
    let usernameElement = ev.target;
    let username = usernameElement.value;
    if (username.length > 3 ){
         usernameElement.classList.add('valid-text');
        usernameElement.classList.remove('invalid-text');
     }else{
        usernameElement.classList.add('invalid-text');
        usernameElement.classList.remove('valid-text');
        }
    });

    document.getElementById( 'password' ).addEventListener('input',
    function validation(ev){
    let passwordElement = ev.target;
    let password = passwordElement.value;
    if (password.length > 8 ){
         passwordElement.classList.add('valid-text');
        passwordElement.classList.remove('invalid-text');
     }else{
        passwordElement.classList.add('invalid-text');
        passwordElement.classList.remove('valid-text');
        }});
                
                
                
                
                


