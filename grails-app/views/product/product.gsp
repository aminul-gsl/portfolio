<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="general"/>
    <title>Portfolio App - Home</title>

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
                       <li ><a href="${g.createLink(uri: '/')}">Portfolios</a></li>
                    <li class="active"><a href="${g.createLink(controller: 'product',action: 'index',params: [id:portfolio?.id])}"> Products</a></li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>

<div class="bodySection">
    <div class="container">
        <div class="ourServices">
            <div class="row">
                <g:each in="${productList}" var="product">
                    <div class="col-md-3">
                        <div class="cntr">
                            <a href="${g.createLink(controller: 'product',action: 'detail',params: [id:product.id])}"><ii:imageTag indirect-imagename="${product.logoName}" title="${product.name}" class="img-circle"/></a>
                                 <h3><a href="${g.createLink(controller: 'product',action: 'detail',params: [id:product.id])}">${product.name}</a></h3>
                        </div>

                        <p>
                            ${product.description}
                            <br><a href="${g.createLink(controller: 'product',action: 'detail',params: [id:product.id])}">more details</a>
                        </p>
                    </div>
                </g:each>
                <g:if test="${!productList}">
                    <p class="alert-warning">No product available for this portfolio</p>
                </g:if>
            </div>
        </div>
    </div>
</div>







</div>
</div>
<!-- clientSection -->

</body>
</html>
