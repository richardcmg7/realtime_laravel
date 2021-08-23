require('./bootstrap');

// const notificationElement = document.getElementById('notificacion');
// notificationElement.classList.remove('invisible');
   
Echo.channel('notification').listen('UserSessionChanged', (e) => {
    const notificationElement = document.getElementById('notificacion');
    console.log("Im here");
    notificationElement.innerText = e.message;

    notificationElement.classList.remove('invisible');
    notificationElement.remove('alert-success');
    notificationElement.remove('danger');

    notificationElement.classList.add('alert-' + e.type);
    
});