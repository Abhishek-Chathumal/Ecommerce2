const form = document.getElementById('form');
const username = document.getElementById('uname');
const email = document.getElementById('email');
const passwd = document.getElementById('pass');
const cpasswd = document.getElementById('cpass');

form.addEventListener('submit', (e) => {
    e.preventDefault();
    checkInputs();
});

function checkInputs(){
    const usernameValue = username.value.trim()
    const emailValue = email.value.trim()
    const passwordValue = passwd.value.trim()
    const cpasswordValue = cpasswd.value.trim()

    if(usernameValue === ''){
        //show error
        //add error class
        setErrorFor(username, 'username is required');
    }
    else{

    }
    
    if(emailValue === ''){
        //show error
        //add error class
        setErrorFor(email, 'email is required');
    }
    else if (!isEmail(emailValue)) {
		setErrorFor(email, 'enter a valid email');
	}
    else{

    }

    if(passwordValue === ''){
        //show error
        //add error class
        setErrorFor(passwd, 'password is required');
    }
    else{

    }

    if(cpasswordValue === ''){
        //show error
        //add error class
        setErrorFor(cpasswd, 'conform password is required');
    }
    else if(cpasswordValue === ''){
        //show error
        //add error class
        setErrorFor(cpasswd, 'conform password does not match with password');
    }else{
        
    }

}

function setErrorFor(input, message) {
	const formControl = input.parentElement;
	const small = formControl.querySelector('small');
	formControl.className = 'form-control error';
	small.innerText = message;
}

function isEmail(email) {
	return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);
}