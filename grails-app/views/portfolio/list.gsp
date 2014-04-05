<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <meta name="layout" content="main">

    <title>Portfolio List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

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
                    <li class="active"><a href="${g.createLink(controller: 'portfolio',action: 'list')}">List</a></li>
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
        <h2 style="display: inline-block; margin: 0;">Portfolio list</h2>
            <g:if test="${flash.message}">
                <h4 style="color:#4C8FBD;">${flash.message}</h4>
            </g:if>
    </div>
    <div class="toolbar pull-right">
        <div class="btn-group">
            <a href="${g.createLink(controller: 'portfolio',action: 'create')}" class="btn btn-primary">
                <i class="fa fa-plus"></i>
            </a>
   </div>
    </div>
</div>
<div id="data" class="panel-body">
<table class="dataListTable table table-bordered table-striped table-hover table-condensed">
<thead>
<tr>
    <th>Name</th>
    <th>Portfolio Type</th>
    <th>Description</th>
    <th>Scope</th>
    <th>Publish Date</th>
    <th>Expiration Date</th>
    <th>Action</th>
</tr>
</thead>
<tbody>

    <g:each in="${portfolioList}" var="portfolio">

        <tr>
            <td>${portfolio?.name}</td>
            <td>${portfolio?.portfolioType.value}</td>
            <td>${portfolio?.description}</td>
            <td>${portfolio?.scope.value}</td>
            <td><g:formatDate format="dd/MM/yyyy" date="${portfolio?.publishDate}"/></td>
            <td><g:formatDate format="dd/MM/yyyy" date="${portfolio?.expireDate}"/></td>
            <td class="actions ">
                <div class="btn-group">
                    <a class="btn btn-warning" title="Add Product" href="${g.createLink(controller: 'product',action: 'list',params: [id:portfolio?.id])}">
                        <i class="glyphicon glyphicon-plus"></i></a>
                    <a class="btn btn-warning"
                       href="${g.createLink(controller: 'portfolio', action: 'edit', params: [id: portfolio?.id])}"
                       title="Edit"><i class="glyphicon glyphicon-pencil"></i></a>
                    <a class="btn btn-danger delete" onclick="return confirm('Are you sure delete portfolio?')"
                       href="${g.createLink(controller: 'portfolio', action: 'delete', params: [id: portfolio?.id])}"
                       title="Delete"><i class="glyphicon glyphicon-remove"></i></a>
                </div>
            </td>
        </tr>

    </g:each>
</tbody>
</table>
</div>
</div>
</div>
</article>
    <div class="col-md-1"></div>
</div>
</div>
<!--/content end-->


<!-- JS -->





</body>
</html>