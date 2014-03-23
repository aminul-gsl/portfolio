<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <meta name="layout" content="main">

    <title>User Profile</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

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
                    <li ><a href="#">User</a></li>
                    <li class="active"><a href="${g.createLink(controller: 'user',action: 'list')}">My Profile</a></li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>
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
                            <h2 style="display: inline-block; margin: 0;">My Profile</h2>
                            <g:if test="${flash.message}">
                                <h4 style="color:#4C8FBD;"> ${flash.message}</h4>
                            </g:if>
                        </div>
                        <div class="toolbar pull-right">
                            <div class="btn-group">

                                %{--add the create page--}%
                                <a href="${g.createLink(controller: 'user',action: 'edit')}" class="btn btn-primary" title="Edit profile">
                                    <i class="fa fa-plus"></i>
                                </a>
                                %{--add the list page--}%

                            </div>
                        </div>
                    </div>
                    <div id="data" class="panel-body">
                        <p>User Name: ${user?.username}</p>
                        <p>First Name: ${user?.firstName}</p>
                        <p>Last Name: ${user?.lastName}</p>
                        <p>Email: ${user?.email}</p>
                        <p>Password: ******</p>
                        <p>Last login: ${user?.lastLogin}</p>
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