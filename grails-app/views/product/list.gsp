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
                    <li ><a href="#">Portfolio</a></li>
                    <li ><a href="#">Product</a></li>
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
        <h2 style="display: inline-block; margin: 0;">Product list</h2>
    </div>
    <div class="toolbar pull-right">
        <div class="btn-group">

            %{--add the create page--}%
            <a href="${g.createLink(controller: 'product',action: 'create')}" class="btn btn-primary">
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

<tr>
    <td>Online Document paper</td>
    <td>This is paper that is contains information a company.  </td>
    <td>100.00</td>
    <td class="actions ">
        <div class="btn-group">
            <a class="btn btn-warning" title="Add Attachment" href="#">
                <i class="fa fa-download"></i>
            </a>
            <a class="btn btn-warning" href="#"><i class="fa fa-eye"></i></a>
            <a class="btn btn-danger delete" href="#"><i class="fa fa-trash-o"></i></a>
        </div>
    </td>
</tr>

<tr>
    <td>Offline Document paper</td>
    <td>This is paper that is contains information a company. in offlije </td>
    <td>120.00</td>
    <td class="actions ">
        <div class="btn-group">
            <a class="btn btn-warning" title="Add Attachment" href="#">
                <i class="fa fa-download"></i>
            </a>
            <a class="btn btn-warning" href="#"><i class="fa fa-eye"></i></a>
            <a class="btn btn-danger delete" href="#"><i class="fa fa-trash-o"></i></a>
        </div>
    </td>
</tr>

<tr>
    <td>Online Document paper</td>
    <td>This is paper that is contains information a company.  </td>
    <td>100.00</td>
    <td class="actions ">
        <div class="btn-group">
            <a class="btn btn-warning" title="Add Attachment" href="#">
                <i class="fa fa-download"></i>
            </a>
            <a class="btn btn-warning" href="#"><i class="fa fa-eye"></i></a>
            <a class="btn btn-danger delete" href="#"><i class="fa fa-trash-o"></i></a>
        </div>
    </td>
</tr>

<tr>
    <td>Online Document paper</td>
    <td>This is paper that is contains information a company.  </td>
    <td>100.00</td>
    <td class="actions ">
        <div class="btn-group">
            <a class="btn btn-warning" title="Add Attachment" href="#">
                <i class="fa fa-download"></i>
            </a>
            <a class="btn btn-warning" href="#"><i class="fa fa-eye"></i></a>
            <a class="btn btn-danger delete" href="#"><i class="fa fa-trash-o"></i></a>
        </div>
    </td>
</tr>

<tr>
    <td>Online Document paper</td>
    <td>This is paper that is contains information a company.  </td>
    <td>100.00</td>
    <td class="actions ">
        <div class="btn-group">
            <a class="btn btn-warning" title="Add Attachment" href="#">
                <i class="fa fa-download"></i>
            </a>
            <a class="btn btn-warning" href="#"><i class="fa fa-eye"></i></a>
            <a class="btn btn-danger delete" href="#"><i class="fa fa-trash-o"></i></a>
        </div>
    </td>
</tr>

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