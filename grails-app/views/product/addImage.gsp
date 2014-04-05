<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <title>Add Image  | Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
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
                <a class="navbar-brand" href="${g.createLink(uri: '/')}"><img
                        src="${resource(dir: 'images/custom', file: 'logo.png')}" alt="Portfolio solution"/></a>
            </div>

            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right breadcrumb">
                    <li><a href="${g.createLink(controller: 'portfolio', action: 'list')}">Portfolio</a></li>
                    <li><a href="${g.createLink(controller: 'product', action: 'list', params: [id: product?.portfolio?.id])}">Product</a>
                    </li>
                    <li class="active"><a
                            href="${g.createLink(controller: 'product', action: 'image', params: [id: product?.id])}">Image</a>
                    </li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>

<!-- Begin page content -->
<div class="container">
    <div class="row">

        <div id="main-content">
            <div class="panel panel-default">
                <div class="panel-heading clearfix">
                    <div class="icons pull-left">
                        <h2 style="display: inline-block; margin: 0;">Add Image</h2>
                        <g:hasErrors bean="${image}">
                            <div class='alert-success '>
                                <ul>
                                    <g:eachError var="err" bean="${image}">
                                        <li>${err}</li>
                                    </g:eachError>
                                </ul>
                            </div>
                        </g:hasErrors>
                        <g:if test="${flash.message}">
                            <h4 style="color:#4C8FBD;">${flash.message}</h4>
                        </g:if>
                    </div>

                    %{--<div class="toolbar pull-right">
                        <div class="btn-group">
                            <a href="${g.createLink(controller: 'product', action: 'list', params: [id: product?.portfolio?.id])}"
                               class="btn btn-primary">
                                <i class="fa fa-list"></i>
                            </a>
                        </div>
                    </div>--}%
                </div>

                <div class="panel-body">

                    <div class="row">
                        <div class="col-md-5">
                            <form method="post" id="createAttachment"
                                  class="form-horizontal"
                                  action='${resource(dir: 'product', file: 'saveImage')}' enctype="multipart/form-data">
                                <g:hiddenField name="productId" value="${product?.id}"/>
                                <g:hiddenField name="id" value="${image?.id}"/>
                                <fieldset>
                                    <div class="form-group required ${hasErrors(bean:image,field:'name','error')}">
                                        <label for="name" class="col-md-3 control-label">Name</label>
                                        <div class="col-md-9 required">
                                            <g:textField value="${image?.name}" name="name" class="form-control" id="name"
                                                         placeholder="Please enter Name"/>
                                        </div>
                                    </div>
                                    <div class="form-group required ${hasErrors(bean:image,field:'description','error')}">
                                        <label class="col-md-3 control-label" for="description">Description</label>

                                        <div class="col-md-9 required">
                                            <g:textArea value="${image?.description}" class="form-control"
                                                        name="description" id="description"
                                                        placeholder="Please Enter Description"/>
                                        </div>
                                    </div>
                                    <g:if test="${image?.id}">
                                        <div class="form-group">
                                            <label class="col-md-3 control-label" for="product_logo">Change Image</label>
                                            <div class="col-md-9 required">
                                                ${image?.originalName} <input type="file" name="attachment" class="productLogo"/>
                                            </div>
                                        </div>
                                    </g:if>
                                    <g:else>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label" for="product_logo">Attachment</label>
                                            <div class="col-md-9 required">
                                                <input type="file" class="productLogo required" name="attachment" id="product_logo" />
                                            </div>
                                        </div>
                                    </g:else>

                                    <div class="form-group">
                                        <label class="col-md-3 control-label">&nbsp;</label>

                                        <div class="col-md-9">
                                            <input type="reset" value="Reset" class="btn btn-primary"/>
                                            <input type="submit" value="${image?.id ? 'Update' : 'Submit'}"
                                                   class="btn btn-primary"/>
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>

                        <div class="col-sm-7">
                            <g:if test="${image?.id}">
                                <ii:imageTag id="uploadedLogo" indirect-imagename="${image?.imageUrl}"
                                             title="${image?.name}"/>
                            </g:if>
                            <g:else>
                                <img id="uploadedLogo" src="#" alt="Image"/>
                            </g:else>
                            <g:if test="${imageList}">
                                <table class="table table-bordered table-striped table-hover table-condensed">
                                    <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>File Name</th>
                                        <th>description</th>
                                        <th>Type</th>
                                        <th>Size</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <g:each in="${imageList}" var="image">
                                        <tr>
                                            <td>${image.name}</td>
                                            <td>${image.originalName}</td>
                                            <td>${image.description} </td>
                                            <td>${image.type} </td>
                                            <td>${image.size} </td>
                                            <td class="actions ">
                                                <div class="btn-group">
                                                    <a class="btn btn-warning"
                                                       href="${g.createLink(controller: 'product', action: 'editImage', params: [id: image?.id])}"
                                                       title="Edit"><i class="glyphicon glyphicon-pencil"></i></a>
                                                    <a class="btn btn-danger delete" onclick="return confirm('Are you sure delete Image?')"
                                                       href="${g.createLink(controller: 'product', action: 'deleteImage', params: [id: image?.id])}"
                                                       title="Delete"><i class="glyphicon glyphicon-remove"></i></a>
                                                </div>
                                            </td>
                                        </tr>
                                    </g:each>
                                    </tbody>
                                </table>
                            </g:if>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<script>
    jQuery(function ($) {
        $('#createAttachment').validate({
            errorElement: 'span',
            rules: {

                description: {
                    required: true
                },
                name: {
                    required: true
                }
            },
            messages: {

                description: {
                    required: "Enter Description"
                },
                name: {
                    required: "Enter Name"
                },
                product_logo: {
                    required: "Image required"
                }

            }
        });
        $(".productLogo").change(function(){
         readURL(this);
         });

    });
     function readURL(input) {

     if (input.files && input.files[0]) {
     var reader = new FileReader();

     reader.onload = function (e) {
     $('#uploadedLogo').attr('src', e.target.result);
     }

     reader.readAsDataURL(input.files[0]);
     }
     }
</script>
</body>
</html>