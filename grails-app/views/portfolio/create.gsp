<%@ page import="com.grails.elance.portfolio.admin.ScopeType; com.grails.elance.portfolio.admin.PortfolioType" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <title>Portfolio Managment | Create</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="layout" content="main">

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
    <label class="col-md-2 control-label" for="name">Name</label>
    <div class="col-md-8 required">
        <g:textField value="${portfolio?.name}" name="name" class="form-control" id="name" placeholder="Please Enter Portfolio Name"/>
    </div>
</div>
    <div class="form-group required">
        <label for="portfolioType" class="col-md-2 control-label">Portfolio Type</label>
        <div class="col-md-8">
            <g:select name="portfolioType" value="${portfolio?.portfolioType?.key}" class="form-control selectpicker" from="${PortfolioType.values()}" optionKey="key" />
        </div>
    </div>

    <div class="form-group required">
        <label class="col-md-2 control-label" for="description">Description</label>
        <div class="col-md-8 required">
            <g:textArea value="${portfolio?.description}" class="form-control" name="description" id="description" />
        </div>
    </div>


    <div class="scope" style="padding-top:0px;padding-bottom:5px">
        <label   class="col-md-2 control-label">Scope</label>
        <g:radioGroup name="scope" labels="${ScopeType.values()}" values="${ScopeType.values()}" value="${portfolio?.scope?.key}" >
            <label class="radio-inline">${it.label} ${it.radio} </label>
        </g:radioGroup>
    </div>
    %{--<div class="form-group" id="sandbox-container">
        <label class="col-md-2 control-label" for="publishDateYear">Publish Date</label>

        <div class="col-md-3 input-group date">
                <input id="publishDateDiv" type="text" value="${new Date()}" class="form-control"><span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
        </div>
    </div>--}%
    <div id="sandbox-container" class="span5 col-md-5"><div class="input-group date">
        <input type="text" class="form-control"><span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
    </div></div>
    <div class="form-group">
        <label class="col-md-2 control-label" for="expirationsDateYear">Expirations Date</label>
        <div class="col-md-3">
            <g:datePicker name="myDate" value="${new Date()}"
                          default="${new Date().plus(7)}"/>
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
        $('#sandbox-container .input-group.date').datepicker({
            todayBtn: "linked",
            autoclose: true,
            todayHighlight: true
        });

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