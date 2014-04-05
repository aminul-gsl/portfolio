<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <title>Create Product  | Admin</title>
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
                    <li><a href="${g.createLink(controller: 'product', action: 'list', params: [id: portfolio.id])}">Product</a>
                    </li>
                    <li class="active"><a
                            href="${g.createLink(controller: 'product', action: 'create', params: [id: portfolio.id])}">Create</a>
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
                        <h2 style="display: inline-block; margin: 0;">Add Product</h2>
                        <g:hasErrors bean="${product}">
                            <div class='alert-success '>
                                <ul>
                                    <g:eachError var="err" bean="${product}">
                                        <li>${err}</li>
                                    </g:eachError>
                                </ul>
                            </div>
                        </g:hasErrors>
                    </div>

                    <div class="toolbar pull-right">
                        <div class="btn-group">
                            <a href="${g.createLink(controller: 'product', action: 'list', params: [id: portfolio.id])}"
                               class="btn btn-primary">
                                <i class="fa fa-list"></i>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="panel-body">

                    <div class="row">
                        <div class="col-md-8">
                            <form method="post" id="createProduct"
                                  class="form-horizontal"
                                  action='${resource(dir: 'product', file: 'save')}' enctype="multipart/form-data">
                                <g:hiddenField name="portfolio" value="${portfolio?.id}"/>
                                <g:hiddenField name="id" value="${product?.id}"/>
                                <fieldset>
                                <div class="form-group required ${hasErrors(bean:product,field:'name','error')}">
                                    <label for="name" class="col-md-3 control-label">Name</label>

                                    <div class="col-md-9 required">
                                        <g:textField value="${product?.name}" name="name" class="form-control" id="name"
                                                     placeholder="Please enter Name"/>
                                    </div>
                                </div>
                                <div class="form-group required ${hasErrors(bean:product,field:'description','error')}">
                                    <label class="col-md-3 control-label" for="description">Description</label>

                                    <div class="col-md-9 required">
                                        <g:textArea value="${product?.description}" class="form-control"
                                                    name="description" id="description"
                                                    placeholder="Please Enter Description"/>
                                    </div>
                                </div>
                                <div class="form-group required ${hasErrors(bean:product,field:'price','error')}">
                                    <label class="col-md-3 control-label" for="price">Price</label>

                                    <div class="col-md-9 required">
                                        <input type="number" step="any" value="${product?.price}"  min="0" name="price" class="form-control" id="price" placeholder="Please enter price" />
                                    </div>
                                </div>

                                    <div class="form-group">

                                    <label class="col-md-3 control-label" for="product_logo">Logo</label>
                                    <g:if test="${product?.id}">
                                        <div class="col-md-9 required">
                                            <input type="file" name="product_logo" class="productLogo" id="product_logo"/>
                                        </div>
                                    </g:if>
                                    <g:else>
                                        <div class="col-md-9">
                                            <input type="file" class="productLogo required" name="product_logo" />
                                        </div>
                                    </g:else>

                                </div>

                                <div class="form-group">
                                    <label class="col-md-3 control-label">&nbsp;</label>

                                    <div class="col-md-9">
                                        <input type="reset" value="Reset" class="btn btn-primary"/>
                                        <input type="submit" value="${product?.id ? 'Update' : 'Submit'}"
                                               class="btn btn-primary"/>
                                    </div>
                                </div>
                                </fieldset>
                            </form>
                        </div>

                        <div class="col-sm-4">
                            <g:if test="${product?.id}">
                                <ii:imageTag id="uploadedLogo" indirect-imagename="${product?.logoName}"
                                             title="project one"/>
                            </g:if>
                            <g:else>
                                <img id="uploadedLogo" src="#" alt="Product logo"/>
                            </g:else>

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
        $('#createProduct').validate({
            errorElement: 'span',
            rules: {

                description: {
                    required: true
                },
                 name: {
                    required: true
                },
                price: {
                    required: true
                }
            },
            messages: {

                description: {
                    required: "Enter Product Description"
                },
                name: {
                    required: "Enter Product Name"
                },
                product_logo: {
                    required: "Select logo"
                },
                price: {
                    required: "Price required"
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