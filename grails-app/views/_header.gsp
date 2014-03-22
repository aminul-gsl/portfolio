<div class="top">
    <div class="container">
        <div class="row-fluid">
            <ul class="phone-mail">
                <sec:ifLoggedIn>
                    <li><i class="fa fa-envelope"></i><span>Wellcome <sec:loggedInUserInfo field="username"/></span></li>
                </sec:ifLoggedIn>
                <sec:ifNotLoggedIn>
                    <li><i class="fa fa-envelope"></i><span>Wellcome Guest</span></li>
                </sec:ifNotLoggedIn>
            </ul>
            <ul class="loginbar">
                <li><a href="#" class="login-btn">Help</a></li>
                <li class="devider">&nbsp;</li>
                <sec:ifLoggedIn>
                    <sec:access controller='user' action='profile'>
                        <li><a href="${g.createLink(controller: 'user',action: 'profile')}">My Profile</a></li>
                        <li class="devider">&nbsp;</li>
                    </sec:access>
                    <sec:access controller='user' action='list'>
                        <li><a href="${g.createLink(controller: 'user',action: 'list')}">Admin User</a></li>
                        <li class="devider">&nbsp;</li>
                    </sec:access>
                    <sec:access controller='portfolio' action='list'>
                        <li><a href="${g.createLink(controller: 'portfolio',action: 'list')}">Portfolio</a></li>
                        <li class="devider">&nbsp;</li>
                    </sec:access>
                    <li><a href="${g.createLink(controller: 'logout')}" class="login-btn">Log out</a></li>
                </sec:ifLoggedIn>
                <sec:ifNotLoggedIn>
                    <li><a href="${g.createLink(controller: 'login')}" class="login-btn">Login</a></li>
                </sec:ifNotLoggedIn>
            </ul>
        </div>
    </div>
</div>

