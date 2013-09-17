<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="pt.utl.ist.fenix.tools.util.i18n.Language"%>
<%@page import="net.sourceforge.fenixedu.injectionCode.AccessControl"%>
<%@page import="net.sourceforge.fenixedu._development.PropertiesManager"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<html:html xhtml="true">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="shortcut icon" href="<%= request.getContextPath() %>/images/favicon.ico" type="image/ico"/>
	<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/CSS/layout.css"  media="screen"  />
	<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/CSS/general.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/CSS/color.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/CSS/print.css" media="print" />

	<link href="<%= request.getContextPath() + "/CSS/dotist_timetables.css" %>" rel="stylesheet" type="text/css" />
	<title><tiles:getAsString name="title" ignore="true" /></title>
	<script type="text/javascript" src="<%= request.getContextPath() %>/CSS/scripts/hideButtons.js"></script>
	<script src="<%= request.getContextPath() %>/javaScript/jquery/jquery.js" type="text/javascript" >
	</script>
	<script src="<%= request.getContextPath() %>/javaScript/jquery/jquery-ui.js" type="text/javascript">
	</script>
	<jsp:include page="/includeMathJax.jsp" />
	
	
	<tiles:insert attribute="rss" ignore="true" />
	<tiles:insert attribute="keywords" ignore="true" />
</head>

<body>
<% if (PropertiesManager.useBarraAsAuthenticationBroker()) { %>
<script id="ist-bar" data-logout="https://fenix.ist.utl.pt/logoff.do" data-login="https://fenix.ist.utl.pt/loginPage.jsp" data-fluid="true" data-lang="<%= Language.getLocale().getLanguage() %>" <% if(AccessControl.getUserView() == null) {%> data-use-offline="true" <%} %> data-next-param="service" src="https://barra.ist.utl.pt/site_media/static/js/barra.js"></script>
<% } %>
<jsp:include page="deployWarning.jsp" flush="true"/>
<jsp:include page="devMode.jsp" flush="true"/>

<%-- Layout component parameters : title, context, header, navGeral, navLocal, body, footer --%>
<!-- Context -->
<tiles:insert attribute="context" ignore="true"/>
<!--End Context -->


<!-- Header -->
<% if (!PropertiesManager.useBarraAsAuthenticationBroker()) { %>
<div id="top">
	<h1 id="logo">
		<img alt="<bean:message key="institution.logo" bundle="IMAGE_RESOURCES" />" style="padding-left:30px;padding-top:20px;" src="<bean:message key="fenix.logo.location" bundle="GLOBAL_RESOURCES" arg0="<%= request.getContextPath() %>"/>"/>
	</h1>

	<tiles:insert page="/commons/headerButtons.jsp" />
	<p id="user">
		<tiles:insert page="/commons/personalInfoTitleBar.jsp" />
	</p>
</div>
<% } %>
<!-- End Header -->


<!-- NavGeral -->
<div id="navtop">
	<% if (PropertiesManager.useBarraAsAuthenticationBroker()) { %>
	<h1 class="applicationName">
		<bean:message key="application.name" bundle="GLOBAL_RESOURCES" /><span class="applicationName-subtle"><bean:message key="application.name.subtle" bundle="GLOBAL_RESOURCES" /></span>
	</h1>
	<% } %>
	<tiles:insert attribute="navGeral" />
</div>
<!-- End NavGeral -->


<!-- Container -->
<div id="container" class="container_2col_photo">

	<!-- NavLateral -->
	<div id="navlateral">
		<tiles:insert attribute="navLocal" ignore="true"/>
		<tiles:insert attribute="photos" />
	</div>
	<!-- End NavLateral -->
	

	<!-- Content -->
	<div id="content" class="content_2col_photo">
	
	  	<tiles:insert attribute="body-context" ignore="true"/>
	  	<tiles:insert attribute="body" ignore="true"/>
	  	<tiles:getAsString name="body-inline" ignore="true"/>
	  	
	</div>
	<!-- End Content -->

	<!-- Footer -->
	<div id="footer">
		<tiles:insert attribute="footer" />
	</div>
	<!--End Footer -->

</div>
<!-- End Container -->

<script type="text/javascript">
	hideButtons();
</script>

</body>
</html:html>
