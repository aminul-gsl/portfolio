<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="general"/>
    <title>Portfolio App - Product detail</title>

</head>

<body>

<!-- bodySection -->
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
                    <li><a href="${g.createLink(uri: '/')}">Portfolio</a></li>
                    <li ><a href="${g.createLink(controller: 'product',action: 'index',params: [id:product?.portfolio?.id])}">Products</a></li>
                    <li class="active"><a href="${g.createLink(controller: 'product',action: 'detail',params: [id:product?.id])}">Detail</a></li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>

<div class="serviceBlock">
    <div class="container">
        <div class="row">
            <h3><a href="#">${product.name} Images</a></h3>
            <g:each in="${imageList}" var="image">
                    <div class="col-md-3">
                        <ii:imageTag indirect-imagename="${image.imageUrl}" title="${image.name}" />
                        <h3><a class="hover-effect" href="#">${image.name}</a></h3>
                        <p>${image.description}</p>
                    </div>
            </g:each>
        </div>
        <hr/>
        <div class="row">
            <h3><a href="#">${product.name} attachments</a></h3>
            <g:each in="${attachmentList}" var="attachment">

                <div class="col-md-4">
                    <div class="clearfix">
                        <a href="${g.createLink(controller: 'product',action: 'download',params: [id:attachment.id])}" title="Download"> <i class="fa fa-download"></i></a>
                        <div class="desc">

                            <h4>${attachment?.name}</h4>
                            <p>${attachment?.description} </p>
                        </div>
                    </div>
                </div>
            </g:each>
        </div>


    </div>
</div>







</div>
</div>
<!-- clientSection -->

</body>
</html>
