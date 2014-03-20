<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Portfolio App - Create </title>
     <style>
         .userDetails{
             font-weight: bold;
             font-size:x-large;
             color: red;
             padding: 2px 8px;
             margin-top: 2px;
         }


     </style>

</head>
<body>
        <div class="container" >
            <g:if test='${flash.message}'>
                <div class='login_message alert-danger '> <i class="icon-bell red"> <b> ${flash.message} </b> </i></div>
            </g:if>
            <div class="col-md-8 col-lg-push-2" style="padding-top:100px;padding-bottom:100px;padding-left: 224px;">
                   <g:form class="adminForm" method="post"action='save' controller="admin">

                       <label class="userDetails">Enter User Details:</label> <g:textField name="userName" id="userName" class="form-control" placeholder="User Name" style="width: 58%"/>
                   <g:textField name="firstName" id="firstName"  class="form-control" placeholder="First Name" style="width: 58%"/>
                   <g:textField name="lastName" id="lastName" class="form-control" placeholder="Last Name" style="width: 58%"/>
                   <input type="password" name="password" id="password" class="form-control" placeholder="Password" style="width: 58%" />
                   <g:textField name="email" id="email" class="form-control" placeholder="Email" style="width: 58%"/>

                   <g:textField name="tel" id="tel" class="form-control" placeholder="Telephone No" value="${tel}" style="width: 58%" />
                   <g:checkBox name="enabled" id="enabled" value="true"/> <label>Select Status</label><br>
                   <g:submitButton name="save" class="btn btn-lg btn-success btn-block" style="width: 58%"/>

               </g:form>




            </div>

            <div class="demo col-md-12">


            </div>
            </div>

<script>
    $(document).ready(function($){
        $('.adminForm').validate({
            errorElement: 'span',
            rules: {
                userName: {
                    required: true
                },
                firstName: {
                    required: true,
                    minlength: 4,
                    maxlength: 12
                },

                password: {
                    required: true

                },
                email: {
                    required: true,
                    email: true

                }


            } ,
            messages: {
                userName: {
                    required: "Please provide user Name"
                },
                firstName: {
                    required: "Please provide user first name"
                },
                password: {
                    required: "Please provide a password"
                },
                email: {
                    required: "Please provide a email;exam: admin@mail.com"
                }


            }
        });
    });
</script>
</body>

</html>