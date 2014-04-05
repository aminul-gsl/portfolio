<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main">

    <title>User List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

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
                <a class="navbar-brand" href="${g.createLink(uri: '/')}"><img
                        src="${resource(dir: 'images/custom', file: 'logo.png')}" alt="Portfolio solution"/></a>
            </div>

            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right breadcrumb">
                    <li><a href="#">Admin User</a></li>
                    <li class="active"><a href="${g.createLink(controller: 'user', action: 'list')}">List</a></li>
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
                            <h2 style="display: inline-block; margin: 0;">User list</h2>
                            <g:if test="${flash.message}">
                                <h4 style="color:#4C8FBD;">${flash.message}</h4>
                            </g:if>
                        </div>

                        <div class="toolbar pull-right">
                            <div class="btn-group">

                                %{--add the create page--}%
                                <a href="${g.createLink(controller: 'user', action: 'create')}" class="btn btn-primary"
                                   title="Create User">
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

                            <g:each in="${userList}" var="user">

                                <tr>
                                    <td>${user?.username}</td>
                                    <td>${user?.firstName}</td>
                                    <td>${user?.lastName}</td>
                                    <td>${user?.email}</td>
                                    <td>${user?.telephone}</td>
                                    <td>${user?.lastLogin}</td>
                                    <td>${user?.enabled == true ? "Enabled" : "Disabled"}</td>
                                    <td class="actions ">
                                        <div class="btn-group">
                                            <a class="btn btn-warning"
                                               href="${g.createLink(controller: 'user', action: 'updateAdmin', params: [id: user?.id])}"
                                               title="Edit"><i class="fa fa-eye"></i></a>
                                            <a class="btn btn-danger delete" onclick="return confirm('Are you sure delete user?')"
                                               href="${g.createLink(controller: 'user', action: 'delete', params: [id: user?.id])}"
                                               title="Delete"><i class="fa fa-trash-o"></i></a>
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