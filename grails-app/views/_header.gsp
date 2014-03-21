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
                <ul class="nav navbar-nav">

                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="${g.createLink(uri: '/')}">Home</a></li>

                    <sec:access controller='user' action='profile'>
                        <li><a href="${g.createLink(controller: 'user',action: 'profile')}">My Profile</a></li>
                    </sec:access>
                    <sec:access controller='user' action='list'>
                        <li><a href="${g.createLink(controller: 'user',action: 'create')}">Admin User</a></li>
                    </sec:access>

                    <li><a href="#contact">Contact</a></li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>