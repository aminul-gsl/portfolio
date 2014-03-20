<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Portfolio App - Create </title>
    <link href="/js/validate/jquery.validate.min.js"/>

</head>
<body>
        <div class="container" >
            <g:if test='${flash.message}'>
                <div class='login_message alert-danger '> <i class="icon-bell red"> <b> ${flash.message} </b> </i></div>
            </g:if>
            <div class="admin col-md-8 col-lg-push-2" style="padding:100px;">
                   <g:form method="post"action='save' controller="admin">
                   <g:textField name="userName" id="userName" class="form-control" placeholder="User Name" > </g:textField>
                   <g:textField name="firstName" id="firstName"  class="form-control" placeholder="First Name" > </g:textField>
                   <g:textField name="lastName" id="lastName" class="form-control" placeholder="Last Name" > </g:textField>
                   <input type="password" name="password" id="password" class="form-control" placeholder="Password" />
                   <g:textField name="email" id="email" class="form-control" placeholder="Email" > </g:textField>

                   <g:textField name="tel" id="tel" class="form-control" placeholder="Telephone No" value="${tel}" > </g:textField>
                   <g:checkBox name="enabled" id="enabled" value="true"/> <label>Select Status</label>
                   <g:submitButton name="save" class="btn btn-lg btn-success btn-block"/>

               </g:form>




            </div>

            <div class="demo col-md-12">


            </div>
            </div>
</body>

<r:script>
    jQuery(function($){
        $('.admin').validate({
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
                    required: true

                }


            } ,
            messages: {
                userName: {
                    required: "Please provide your user Name"
                },
                firstName: {
                    required: "Please provide user first name"
                },
                password: {
                    required: "Please provide a password"
                },
                email: {
                    required: "Please provide a email"
                }


            }
        });
    });
</r:script>
</html>