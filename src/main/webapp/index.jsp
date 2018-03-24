<html>
	<head>
		<title>Identity by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main_login.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<noscript><link rel="stylesheet" href="assets/css/noscript_login.css" /></noscript>
	</head>
	<body class="is-loading">

<%@ page import="org.jinstagram.auth.oauth.InstagramService" %>
<%@ page import="com.sachinhandiekar.examples.Constants" %>


<%
    // If we already have an instagram object, then redirect to profile.jsp
    Object objInstagram = session.getAttribute(Constants.INSTAGRAM_OBJECT);
    if (objInstagram != null) {
        response.sendRedirect(request.getContextPath() + "/profile.jsp");
    }

    InstagramService service = (InstagramService) session.getServletContext().getAttribute(Constants.INSTAGRAM_SERVICE);

    String authorizationUrl = service.getAuthorizationUrl();

%>
<!-- Wrapper -->
  <div id="wrapper">

    <!-- Main -->
      <section id="main">
        <header>
          <span class="avatar"><img src="images/avatar.jpg" alt="" /></span>
          <h1>Instagram Profiler</h1>
          <p>Sign in with Instagram</p>
        </header>

        <footer>
          <ul class="icons">
            <li><a href="<%= authorizationUrl%>" class="fa-instagram">Instagram</a></li>
          </ul>
        </footer>
      </section>

    <!-- Footer -->
      <footer id="footer">
        <ul class="copyright">

        </ul>
      </footer>
  </div>

<!-- Scripts -->
  <!--[if lte IE 8]><script src="assets/js/respond.min.js"></script><![endif]-->
  <script>
    if ('addEventListener' in window) {
      window.addEventListener('load', function() { document.body.className = document.body.className.replace(/\bis-loading\b/, ''); });
      document.body.className += (navigator.userAgent.match(/(MSIE|rv:11\.0)/) ? ' is-ie' : '');
    }
  </script>

</body>
</html>
