






















<!DOCTYPE HTML>
<html>
<head>
    <title>Registration</title>
    <meta charset="UTF-8"/>
    <meta name="layout" content="main">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <style type="text/css">

    #container {
        margin-top: 30px;
        padding-bottom: 20px;
        padding-left: 358px;
        padding-right: 158px;
    }

    .demo form.registration input{
        max-width: 300px;
        border-radius:5px;
        margin-right:10px;
    }
    .demo form.registration input:hover{

        cursor:pointer;
    }

    .demo form.registration p{
        font-size: 1.5em; color: #333333;
    }
    .error{color:red;display:inline;}
    #navigation ul li a{color:white; padding-top:10px;}
    #navigation ul li {margin-top:12px;}
    .x{margin-top:10px;}
    .x label{margin-top:7px; }

    </style>
    <r:require modules="jqueryvalidate"/>

</head>

<body>

<div id="container">
    <div class="abc" >
        <!-- <img src="http://localhost:8080/edupal/static/images/edupal.png" width=100%">-->
        <h2 style="color:#A3C651;">Create User</h2>
        <form method="post" class="registration" action='${resource(dir:'user', file:'saveAdmin')}'>
            <fieldset title="Registration">

                <g:hasErrors bean="${user}">
                    <div class="errors">
                        <g:renderErrors bean="${user}"/>
                    </div>
                </g:hasErrors>
                <div class="col-md-6" style="max-width:124px;">
                    <div class="x">

                        <label for="username">Username: *</label>
                    </div>
                    <div class="x">
                        <label for="fullName">First Name: *</label>
                    </div>
                    <div class="x">
                        <label for="fullName">Last Name: *</label>
                    </div>
                    <div class="x">

                        <label for="email">E-mail: *</label>

                    </div>
                    <div class="x">

                        <label for="email">Telephone: *</label>

                    </div>
                    <div class="x">

                        <label for="password">Password: *</label>

                    </div>
                    <div class="x">
                        <label for="confirm">Confirm Password: *</label>

                    </div>


                </div>
                <div class="col-md-6">

                    <div class="x">
                        <input id="username" name="username" type="text" class="form-control"/>
                        <span id="somehiddendiv" style="display: none; color: mediumseagreen"/>
                    </div>
                    <div class="x">
                        <input id="firstName"  name="firstName" type="text" class="form-control"/>
                    </div>
                    <div class="x">
                        <input id="lastName"  name="lastName" type="text" class="form-control"/>
                    </div>
                    <div class="x">
                        <input id="email" name="email" type="text" class="form-control"/>
                    </div>
                    <div class="x">
                        <input id="telephone"  name="telephone" type="text" class="form-control"/>
                    </div>
                    <div class="x">
                        <input id="password" type="password" name="password" class="form-control" />
                    </div>
                    <div class="x">
                        <input id="password" type="password" name="password" class="form-control" />
                    </div>

                    <div class="x">
                        <g:checkBox name="enabled" id="enabled" value="true"/>  <label>Is Active</label><br>
                    </div>
                    <div class="x">
                        <g:submitButton name="Submit" class="btn btn-lg btn-primary btn-block"/>
                    </div>
                </div>
            </fieldset>




        </form>


    </div>

</div>


<r:script>
    jQuery(function ($) {
        $('.registration').validate({
            errorElement: 'span',
            rules: {
                username: {
                    required: true
                },
                firstName: {
                    required: true
                },
                lastName: {
                    required: true
                },
                email: {
                    required: true,
                    email:true
                },
                telephone: {
                    required: true
                },
                password: {
                    required: true,
                    minlength: 6
                },
                confirm: {
                    required: true,
                    equalTo: "#password"
                }
            } ,
            messages: {

                username: {
                    required: "Select a username"
                },
                firstName: {
                    required: "Provide user first name"
                },
                lastName: {
                    required: "Provide user last name"
                },

                email: {
                    required: "Provide a email",
                    email: "Email not valid."
                },
                telephone: {
                    required: "Provide your telephone no."
                },
               password: {
            required: "Specify a password.",
                    minlength: "Minimum 6 character."
        }
    }
    });
    $("#username").blur(function(){
        if($(this).length > 0) {
            var url = "${createLink(controller:'user', action:'checkAvailable')}"
            // async ajax request pass username entered as id parameter
            $.getJSON( url, { userName:$(this).val() }, function(json){
                if(!json.available) {
                    // highlight field so user knows there's a problem
                    $("#username").css("border", "1px solid red");
                    // populate a hidden div on page and fill and display it..
                    $("#somehiddendiv").html("This ID is already taken").show();
                } else {
                    $("#username").css("border", "1px solid green");
                    $("#somehiddendiv").html("Available").show();
                }
            });
        }

    });
    })
</r:script>
</body>
</html>