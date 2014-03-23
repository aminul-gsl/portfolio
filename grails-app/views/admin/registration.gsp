<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <meta name="layout" content="main">

    <title>User List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

</head>
<!-- HTML code from Bootply.com editor -->
<body>
<!-- Wrap all page content here -->
<!-- Fixed navbar -->


<!-- Begin page content -->
<div class="container">
<div class="row">

   %{-- <aside class="col-md-2 id="sidebar" role="navigation">
    <div id="aside-menu" class="list-group">
        <a href="pilgrim-list.html" class="list-group-item active">Pilgrim <span class="pull-right"><i class="fa fa-angle-right fa-lg"></i></a>
        <a href="agency-list.html" class="list-group-item">Agency <span class="pull-right"><i class="fa fa-angle-right fa-lg"></i></a>
        <a href="moyallem-list.html" class="list-group-item">Moyallem <span class="pull-right"><i class="fa fa-angle-right fa-lg"></i></a>
        <a href="house-list.html" class="list-group-item">House <span class="pull-right"><i class="fa fa-angle-right fa-lg"></i></a>
        <a href="javascript:void(0);" class="list-group-item">Movement <span class="pull-right"><i class="fa fa-angle-right fa-lg"></i></a>
        <a href="javascript:void(0);" class="list-group-item">Visa Lodgement <span class="pull-right"><i class="fa fa-angle-right fa-lg"></i></a>
        <a href="javascript:void(0);" class="list-group-item">Notice <span class="pull-right"><i class="fa fa-angle-right fa-lg"></i></a>
        <a href="javascript:void(0);" class="list-group-item">SMS <span class="pull-right"><i class="fa fa-angle-right fa-lg"></i></a>
        <a href="javascript:void(0);" class="list-group-item">Report <span class="pull-right"><i class="fa fa-angle-right fa-lg"></i></a>
        <a href="javascript:void(0);" class="list-group-item">Settings <span class="pull-right"><i class="fa fa-angle-right fa-lg"></i></a>
    </div>
</aside>--}%
    <div class="col-md-1"></div>
<article class="col-md-12">
<div id="main-content">
<div class="panel panel-default">
<div class="panel-heading clearfix">
    <div class="icons pull-left">
        <h2 style="display: inline-block; margin: 0;">User list</h2>
    </div>
    <div class="toolbar pull-right">
        <div class="btn-group">

            %{--add the create page--}%
            <a href="${g.createLink(controller: 'user',action: 'showRegistration')}" class="btn btn-primary">
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
    <th>User Name</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Email Address</th>
    <th>Telephone/Mobile</th>
    <th>Last Login</th>
    <th>Status</th>
    <th>Action</th>
</tr>
</thead>
<tbody>

<tr>
    <td>KMSMC</td>
    <td>Mr. </td>
    <td>abdul matin Ali neoaj</td>
    <td>abdulMatinMoKabir@gmail.com</td>
    <td>88001733514242</td>
    <td>12/12/2012:5.30</td>
    <td>Enabled</td>
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
    <td>KMSMC</td>
    <td>Md. </td>
    <td>Kabir</td>
    <td>abdulla al manum@gmail.com</td>
    <td>88001733514242</td>
    <td>12/12/2012:5.30</td>
    <td>Enabled</td>
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
    <td>KMSMC</td>
    <td>Mr. </td>
    <td>abdul matin</td>
    <td>abdulMatinMoKabir@gmail.com</td>
    <td>88001733514242</td>
    <td>12/12/2012:5.30</td>
    <td>Enabled</td>
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
    <td>KMSMC</td>
    <td>Md. </td>
    <td>Kabir</td>
    <td>abdulla al manum@gmail.com</td>
    <td>88001733514242</td>
    <td>12/12/2012:5.30</td>
    <td>Enabled</td>
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
    <td>KMSMC</td>
    <td>Mr. </td>
    <td>abdul matin</td>
    <td>abdulMatinMoKabir@gmail.com</td>
    <td>88001733514242</td>
    <td>12/12/2012:5.30</td>
    <td>Enabled</td>
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
    <td>KMSMC</td>
    <td>Md. </td>
    <td>Kabir</td>
    <td>abdulla al manum@gmail.com</td>
    <td>88001733514242</td>
    <td>12/12/2012:5.30</td>
    <td>Enabled</td>
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
    <td>KMSMC</td>
    <td>Mr. </td>
    <td>abdul matin</td>
    <td>abdulMatinMoKabir@gmail.com</td>
    <td>88001733514242</td>
    <td>12/12/2012:5.30</td>
    <td>Enabled</td>
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
    <td>KMSMC</td>
    <td>Md. </td>
    <td>Khalil</td>
    <td>mkubd212@gmail.com</td>
    <td>090909090</td>
    <td>12/12/2012:5.30</td>
    <td>Enabled</td>
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





</body>
</html>