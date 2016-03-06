
$(function(){
  var client = new Faye.Client('http://localhost:8000/faye');
  var subscription = client.subscribe('/collect', function(message) {
     console.log("message"+ message["text"]);
    // handle message
  });
  var publication = client.publish('/collect', {text: 'Hi there'});
  publication.then(function() {
    console.log('Message received by server!');
  }, function(error) {
    console.log('There was a problem: ' + error.message);
  });
});
