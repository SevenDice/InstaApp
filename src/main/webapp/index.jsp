<jsp:include page="common/header.jsp" />

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
<section id="one">
  <header class="major">
    <h1>Welcome To Instagram Profiler</h1>
  </header>
  <p>A basic web application demonstrating the use of Official Instagram API.</p>
  <p><strong>Instagram Profiler</strong> displaying information and media feed of your Instagram profile.</p>
  <p><a href="<%= authorizationUrl%>"><img src="images/login_button.png"/></a></p>
</section>

    <!-- Scripts -->
      <script src="assets/js/jquery.min.js"></script>
      <script src="assets/js/jquery.poptrox.min.js"></script>
      <script src="assets/js/skel.min.js"></script>
      <script src="assets/js/util.js"></script>
      <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
      <script src="assets/js/main.js"></script>

    </body>
    </html>
