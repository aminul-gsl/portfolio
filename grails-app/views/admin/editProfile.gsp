<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <meta name="layout" content="main">

    <title>User Profile</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

</head>
<!-- HTML code from Bootply.com editor -->
<body>
<!-- Wrap all page content here -->
<!-- Fixed navbar -->

<div class="topHeaderSection breadcrumbs">
    <div class="header">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${g.createLink(uri: '/')}"><img src="${resource(dir: 'images/custom', file: 'logo.png')}" alt="Portfolio solution" /></a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right breadcrumb">
                    <li ><a href="${g.createLink(controller: 'home',action: 'index')}">Home</a></li>
                    <li ><a href="${g.createLink(controller: 'user',action: 'profile')}">My Profile</a></li>
                    <li class="active"><a href="${g.createLink(controller: 'user',action: 'edit')}">Edit</a></li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>
<!-- Begin page content -->
<div class="container">
    <div class="row">
        <div class="col-md-1"></div>

        <div id="main-content">
            <div class="panel panel-default">
                <div id="data" class="panel-body">
                    <div>
                        <g:hasErrors bean="${user}">
                            <ul>
                                <g:eachError var="err" bean="${user}">
                                    <li>${err}</li>
                                </g:eachError>
                            </ul>
                        </g:hasErrors>
                    </div>
                    <div class="Resumes form">
                        <form method="post" id="updateProfile" class="form-horizontal"
                              action='${resource(dir: 'user', file: 'save')}'>
                            <g:hiddenField name="id" value="${user?.id}"/>
                            <fieldset>
                                <div class="form-group required">
                                    <label class="col-md-3 control-label" >User Name *</label>

                                    <div class="col-md-5">
                                            <label class="control-label read-only-label">${user?.username}</label>
                                    </div>
                                </div>

                                <div class="form-group required ${hasErrors(bean:user,field:'firstName','error')}">
                                    <label class="col-md-3 control-label" for="firstName">First Name *</label>
                                    <div class="col-md-5 required">
                                        <g:textField name="firstName" value="${user?.firstName}" class="form-control" id="firstName"
                                                     placeholder="Please enter First Name"/>
                                    </div>
                                </div>

                                <div class="form-group required ${hasErrors(bean:user,field:'lastName','error')}">
                                    <label class="col-md-3 control-label" for="lastName">Last Name *</label>

                                    <div class="col-md-5 required">
                                        <g:textField name="lastName" value="${user?.lastName}" class="form-control" id="lastName"
                                                     placeholder="Please enter Last Name"/>
                                    </div>
                                </div>

                                <div class="form-group required ${hasErrors(bean:user,field:'email','error')}">
                                    <label class="col-md-3 control-label" for="email">Email *</label>
                                    <div class="col-md-5 required">
                                        <g:textField name="email" value="${user?.email}" class="form-control" id="email"
                                                     placeholder="Please enter Email Id"/>
                                    </div>
                                </div>

                                <div class="form-group required ${hasErrors(bean:user,field:'telephone','error')}">
                                    <label class="col-md-3 control-label" for="telephone">Telephone *</label>

                                    <div class="col-md-5 required">
                                        <g:textField name="telephone" value="${user?.telephone}" class="form-control" id="telephone"
                                                     placeholder="Please enter Telephone No"/>
                                    </div>
                                </div>

                                <div class="form-group required ${hasErrors(bean:user,field:'password','error')}">
                                    <label class="col-md-3 control-label" for="password">Password *</label>

                                    <div class="col-md-5 required">
                                        <g:passwordField name="password" class="form-control" id="password"
                                                         placeholder="Please enter Password"/>
                                    </div>
                                </div>

                                <div class="form-group required ${hasErrors(bean:user,field:'confirm','error')}">
                                    <label class="col-md-3 control-label" for="confirm">Confirm Password</label>

                                    <div class="col-md-5 required">
                                        <g:passwordField name="confirm" class="form-control" id="confirm"
                                                         placeholder="Please Reenter The Password"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-3 control-label">&nbsp;</label>

                                    <div class="col-md-5">
                                        <input type="reset" value="Reset" class="btn btn-primary"/>
                                        <input type="submit" value="Update" class="btn btn-primary"/>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<r:script>
    jQuery(function ($) {
        $('#updateProfile').validate({
            errorElement: 'span',
//            errorClass: 'help-block',
            focusInvalid: false,
            rules: {
                username: {
                    required: true
                },
                 firstName: {
                    required: true
                },
                lastName:{
                    required:true
                },
                email: {
                    required: true,
                        email:true
                },
                telephone:{
                    required:true
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
                    required: "Provide a username"

                },
                  firstName: {
                    required: "Provide User's First name"
                },
                lastName:{
                    required: "Provide User's Last Name"
                },
                email: {
                    required: "Provide User's email Id",
                        email: "Email not valid."
                },
                telephone:{
                    required: "Provide User's Phone No."
                },

                password: {
                    required: "Specify a password.",
                    minlength: "Minimum 6 character."
                }

            },
            success: function (e) {
                $(e).closest('.form-group').removeClass('error').addClass('has-info');
                $(e).remove();
            },
            errorPlacement: function (error, element) {
                error.insertAfter(element.parent());
            }
        });

    });
</r:script>
</body>
</html>