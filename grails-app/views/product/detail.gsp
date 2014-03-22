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
                    <li><a href="${g.createLink(uri: '/')}">Portfolios</a></li>
                    <li ><a href="${g.createLink(controller: 'product',action: 'index',params: [id:210])}">Products</a></li>
                    <li class="active"><a href="${g.createLink(controller: 'product',action: 'detail',params: [id:2108])}">Detail</a></li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>

<div class="serviceBlock">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="clearfix">
                    <i class="fa fa-compress"></i>
                    <div class="desc">

                        <h4>Fully Responsive</h4>
                        <p>Lorem ipsum dolor sit amet, Morem ipsum dolor sit amet consectetur adipisicing elit. </p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="clearfix">
                    <i class="fa fa-code"></i>
                    <div class="desc">

                        <h4>HTML5 + CSS3</h4>
                        <p>Lorem ipsum dolor sit amet, Morem ipsum dolor sit amet consectetur adipisicing elit. </p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="clearfix">
                    <i class="fa fa-thumbs-up"></i>
                    <div class="desc">

                        <h4>Launch Ready</h4>
                        <p>Lorem ipsum dolor sit amet, Morem ipsum dolor sit amet consectetur adipisicing elit. </p>
                    </div>
                </div>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-md-4">
                <div class="clearfix">
                    <i class="fa fa-desktop"></i>
                    <div class="desc">

                        <h4>Fully Responsive</h4>
                        <p>Lorem ipsum dolor sit amet, Morem ipsum dolor sit amet consectetur adipisicing elit. </p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="clearfix">
                    <i class="fa fa-html5"></i>
                    <div class="desc">

                        <h4>HTML5 + CSS3</h4>
                        <p>Lorem ipsum dolor sit amet, Morem ipsum dolor sit amet consectetur adipisicing elit. </p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="clearfix">
                    <i class="fa fa-css3"></i>
                    <div class="desc">

                        <h4>Launch Ready</h4>
                        <p>Lorem ipsum dolor sit amet, Morem ipsum dolor sit amet consectetur adipisicing elit. </p>
                    </div>
                </div>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-md-4">
                <div class="clearfix">
                    <i class="fa fa-github"></i>
                    <div class="desc">

                        <h4>Fully Responsive</h4>
                        <p>Lorem ipsum dolor sit amet, Morem ipsum dolor sit amet consectetur adipisicing elit. </p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="clearfix">
                    <i class="fa fa-android"></i>
                    <div class="desc">

                        <h4>HTML5 + CSS3</h4>
                        <p>Lorem ipsum dolor sit amet, Morem ipsum dolor sit amet consectetur adipisicing elit. </p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="clearfix">
                    <i class="fa fa-tablet"></i>
                    <div class="desc">

                        <h4>Launch Ready</h4>
                        <p>Lorem ipsum dolor sit amet, Morem ipsum dolor sit amet consectetur adipisicing elit. </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>







</div>
</div>
<!-- clientSection -->

</body>
</html>
