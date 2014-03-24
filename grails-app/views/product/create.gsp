<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <title>Create Product  | Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="layout" content="main">

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
                    <li ><a href="#">Portfolio</a></li>
                    <li ><a href="#">Product</a></li>
                    <li class="active"><a href="${g.createLink(controller: 'portfolio',action: 'create')}">Create</a></li>
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
        <h2 style="display: inline-block; margin: 0;">Add Product</h2>
    </div>
    <div class="toolbar pull-right">
        <div class="btn-group">
            <a href="${g.createLink(controller: 'product',action: 'list')}" class="btn btn-primary">
                <i class="fa fa-list"></i>
            </a>
        </div>
    </div>
</div>
<div id="data" class="panel-body">

<div class="Resumes form">
<form  method="post" accept-charset="utf-8" id="createProduct" class="form-horizontal" action='${resource(dir:'', file:'')}'>


        <div style="display:none;">
    <input type="hidden" value="POST" name="_method">
</div>
<fieldset>
    <div class="form-group">
        <label for="name" class="col-md-2 control-label">Name</label>
        <div class="col-md-8">
            <input type="text" name="name" class="form-control" id="name" placeholder="Please enter Name"/>
        </div>
    </div>

    <div class="form-group required">
        <label class="col-md-2 control-label" for="description">Description</label>
        <div class="col-md-8 required">
            <textarea class="form-control" name="description" id="description"  placeholder="some description added here"></textarea>
        </div>
    </div>
    <div class="form-group">
    <label for="price" class="col-md-2 control-label">Price #</label>
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

<script>
    jQuery(function ($) {
        $('#createProduct').validate({
            errorElement: 'span',
            rules: {

                description:{
                    required:true
                },
                price:{
                    required:true,
                    isNumeric:true
                } ,
                name:{
                    required:true
                }
            } ,
            messages: {

                description:{
                    required: "Enter Product Description"
                },
                price: {
                    required: "Enter Product Price"
                }

            }
        });

    });
</script>
</body>
</html>