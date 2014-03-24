<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <title>Portfolio Managment | Create</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="layout" content="main">

    <link href="css/hajj-theme.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="css/application.css" />

    <!--[if lt IE 9]>
		<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->



</head>
<!-- HTML code from Bootply.com editor -->
<body> <script>
    $(function() {
        $( "#publishDateYear" ).datepicker()
            $( "#expirationsDateYear" ).datepicker({
                showButtonPanel: true
            });
    });
</script>
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
        <h2 style="display: inline-block; margin: 0;">Add Portfolio</h2>
    </div>
    <div class="toolbar pull-right">
        <div class="btn-group">
            <a href="${g.createLink(controller: 'portfolio',action: 'list')}" class="btn btn-primary">
                <i class="fa fa-list"></i>
            </a>
          </div>
    </div>
</div>
<div id="data" class="panel-body">

<div class="Resumes form">
<form  method="post" accept-charset="utf-8" id="createPortfolio" class="createPortfolio form-horizontal" action='${resource(dir:'portfolio', file:'index')}'>

 <div style="display:none;">
    <input type="hidden" value="POST" name="_method">
</div>
<fieldset>
<div class="form-group required">
    <label class="col-md-2 control-label" for="post_id">Name</label>
    <div class="col-md-8 required">
        <input name="name" class="form-control" id="name" placeholder="Please enter Portfolio Name"/>
    </div>
</div>
    <div class="form-group required">
        <label for="portfolioType" class="col-md-2 control-label">Portfolio Type</label>
        <div class="col-md-8">
            <select name="portfolioType" class="form-control selectpicker" id="portfolioType" data-size="10" data-live-search="true"/>
            <option value="0">Construction</option>
            <option value="1">IT</option>
            <option value="2">Catering</option>
            <option value="3">Trading</option>
        </select>
        </div>
    </div>

    <div class="form-group required">
        <label class="col-md-2 control-label" for="description">Description</label>
        <div class="col-md-8 required">
            <textarea class="form-control" name="description" id="description" ></textarea>
        </div>
    </div>


    <div class="scope" style="padding-top:0px;padding-bottom:5px">
        <label   class="col-md-2 control-label" style="padding-top:0px;">Scope</label>
        <input type="radio" name="scope" id="scope" value="false"/> <label>Public</label>
        <input type="radio" name="scope" id="scope" value="true"/> <label>Private</label>
    </div>
    <div class="form-group">
        <label class="col-md-2 control-label" for="publishDateYear">Publish Date</label>

        <div class="col-md-3">
            <div class="input-group date add-on" id="publishDateYear" data-date="1992 ">
                <input class="form-control" id="publishDateYear" type="text"  readonly="readonly" name="publishDateYear"/>
                <span class="input-group-addon add-on"><i class="fa fa-calendar"></i></span>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-2 control-label" for="expirationsDateYear">Expirations Date</label>
        <div class="col-md-3">
        <div class="input-group date add-on" id="expirationsDateYear" data-date="1992 ">
            <input class="form-control" id="expirationsDateYear" type="text"data-date="1992 " readonly="readonly" name="expirationsDateYear"/>
            <span class="input-group-addon add-on"><i class="fa fa-calendar"></i></span>
        </div>
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
        $('#createPortfolio').validate({
            errorElement: 'span',
            rules: {
                name: {
                    required: true
                },
                portfolioType: {
                    required: true
                },
                description:{
                    required:true
                },
                publishDateYear: {
                    required: true
                },
                expirationsDateYear:{
                    required:true
                }
            } ,
            messages: {
                name: {
                    required: "Provide a name"

                },
                portfolioType: {
                    required: "Select a Portfolio Type"
                },
                description:{
                    required: "Enter portfolio Description"
                },
                publishDateYear: {
                    required: "Enter the Publish Date"
                },
                expirationsDateYear:{
                    required: "Enter the Expirations Date."
                }

            }
        });

    });
</script>
</body>
</html>