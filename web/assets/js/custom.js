/**
 * Created by l on 12/5/2016.
 */

function uploadfile(){
    alert("uploading file");
    // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
        $.get("UploadServlet1", function(responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
            //$("#somediv").text(responseText);
            alert("success") ;         // Locate HTML DOM element with ID "somediv" and set its text content with the response text.
    });
}