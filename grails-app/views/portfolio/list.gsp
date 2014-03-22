<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <meta name="layout" content="main">

    <title>Portfolio List</title>
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
    </div>
    <div class="toolbar pull-right">
        <div class="btn-group">

            %{--add the create page--}%
            <a href="${g.createLink(controller: 'portfolio',action: 'showCreateForm')}" class="btn btn-primary">
                <i class="fa fa-plus"></i>
            </a>
            %{--add the list page--}%

            <a href="registration.gsp" data-toggle="collapse" class="accordion-toggle minimize-box btn btn-primary">
                <i class="fa fa-chevron-up"></i>
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
    <th>Expirations Date</th>
    <th>Action</th>
</tr>
</thead>
<tbody>

<tr>
    <td>Azam Saleh Moh. Eusof</td>
    <td>Executive </td>
    <td>This is Azam saleh mohammad ehaya . he is person of executive</td>
    <td>Active</td>
    <td>12/12/2012</td>
    <td>12/12/2012</td>
    <td class="actions ">
        <div class="btn-group">
            <a class="btn btn-warning" title="Download Resume" href="http://localhost/resumemgt/assets/resume/12/20140213_080820_12_f.docx" target="_blank">
                <i class="fa fa-download"></i>
            </a>
            <a class="btn btn-warning" href="http://localhost/resumemgt/Resumes/view/15"><i class="fa fa-eye"></i></a>
            <a class="btn btn-danger delete" href="http://localhost/resumemgt/Resumes/delete/15"><i class="fa fa-trash-o"></i></a>
        </div>
    </td>
</tr>

<tr>
    <td>Eakub mia</td>
    <td>Executive </td>
    <td>This is Azam saleh mohammad ehaya . he is person of executive</td>
    <td>Active</td>
    <td>12/12/2012</td>
    <td>12/12/2012</td>
    <td class="actions ">
        <div class="btn-group">
            <a class="btn btn-warning" title="Download Resume" href="http://localhost/resumemgt/assets/resume/12/20140213_080820_12_f.docx" target="_blank">
                <i class="fa fa-download"></i>
            </a>
            <a class="btn btn-warning" href="http://localhost/resumemgt/Resumes/view/15"><i class="fa fa-eye"></i></a>
            <a class="btn btn-danger delete" href="http://localhost/resumemgt/Resumes/delete/15"><i class="fa fa-trash-o"></i></a>
        </div>
    </td>
</tr>

<tr>
    <td>Shishir</td>
    <td>It </td>
    <td>This is Azam saleh mohammad ehaya . he is person of executive</td>
    <td>Active</td>
    <td>12/12/2012</td>
    <td>12/12/2012</td>
    <td class="actions ">
        <div class="btn-group">
            <a class="btn btn-warning" title="Download Resume" href="http://localhost/resumemgt/assets/resume/12/20140213_080820_12_f.docx" target="_blank">
                <i class="fa fa-download"></i>
            </a>
            <a class="btn btn-warning" href="http://localhost/resumemgt/Resumes/view/15"><i class="fa fa-eye"></i></a>
            <a class="btn btn-danger delete" href="http://localhost/resumemgt/Resumes/delete/15"><i class="fa fa-trash-o"></i></a>
        </div>
    </td>
</tr>

<tr>
    <td>Nor Islam</td>
    <td>Tech </td>
    <td>This is Azam saleh mohammad ehaya . he is person of executive</td>
    <td>Active</td>
    <td>12/12/2012</td>
    <td>12/12/2012</td>
    <td class="actions ">
        <div class="btn-group">
            <a class="btn btn-warning" title="Download Resume" href="http://localhost/resumemgt/assets/resume/12/20140213_080820_12_f.docx" target="_blank">
                <i class="fa fa-download"></i>
            </a>
            <a class="btn btn-warning" href="http://localhost/resumemgt/Resumes/view/15"><i class="fa fa-eye"></i></a>
            <a class="btn btn-danger delete" href="http://localhost/resumemgt/Resumes/delete/15"><i class="fa fa-trash-o"></i></a>
        </div>
    </td>
</tr>

<tr>
    <td>Aminul islam</td>
    <td>IT </td>
    <td>This is Aminul islam . he is person of executive</td>
    <td>Active</td>
    <td>12/12/2012</td>
    <td>12/12/2012</td>
    <td class="actions ">
        <div class="btn-group">
            <a class="btn btn-warning" title="Download Resume" href="http://localhost/resumemgt/assets/resume/12/20140213_080820_12_f.docx" target="_blank">
                <i class="fa fa-download"></i>
            </a>
            <a class="btn btn-warning" href="http://localhost/resumemgt/Resumes/view/15"><i class="fa fa-eye"></i></a>
            <a class="btn btn-danger delete" href="http://localhost/resumemgt/Resumes/delete/15"><i class="fa fa-trash-o"></i></a>
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
<!--/content end-->


<!-- JS -->



<script type="text/javascript" src="../js/datatable.js"></script>


</body>
</html>