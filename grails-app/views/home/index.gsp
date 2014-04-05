<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Portfolio App - Home</title>

	</head>
	<body>
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
                        <sec:ifLoggedIn>
                            <li class="active"><a href="${g.createLink(controller: 'portfolio',action: 'list')}">Portfolios</a></li>
                        </sec:ifLoggedIn>
                        <sec:ifNotLoggedIn>
                            <li class="active"><a href="${g.createLink(uri: '/')}">Portfolios</a></li>
                        </sec:ifNotLoggedIn>

                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>
    </div>
    <!-- bodySection -->
    <div class="services">
        <div class="container">
            <div class="row">
            <g:each in="${portfolioList}" var="portfolio">
                <div class="col-md-3">
                    <a href="${g.createLink(controller: 'product',action: 'index',params: [id:portfolio.id])}"><ii:imageTag indirect-imagename="${portfolio.logoName}" title="${portfolio.name}" /></a>
                    <h3><a class="hover-effect" href="${g.createLink(controller: 'product',action: 'index',params: [id:portfolio.id])}">${portfolio.name}</a></h3>
                    <p>${portfolio.description}</p>
                </div>
            </g:each>
            <g:if test="${!portfolioList}">
                <p class="alert-warning">No portfolio available</p>
            </g:if>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h3 class="title">Reason to choose us</h3>
                <p>
                    On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire
                </p>
                <ul>
                    <li>Tick mark here Reason one</li>
                    <li>Tick mark here  Reason one</li>
                    <li>Tick mark here  Reason one</li>
                    <li>Reason one</li>
                    <li>Reason one</li>
                    <li>Reason one</li>
                </ul>
                <p>
                    On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire
                </p>
                <p>
                    On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire
                </p>
            </div>
            <div class="col-md-8">
                <div class="projectList">
                    <h3 class="title">Latest Prodects</h3>
                    <div class="media">
                        <a class="pull-left" href="#">
                            <img src="${resource(dir: 'images/custom', file: 'project1.jpg')}" class="projectImg" title="project one">
                        </a>
                        <div class="media-body">
                            <h4 class="media-heading"><a href="#">Projects One</a></h4>
                            <p>
                                On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire
                            </p>
                            <a class="pull-right" href="#">more details</a>
                        </div>
                    </div>

                    <div class="media">
                        <a class="pull-left" href="#">
                            <img src="${resource(dir: 'images/custom', file: 'project2.jpg')}" class="projectImg" title="project one">
                        </a>
                        <div class="media-body">
                            <h4 class="media-heading"><a href="#">Projects Two</a></h4>
                            <p>
                                On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire
                            </p>
                            <a class="pull-right" href="#">more details</a>
                        </div>
                    </div>
                    <div class="media">
                        <a class="pull-left" href="#">
                            <img src="${resource(dir: 'images/custom', file: 'project1.jpg')}" class="projectImg" title="project one">
                        </a>
                        <div class="media-body">
                            <h4 class="media-heading"><a href="#">Projects One</a></h4>
                            <p>
                                On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire
                            </p>
                            <a class="pull-right" href="#">more details</a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    </div>
    </div>
    <!-- clientSection -->
    <div class="container">
        <h3 class="title">Our Clients</h3>
        <div class="clientSection">
            <div class="row">
                <div class="col-md-2">
                    <a href="#"><img alt="" src="${resource(dir: 'images/custom', file: '14.png')}"></a>
                </div>
                <div class="col-md-2">
                    <a href="#"><img alt="" src="${resource(dir: 'images/custom', file: '35.png')}"></a>
                </div>
                <div class="col-md-2">
                    <a href="#"><img alt="" src="${resource(dir: 'images/custom', file: '1.png')}"></a>
                </div>
                <div class="col-md-2">
                    <a href="#"><img alt="" src="${resource(dir: 'images/custom', file: '2.png')}"></a>
                </div>
                <div class="col-md-2">
                    <a href="#"><img alt="" src="${resource(dir: 'images/custom', file: '3.png')}"></a>
                </div>
                <div class="col-md-2">
                    <a href="#"><img alt="" src="${resource(dir: 'images/custom', file: '4.png')}"></a>
                </div>
            </div>
        </div>
    </div>
	</body>
</html>
