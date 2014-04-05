<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main">

    <title>CreateUser</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <!--[if lt IE 9]>
		<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
    <style type="text/css">
        .read-only-label {
            color: blue;
        }
    </style>
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
                <a class="navbar-brand" href="${g.createLink(uri: '/')}"><img
                        src="${resource(dir: 'images/custom', file: 'logo.png')}" alt="Portfolio solution"/></a>
            </div>

            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right breadcrumb">
                    <li><a href="#">Admin User</a></li>
                    <li class="active"><a href="${g.createLink(controller: 'user', action: 'create')}">Create</a></li>
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
                    <div class="panel-heading clearfix">
                        <div class="icons pull-left">
                            <h2 style="display: inline-block; margin: 0;">Add User</h2>
                        </div>
                        <div class="toolbar pull-right">
                            <div class="btn-group">
                                <a href="${g.createLink(controller: 'user', action: 'list')}" class="btn btn-primary"
                                   title="User List">
                                    <i class="fa fa-list"></i>
                                </a>
                            </div>
                        </div>
                    </div>

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
                            <form method="post" accept-charset="utf-8" id="createAdmin" class="form-horizontal"
                                  action='${resource(dir: 'user', file: 'saveAdmin')}'>
                                <g:hiddenField name="id" value="${user?.id}"/>
                                <fieldset>
                                    <div class="form-group required">
                                        <label class="col-md-2 control-label" for="username">User Name *</label>

                                        <div class="col-md-8 required">
                                            <g:if test="${user?.id}">
                                                <label class="control-label read-only-label">${user?.username}</label>
                                            </g:if>
                                            <g:else>
                                                <g:textField name="username" value="${user?.username}" class="form-control uneditable-input" id="username"
                                                             placeholder="Please enter User Name"/>
                                                <span id="somehiddendiv" style="display: none; color: mediumseagreen"/>
                                            </g:else>

                                        </div>
                                    </div>

                                    <div class="form-group required">
                                        <label class="col-md-2 control-label" for="firstName">First Name *</label>

                                        <div class="col-md-8 required">
                                            <g:textField name="firstName" value="${user?.firstName}" class="form-control" id="firstName"
                                                   placeholder="Please enter First Name"/>
                                        </div>
                                    </div>

                                    <div class="form-group required">
                                        <label class="col-md-2 control-label" for="lastName">Last Name *</label>

                                        <div class="col-md-8 required">
                                            <g:textField name="lastName" value="${user?.lastName}" class="form-control" id="lastName"
                                                   placeholder="Please enter Last Name"/>
                                        </div>
                                    </div>

                                    <div class="form-group required">
                                        <label class="col-md-2 control-label" for="email">Email *</label>

                                        <div class="col-md-8 required">
                                            <g:textField name="email" value="${user?.email}" class="form-control" id="email"
                                                   placeholder="Please enter Email Id"/>
                                        </div>
                                    </div>

                                    <div class="form-group required">
                                        <label class="col-md-2 control-label" for="telephone">Telephone *</label>

                                        <div class="col-md-8 required">
                                            <g:textField name="telephone" value="${user?.telephone}" class="form-control" id="telephone"
                                                   placeholder="Please enter Telephone No"/>
                                        </div>
                                    </div>

                                    <div class="form-group required">
                                        <label class="col-md-2 control-label" for="password">Password *</label>

                                        <div class="col-md-8 required">
                                            <g:passwordField name="password" class="form-control" id="password"
                                                   placeholder="Please enter Password"/>
                                        </div>
                                    </div>

                                    <div class="form-group required">
                                        <label class="col-md-2 control-label" for="confirm">Confirm Password</label>

                                        <div class="col-md-8 required">
                                            <g:passwordField name="confirm" class="form-control" id="confirm"
                                                   placeholder="Please Reenter The Password"/>
                                        </div>
                                    </div>

                                    <div class="form-group required">
                                        <label class="col-md-2 control-label">Admin Status</label>
                                        <g:radioGroup name="enabled" labels="['Enable','Disable']" values="['true','false']" value="${user?.enabled}" >
                                            <label class="radio-inline">${it.label} ${it.radio} </label>
                                        </g:radioGroup>

                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-2 control-label">&nbsp;</label>

                                        <div class="col-md-8">
                                            <input type="reset" value="Reset" class="btn btn-primary"/>
                                            <input type="submit" value="${user?.id?'Update':'Submit'}" class="btn btn-primary"/>
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

<div class="col-md-1"></div>

<!--/content end-->

<r:script>
    jQuery(function ($) {
        $('#createAdmin').validate({
            errorElement: 'span',
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

            }
        });
        $("#username").blur(function(){
            $("#somehiddendiv").html(" ");
            if($(this).length > 0) {
                var url = "${createLink(controller: 'user', action: 'checkAvailable')}"
                 // async ajax request pass username entered as id parameter
                 $.getJSON( url, { userName:$(this).val() }, function(json){
                    if(!json.available) {
                          // highlight field so user knows there's a problem
                          $("#username").css("border", "1px solid red");
                          // populate a hidden div on page and fill and display it..
                          $("#somehiddendiv").html("Username already in use").show();
                    } else {
                        $("#username").css("border", "1px solid green");
                        $("#somehiddendiv").html("Available").show();
                    }
                });
            }

        });
    });
</r:script>
<!-- JS -->
</body>
</html>