<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <title>Portfolio Managment | Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="layout" content="main">

    <link href="css/hajj-theme.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="css/application.css" />

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
                <a class="navbar-brand" href="${g.createLink(uri: '/')}"><img src="${resource(dir: 'images/custom', file: 'logo.png')}" alt="Portfolio solution" /></a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right breadcrumb">
                    <li ><a href="#">Portfolio</a></li>
                    <li class="active"><a href="${g.createLink(controller: 'portfolio',action: 'create')}">Create</a></li>
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
        <h2 style="display: inline-block; margin: 0;">Add Portfolio</h2>
    </div>
    <div class="toolbar pull-right">
        <div class="btn-group">
            <a href="${g.createLink(controller: 'portfolio',action: 'list')}" class="btn btn-primary">
                <i class="fa fa-list"></i>
            </a>
          </div>
    </div>
</div>
<div id="data" class="panel-body">

<div class="Resumes form">
<form  method="post" accept-charset="utf-8" id="" class="form-horizontal" action='${resource(dir:'', file:'')}'>


        <div style="display:none;">
    <input type="hidden" value="POST" name="_method">
</div>
<fieldset>
<div class="form-group required">
    <label class="col-md-2 control-label" for="post_id">Name</label>
    <div class="col-md-8 required">
        <input name="name" class="form-control" id="name" placeholder="Please enter Portfolio Name"/>
    </div>
</div>
    <div class="form-group required">
        <label for="portfolioType" class="col-md-2 control-label">Portfolio Type</label>
        <div class="col-md-8">
            <select name="portfolioType" class="form-control selectpicker" id="portfolioType" placeholder="Please select Portfolio Type" data-size="10" data-live-search="true"/>
            <option value="0">IT</option>
            <option value="1">Catering</option>
            <option value="2">Trading</option>
        </select>
        </div>
    </div>

    <div class="form-group required">
        <label class="col-md-2 control-label" for="description">Description</label>
        <div class="col-md-8 required">
            <textarea class="form-control" name="description" id="description" ></textarea>
        </div>
    </div>

    <div class="x" style="padding-left: 115px">
        <label>Scope</label> <g:checkBox name="scope" id="scope" value="true"/>
    </div>

    <div class="form-group">
        <label class="col-md-2 control-label" for="publishDate">Publish Date</label>
        <div class="col-md-2">
            <select name="publishDate" class="form-control selectpicker" id="publishDate" placeholder="Please select a day" data-size="10" data-live-search="true"/>
            <option value="0">Select day</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
            <option value="13">13</option>
            <option value="14">14</option>
            <option value="15">15</option>
            <option value="16">16</option>
            <option value="17">17</option>
            <option value="18">18</option>
            <option value="19">19</option>
            <option value="20">20</option>
            <option value="21">21</option>
            <option value="22">22</option>
            <option value="23">23</option>
            <option value="24">24</option>
            <option value="25">25</option>
            <option value="26">26</option>
            <option value="27">27</option>
            <option value="28">28</option>
            <option value="29">29</option>
            <option value="30">30</option>
            <option value="31">31</option>
        </select>
        </div>
        <div class="col-md-3">
            <select name="publishDate" class="form-control selectpicker" id="publishDate" placeholder="Please select Work of Experience" data-size="10" data-live-search="true"/>
            <option value="0">Select Month</option>
            <option value="1">January</option>
            <option value="2">February</option>
            <option value="3">March</option>
            <option value="4">April</option>
            <option value="5">May</option>
            <option value="6">June</option>
            <option value="7">July</option>
            <option value="8">August</option>
            <option value="9">September</option>
            <option value="10">October</option>
            <option value="11">November</option>
            <option value="12">December</option>
        </select>
        </div>
        <div class="col-md-3">
            <div class="input-group date" id="publishDate" data-date="1992 ">
                <input class="form-control" id="publishDate" type="text" value="1992" readonly="readonly" name="publishDate"/>
                <span class="input-group-addon add-on"><i class="fa fa-calendar"></i></span>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-2 control-label" for="expirationsDate">Expirations Date</label>
        <div class="col-md-2">
            <select name="expirationsDate" class="form-control selectpicker" id="expirationsDate_day" placeholder="Please select a day" data-size="10" data-live-search="true"/>
            <option value="0">Select day</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
            <option value="13">13</option>
            <option value="14">14</option>
            <option value="15">15</option>
            <option value="16">16</option>
            <option value="17">17</option>
            <option value="18">18</option>
            <option value="19">19</option>
            <option value="20">20</option>
            <option value="21">21</option>
            <option value="22">22</option>
            <option value="23">23</option>
            <option value="24">24</option>
            <option value="25">25</option>
            <option value="26">26</option>
            <option value="27">27</option>
            <option value="28">28</option>
            <option value="29">29</option>
            <option value="30">30</option>
            <option value="31">31</option>
        </select>
        </div>
        <div class="col-md-3">
            <select name="expirationsDate" class="form-control selectpicker" id="expirationsDate_month" placeholder="Please select Work of Experience" data-size="10" data-live-search="true"/>
            <option value="0">Select Month</option>
            <option value="1">January</option>
            <option value="2">February</option>
            <option value="3">March</option>
            <option value="4">April</option>
            <option value="5">May</option>
            <option value="6">June</option>
            <option value="7">July</option>
            <option value="8">August</option>
            <option value="9">September</option>
            <option value="10">October</option>
            <option value="11">November</option>
            <option value="12">December</option>
        </select>
        </div>
        <div class="col-md-3">
            <div class="input-group date" id="expirationsYear" data-date="1992 ">
                <input class="form-control" id="expirationsDate_year" type="text" value="1992" readonly="readonly" name="expirationsYear"/>
                <span class="input-group-addon add-on"><i class="fa fa-calendar"></i></span>
            </div>
        </div>
    </div>
<div class="form-group">
    <label for="title" class="col-md-2 control-label">&nbsp;</label>
    <div class="col-md-8">
        <input type="submit" value="Submit" class="btn btn-primary"/>
    </div>
</div>
</fieldset>
</form>
</div>
</div>
</div>
</article>
</div>
</div>
<div class="col-md-1"></div>

<!--/content end-->


<!-- JS -->
</body>
</html>