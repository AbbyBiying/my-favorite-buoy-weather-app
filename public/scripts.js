$(document).ready(function(){

  // show the stations which had been picked previously and were stored in the cookie
  function populateFavorites(){

    // set an array of favorite station IDs from cookie, default is blank array
    var favoriteStationsArray = Cookies.getJSON('favoriteStations'); 

    // if cookie is empty
    if (favoriteStationsArray === undefined){
      favoriteStationsArray = []; 
    }
    console.log(favoriteStationsArray);
     
    //loop through each station within 100 nautical miles of 40N 73W.
    $(".station").each(function(){ 

      // show favorite stations 
      if (favoriteStationsArray.includes($(this).attr('id'))) { 
        $(this).show(); 
        console.log(this);

        // check the checkbox; e.g., station-checkbox-SDHN4
        $("#station-checkbox-" + $(this).attr('id')).prop("checked", true);
      }
      else{

        // uncheck the checkbox;  
        $(this).hide();

        $("#station-checkbox-" + $(this).attr('id')).prop("checked", false);
      }
    });
  }

  // show favorite stations from cookie before new request 
  populateFavorites();  
  
  // start request
  $(".station-checkbox").change(function(){
    $.ajax({
      url: $("#pick-favorite-stations").attr("action"),
      type: "POST",
      data: $("#pick-favorite-stations").serialize(),
      dataType: "json",

      // disable the form until request is finished to ensure each request finished 
      // before more changes are made, in order to to avoid conflict and lost request 
      beforeSend: function(){
        $('#pick-favorite-stations input').prop("disabled", true);
      },

      success: function (data) {
        console.log('Submission was successful.');          
        console.log(data.result);

        // reenable checkbox after each request is finished
        $('#pick-favorite-stations input').prop("disabled", false);
      
        // set cookie after request is finished, expire in 7 days
        Cookies.set('favoriteStations', data.result, { expires: 365 });
        
        // after cookie is set, show favorite stations from cookie
        populateFavorites();
      },  

      error: function (data) {
        console.log('An error occurred.');
        console.log(data);
        
        $('#pick-favorite-stations input').prop("disabled", false);
        
        populateFavorites();
      }
    });     
  });
});
