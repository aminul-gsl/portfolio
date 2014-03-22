<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="general"/>
    <title>Portfolio App - Home</title>

</head>

<body>

<!-- bodySection -->
<div class="topHeaderSection">
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
                <ul class="nav navbar-nav navbar-right">
                       <li class="active"><a href="${g.createLink(uri: '/')}">Portfolios</a></li>
                    <li><a href="${g.createLink(controller: 'product',action: 'index',params: [id:210])}"> Products</a></li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>

<div class="bodySection">
    <div class="container">
        <div class="ourServices">
            <div class="row">
                <div class="col-md-3">
                    <div class="cntr">
                        <img src="${resource(dir: 'images/custom', file: 'Office.png')}" class="img-circle"
                             title="project one">

                        <h3><a href="${g.createLink(controller: 'product',action: 'detail',params: [id:2105])}">Responsive Design</a></h3>
                    </div>

                    <p>
                        At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident
                        <br><br><a href="${g.createLink(controller: 'product',action: 'detail',params: [id:2105])}">more details</a>
                    </p>
                </div>

                <div class="col-md-3">
                    <div class="cntr">
                        <img src="${resource(dir: 'images/custom', file: 'Office.png')}" class="img-circle"
                             title="project one">

                        <h3><a href="${g.createLink(controller: 'product',action: 'detail',params: [id:2105])}">CSS & HTML5</a></h3>
                    </div>

                    <p>
                        At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident
                        <br><br><a href="${g.createLink(controller: 'product',action: 'detail',params: [id:2105])}">more details</a>
                    </p>
                </div>

                <div class="col-md-3">
                    <div class="cntr">
                        <img src="${resource(dir: 'images/custom', file: 'Office.png')}" class="img-circle"
                             title="project one">

                        <h3><a href="${g.createLink(controller: 'product',action: 'detail',params: [id:2105])}">Clean</a></h3>
                    </div>

                    <p>
                        At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident
                        <br><br><a href="${g.createLink(controller: 'product',action: 'detail',params: [id:2105])}">more details</a>
                    </p>
                </div>

                <div class="col-md-3">
                    <div class="cntr">
                        <img src="${resource(dir: 'images/custom', file: 'Office.png')}" class="img-circle"
                             title="project one">

                        <h3><a href="${g.createLink(controller: 'product',action: 'detail',params: [id:2105])}">SEO Frendly</a></h3>
                    </div>

                    <p>
                        At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident
                        <br><br><a href="${g.createLink(controller: 'product',action: 'detail',params: [id:2105])}">more details</a>
                    </p>
                </div>

                <div class="col-md-3">
                    <div class="cntr">
                        <img src="${resource(dir: 'images/custom', file: 'Office.png')}" class="img-circle"
                             title="project one">

                        <h3><a href="${g.createLink(controller: 'product',action: 'detail',params: [id:2105])}">SEO Frendly</a></h3>
                    </div>

                    <p>
                        At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident
                        <br><br><a href="${g.createLink(controller: 'product',action: 'detail',params: [id:2105])}">more details</a>
                    </p>
                </div>

                <div class="col-md-3">
                    <div class="cntr">
                        <img src="${resource(dir: 'images/custom', file: 'Office.png')}" class="img-circle"
                             title="project one">

                        <h3><a href="${g.createLink(controller: 'product',action: 'detail',params: [id:2105])}">SEO Frendly</a></h3>
                    </div>

                    <p>
                        At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident
                        <br><br><a href="${g.createLink(controller: 'product',action: 'detail',params: [id:2105])}">more details</a>
                    </p>
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
