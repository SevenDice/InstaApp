<jsp:include page="common/header.jsp"/>


<%@ page import="com.sachinhandiekar.examples.Constants" %>

<%@ page import="org.jinstagram.Instagram" %>


<%

    Object objInstagram = session.getAttribute(Constants.INSTAGRAM_OBJECT);

    Instagram instagram = null;

    if (objInstagram != null) {
        instagram = (Instagram) objInstagram;
    } else {
        response.sendRedirect(request.getContextPath() + "/index.jsp");
        return;
    }


%>

<!-- Page Content -->
<div class="container">
    <div class="row">
        <div class="alert alert-success" role="alert">
            <strong>Well done!</strong> You've successfully ended the session. Please click here to <a
                href=<%=request.getContextPath()%>"/index.jsp">login</a>
        </div>
        <%
            // Remove both of the objects from the session
            session.removeAttribute(Constants.INSTAGRAM_OBJECT);
            session.removeAttribute(Constants.INSTAGRAM_SERVICE);
        %>
    </div>
    
    <!-- Scripts -->
      <script src="assets/js/jquery.min.js"></script>
      <script src="assets/js/jquery.poptrox.min.js"></script>
      <script src="assets/js/skel.min.js"></script>
      <script src="assets/js/util.js"></script>
      <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
      <script src="assets/js/main.js"></script>

    </body>
    </html>
