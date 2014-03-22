<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <title>Create Product  | Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="layout" content="main">
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


<!-- Begin page content -->
<div class="container">
<div class="row">
      <div class="col-md-1"></div>

<article class="col-md-10">
<div id="main-content">
<div class="panel panel-default">
<div class="panel-heading clearfix">
    <div class="icons pull-left">
        <h2 style="display: inline-block; margin: 0;">Add Product</h2>
    </div>
    <div class="toolbar pull-right">
        <div class="btn-group">
            <a href="${g.createLink(controller: 'product',action: 'list')}" class="btn btn-primary">
                <i class="fa fa-list"></i>
            </a>
            <a href="#data" data-toggle="collapse" class="accordion-toggle minimize-box btn btn-primary">
                <i class="fa fa-chevron-up"></i>
            </a>
        </div>
    </div>
</div>
<div id="data" class="panel-body">

<div class="Resumes form">
<form  method="post" accept-charset="utf-8" id="" class="form-horizontal" action='${resource(dir:'', file:'')}'>


        <div style="display:none;">
    <input type="hidden" value="POST" name="_method">
</div>
<fieldset>
<div class="form-group required">
    <label class="col-md-2 control-label" for="name">Name</label>
    <div class="col-md-8 required">
        <input name="name" class="form-control" id="name" placeholder="Please enter Product Name"/>
    </div>
</div>
    <div class="form-group required">
        <label class="col-md-2 control-label" for="description">Description</label>
        <div class="col-md-8 required">
            <textarea class="form-control" name="description" id="description"  placeholder="some description added here"></textarea>
        </div>
    </div>
    <div class="form-group">
        <label for="price" class="col-md-2 control-label">Contact #</label>
        <div class="col-md-8">
            <input type="text" name="price" class="form-control" id="price" placeholder="Please enter price"/>
        </div>
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