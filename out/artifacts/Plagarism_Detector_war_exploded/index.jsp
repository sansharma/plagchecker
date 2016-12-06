<%--
  Created by IntelliJ IDEA.
  User: l
  Date: 12/4/2016
  Time: 7:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Plagarism Detector</title>

    <!-- Main Styslesheet -->
    <link rel="stylesheet" href="assets/css/style.css" />
    <!-- Bootstrap CSS -->
    <link href="assets/bootstrap/bootstrap.css" rel="stylesheet">
    <!-- Font-Awesome Icons -->
    <link href="assets/font_awesome/css/font-awesome.css" rel="stylesheet">
    <!-- Semantic CSS -->
    <link href="assets/semantic/dist/semantic.min.css" type="text/css" rel="stylesheet"/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/jquery.address.js"></script>
    <!-- Semantic JS -->
    <script src="assets/semantic/dist/semantic.min.js" type="text/javascript" ></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="assets/bootstrap/html5shiv.min.js"></script>
    <script src="assets/bootstrap/respond.min.js"></script>

    <![endif]-->
  </head>
  <body>
  <%--<form method="post" action="getresult">--%>
    <%--First Sentence: <input type="text"  name="firstsentence"/><br><br>--%>
    <%--Second Sentence: <input type="text"  name="secondsentence"/><br><br>--%>
    <%--<input type="submit" value="submit">--%>
  <%--</form>--%>

  <%--<h3>File Upload:</h3>--%>
  <%--Select a file to upload: <br />--%>
  <%--<form action="UploadServlet" method="post"--%>
                <%--enctype="multipart/form-data">--%>
    <%--<input type="file" name="file" size="50" />--%>

    <%--<br />--%>

    <%--<input type="submit" name="submit" value="Upload File" />--%>


  <%--</form>--%>
  <%--<br><br><br><br><br>--%>
  <%--<form action="UploadServlet1" method="post"--%>
        <%--enctype="multipart/form-data">--%>
    <%--<input type="file" name="file" size="50" />--%>
    <%--<br />--%>

    <%--<input type="submit" name="submit" value="Upload File" />--%>

  <%--</form>--%>

  <%--<form method="post" action="getresult">--%>
    <%--<input type="submit" value="Check Plagarism"/>--%>
  <%--</form>--%>

  <div id="bodyWrappers">

    <header>
      <div class="container">
        <div class="row">
          <div>
            <h1>Plag Checker</h1>
          </div>
        </div><!--row -->
      </div><!--container -->
    </header>



    <div id="mainContent">
      <div class="container">
        <div class="row">
          <div class="aboutText">
            <h4>Your hassle-free Plagiarism Checker</h4>
            <h2>We Love Originals</h2>
            <p>Plag Checker is a free intelligent plagiarism detection application.
            </p>
          </div>

            <div id="uploadbox">
              <b style="font-size: 16px;color: #29608c;padding: 5px;margin-left: 52px;">File 1</b>

              <div class="ui action input">
                <form action="UploadServlet" method="post" enctype="multipart/form-data">
                  <input type="file"  accept=".txt" name="firstsentence" placeholder="File 1...">
                  <input type="submit" class="ui button" value="Upload">
                </form>
              </div>

              <b style="font-size: 16px;color: #29608c;padding: 5px;margin-left: 52px;">File 2</b>

                <div class="ui action input">
                  <form action="UploadServlet1" method="post" enctype="multipart/form-data">
                  <input type="file"  accept=".txt" name="secondsentence" placeholder="File 2...">
                  <input type="submit" class="ui button" value="Upload">
                  </form>
                </div>



            </div>
            <br/>
            <br/>

            <div style="text-align: center">

              <%--<button type="button" class="ui green large button" data-toggle="modal" data-target=".bs-example-modal-lg">--%>
                <i class="search icon"></i>
                <form  action="getresult" method="post" >
                  <input type="submit" value="Check" style="color:green"/>
                </form>

              <%--</button>--%>

              <input style="padding: 8px; "class="ui red small button" type="reset">

              <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg">
                  <div class="modal-content">

                    <div class="modal-body">

                      <H2>Plagiarism detected!</H2>
                      <h4>Your file is 0.3333 equivalent to next file.</h4>

                    </div>
                  </div>
                </div>
              </div>


            </div>

          <br/>
          <br/>

          <hr style="background: #29608c;height: 2px;"/>
          <p style="margin-top: 5px;text-align: center;font-size: 15px;word-spacing: 4px;font-weight: bold;color: #29608c;">
            Made with <i class="heart red icon"></i> by Sandy, Abu, Sumu, Sanju and Kundu.
          </p>











        </div><!-- container -->
      </div><!-- mainContent -->



    </div><!-- bodyWrapper -->

  </div>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="assets/bootstrap/bootstrap.js"></script>
  <script src="assets/js/custom.js"></script>
  </body>
</html>
