<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <meta name="layout" content="main">

    <title>product List</title>
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
                    <li><a href="${g.createLink(controller: 'portfolio', action: 'list')}">Portfolio</a></li>
                    <li><a href="${g.createLink(controller: 'product', action: 'list', params: [id: portfolio?.id])}">Product</a>
                    </li>
                    <li class="active"><a href="${g.createLink(controller: 'product', action: 'list', params: [id: portfolio?.id])}">List</a></li>
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
        <h2 style="display: inline-block; margin: 0;">Product list of <span style="color: green;">${portfolio.name}</span></h2>
        <g:if test="${flash.message}">
            <h4 style="color:#4C8FBD;">${flash.message}</h4>
        </g:if>
    </div>
    <div class="toolbar pull-right">
        <div class="btn-group">

            %{--add the create page--}%
            <a href="${g.createLink(controller: 'product',action: 'create',params: [id:portfolio.id])}" class="btn btn-primary">
                <i class="fa fa-plus"></i>
            </a>
            %{--add the list page--}%

        </div>
    </div>
</div>
<div id="data" class="panel-body">
<table class="dataListTable table table-bordered table-striped table-hover table-condensed">
<thead>
<tr>
    <th>Product Name</th>
    <th>description</th>
    <th>Price</th>
    <th>Action</th>
</tr>
</thead>
<tbody>
<g:each in="${productList}" var="product">
    <tr>
        <td>${product.name}</td>
        <td>${product.description} </td>
        <td><g:formatNumber number="${product.price}" type="number"
                            maxFractionDigits="2" roundingMode="HALF_DOWN" /></td>
        <td class="actions ">
            <div class="btn-group">
                <a class="btn btn-warning" title="Add Attachment" href="${g.createLink(controller: 'product',action: 'attachment',params: [id:product?.id])}">
                    <i class="glyphicon glyphicon-plus"></i>
                </a>
                <a class="btn btn-warning" title="Add Image" href="${g.createLink(controller: 'product',action: 'image',params: [id:product?.id])}">
                    <i class="glyphicon glyphicon-plus"></i>
                </a>
                <a class="btn btn-warning"
                   href="${g.createLink(controller: 'product', action: 'edit', params: [id: product?.id])}"
                   title="Edit"><i class="glyphicon glyphicon-pencil"></i></a>
                <a class="btn btn-danger delete" onclick="return confirm('Are you sure delete product?')"
                   href="${g.createLink(controller: 'product', action: 'delete', params: [id: product?.id])}"
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




</body>
</html>