<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <title>Hajj Management | Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="layout" content="main">

    <title>User List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />



    <link href="css/hajj-theme.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="css/application.css" />

    <!--[if lt IE 9]>
		<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
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
                    <li ><a href="#">Admin User</a></li>
                    <li class="active"><a href="${g.createLink(controller: 'user',action: 'create')}">Create</a></li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>

<!-- Begin page content -->
<div class="container">
<div class="row">
      <div class="col-md-1"></div>

<article class="col-md-12">
<div id="main-content">
<div class="panel panel-default">
<div class="panel-heading clearfix">
    <div class="icons pull-left">
        <h2 style="display: inline-block; margin: 0;">Add User</h2>
    </div>
    <div class="toolbar pull-right">
        <div class="btn-group">
            <a href="${g.createLink(controller: 'user',action: 'list')}" class="btn btn-primary" title="User List">
                <i class="fa fa-list"></i>
            </a>
        </div>
    </div>
</div>
<div id="data" class="panel-body">

<div class="Resumes form">
<form  method="post" accept-charset="utf-8" id="ResumesAddForm" class="form-horizontal" action='${resource(dir:'user', file:'saveAdmin')}'>


        <div style="display:none;">
    <input type="hidden" value="POST" name="_method">
</div>
<fieldset>
<div class="form-group required">
    <label class="col-md-2 control-label" for="post_id">User Name</label>
    <div class="col-md-8 required">
        <input name="username" class="form-control" id="username" placeholder="Please enter User Name"/>
    </div>
</div>
    <div class="form-group required">
        <label class="col-md-2 control-label" for="post_id">First Name</label>
        <div class="col-md-8 required">
            <input name="firstName" class="form-control" id="firstName" placeholder="Please enter First Name"/>
        </div>
    </div>
<div class="form-group required">
    <label class="col-md-2 control-label" for="post_id">Last Name</label>
    <div class="col-md-8 required">
        <input name="lastName" class="form-control" id="lastName" placeholder="Please enter Last Name"/>
    </div>
</div>
<div class="form-group required">
    <label class="col-md-2 control-label" for="post_id">Email</label>
    <div class="col-md-8 required">
        <input name="email" class="form-control" id="email" placeholder="Please enter Email Id"/>
    </div>
</div>
<div class="form-group required">
    <label class="col-md-2 control-label" for="post_id">Telephone</label>
    <div class="col-md-8 required">
        <input name="telephone" class="form-control" id="telephone" placeholder="Please enter User Name"/>
    </div>
</div>
<div class="form-group required">
    <label class="col-md-2 control-label" for="post_id">User Name</label>
    <div class="col-md-8 required">
        <input name="password" class="form-control" id="password" placeholder="Please enter User Name"/>
    </div>
</div>
<div class="form-group required">
    <label class="col-md-2 control-label" for="post_id">User Name</label>
    <div class="col-md-8 required">
        <input name="password" class="form-control" id="password" placeholder="Please enter User Name"/>
    </div>
</div>
    <div class="x" style="padding-left: 115px">
        <label>Is Active</label> <g:checkBox name="enabled" id="enabled" value="true"/>
    </div>


<div class="form-group">
    <label for="title" class="col-md-2 control-label">&nbsp;</label>
    <div class="col-md-8">
        <input type="submit" value="Submit" class="btn btn-primary"/>
    </div>
</div>
</fieldset>
</form>
</div>
</div>
</div>
</article>
</div>
</div>
<div class="col-md-1"></div>

<!--/content end-->


<!-- JS -->
</body>
</html>