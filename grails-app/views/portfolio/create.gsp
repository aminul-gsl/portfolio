<%@ page import="com.grails.elance.portfolio.admin.ScopeType; com.grails.elance.portfolio.admin.PortfolioType" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <title>Portfolio Managment | Create</title>
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
                    <li><a href="#">Portfolio</a></li>
                    <li class="active"><a href="${g.createLink(controller: 'portfolio', action: 'create')}">Create</a>
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
                        <h2 style="display: inline-block; margin: 0;">Add Portfolio</h2>
                        <g:hasErrors bean="${portfolio}">
                            <div class='alert-success '>
                                <ul>
                                    <g:eachError var="err" bean="${portfolio}">
                                        <li><g:message error="${err}" /></li>
                                    </g:eachError>
                                </ul>
                            </div>
                        </g:hasErrors>
                    </div>

                    <div class="toolbar pull-right">
                        <div class="btn-group">
                            <a href="${g.createLink(controller: 'portfolio', action: 'list')}"
                               class="btn btn-primary">
                                <i class="fa fa-list"></i>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="panel-body">

                    <div class="row">
                        <div class="col-md-8">
                            <form method="post" id="createPortfolio"
                                    class="form-horizontal"
                                    action='${resource(dir: 'portfolio', file: 'save')}' enctype="multipart/form-data">
                                <g:hiddenField name="id" value="${portfolio?.id?portfolio?.id:''}"/>
                                <fieldset>
                                    <div class="form-group required ${hasErrors(bean:portfolio,field:'name','error')}">
                                        <label class="col-md-3 control-label" for="name">Name</label>

                                        <div class="col-md-9 required">
                                            <g:textField value="${portfolio?.name}" name="name" class="form-control"
                                                         id="name" placeholder="Please Enter Portfolio Name"/>
                                        </div>
                                    </div>

                                <div class="form-group required ${hasErrors(bean:portfolio,field:'portfolioType','error')}">
                                        <label for="portfolioType" class="col-md-3 control-label">Portfolio Type</label>

                                        <div class="col-md-9">
                                            <g:select name="portfolioType" id="portfolioType"
                                                      value="${portfolio?.portfolioType?.key}"
                                                      class="form-control selectpicker" from="${PortfolioType.values()}"
                                                      optionKey="key" noSelection="['': 'Choose portfolio type']"/>
                                        </div>
                                    </div>

                                <div class="form-group required ${hasErrors(bean:portfolio,field:'description','error')}">
                                        <label class="col-md-3 control-label" for="description">Description</label>

                                        <div class="col-md-9 required">
                                            <g:textArea value="${portfolio?.description}" class="form-control"
                                                        name="description" id="description"
                                                        placeholder="Please Enter Description"/>
                                        </div>
                                    </div>
                                <div class="form-group required ${hasErrors(bean:portfolio,field:'portfolio_logo','error')}">
                                        <label class="col-md-3 control-label" for="portfolio_logo">Logo</label>
                                    <g:if test="${portfolio?.id}">
                                        <div class="col-md-9 required">
                                            <input type="file" name="portfolio_logo" class="portfolioLogo"/>
                                        </div>
                                    </g:if>
                                    <g:else>
                                        <div class="col-md-9">
                                            <input type="file" class="portfolioLogo required" name="portfolio_logo" i />
                                        </div>
                                    </g:else>

                                    </div>

                                <div class="form-group required ${hasErrors(bean:portfolio,field:'scope','error')}">
                                        <label class="col-md-3 control-label" for="Scope">Scope</label>

                                        <div class="col-md-9 required">
                                            <g:radioGroup name="scope" labels="${ScopeType.values()}"
                                                          values="${ScopeType.values()}" value="${portfolio?.scope? portfolio?.scope?.key:ScopeType.Public.key}">
                                                <label class="radio-inline">${it.label} ${it.radio}</label>
                                            </g:radioGroup>
                                        </div>
                                    </div>

                                <div class="form-group required ${hasErrors(bean:portfolio,field:'publishDate','error')}">
                                        <label class="col-md-3 control-label" for="publishDate">Publish Date</label>

                                        <div class="col-md-5 input-group date required">
                                            <g:datePicker name="publishDate" value="${portfolio?.publishDate?portfolio?.publishDate:new Date()}"
                                                          precision="day" years="${2014..2020}"/>
                                        </div>
                                    </div>

                                <div class="form-group required ${hasErrors(bean:portfolio,field:'expireDate','error')}">
                                        <label class="col-md-3 control-label" for="expireDate">Expire Date</label>

                                        <div class="col-md-5 input-group date required">
                                            <g:datePicker name="expireDate" value="${portfolio?.expireDate?portfolio?.expireDate:new Date().plus(60)}"
                                                          precision="day" years="${2014..2020}"/>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-md-3 control-label">&nbsp;</label>

                                        <div class="col-md-9">
                                            <input type="reset" value="Reset" class="btn btn-primary"/>
                                            <input type="submit" value="${portfolio?.id ? 'Update' : 'Submit'}"
                                                   class="btn btn-primary"/>
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                        <div class="col-sm-4">
                            <g:if test="${portfolio?.id}">
                                <ii:imageTag id="uploadedLogo" indirect-imagename="${portfolio?.logoName}" title="project one" />
                            </g:if>
                            <g:else>
                                <img id="uploadedLogo" src="#" alt="Portfolio logo" />
                            </g:else>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script>
    jQuery(function ($) {
        $("#publishDate").datepicker({
            showOtherMonths: true,
            selectOtherMonths: false,
            format: 'dd/mm/yyyy'
        }).on('changeDate', function (ev) {
            $(this).datepicker('hide');
        });
        $("#expireDate").datepicker({
            showOtherMonths: true,
            selectOtherMonths: false,
            format: 'dd/mm/yyyy'
        }).on('changeDate', function (ev) {
            $(this).datepicker('hide');
        });

        $('#createPortfolio').validate({
            errorElement: 'span',
            rules: {
                name: {
                    required: true
                },
                portfolioType: {
                    required: true
                },
                description: {
                    required: true
                },
                publishDate: {
                    required: true
                },
                 expireDate: {
                    required: true
                }
            },
            messages: {
                name: {
                    required: "Provide portfolio name"

                },
                portfolio_logo: {
                    required: "Select a logo"

                },
                portfolioType: {
                    required: "Select a Portfolio Type"
                },
                description: {
                    required: "Enter portfolio Description"
                },
                publishDate: {
                    required: "Enter Publish Date"
                },
                expireDate: {
                    required: "Enter the Expirations Date."
                }

            }
        });


        $(".portfolioLogo").change(function(){
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