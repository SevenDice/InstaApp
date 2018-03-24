<jsp:include page="common/header.jsp"/>


<%@ page import="com.sachinhandiekar.examples.Constants" %>

<%@ page import="org.jinstagram.Instagram" %>

<%@ page import="org.jinstagram.entity.users.basicinfo.UserInfoData" %>


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


<!-- Header -->
  <header id="header">
    <div class="inner">
      <% UserInfoData userInfoData = instagram.getCurrentUserInfo().getData();         %>
      <a href="#" class="image avatar"><img src="<%= userInfoData.getProfilePicture() %>" alt="" /></a>
      <h1><strong>Username: </strong><%= userInfoData.getUsername() %><br />
          <strong>Full Name: </strong><%= userInfoData.getFullName() %><br />
          <strong>Bio: </strong><%= userInfoData.getBio() %><br />
          <strong>Website: </strong><%= userInfoData.getWebsite() %><br />
          <strong>Follows: </strong><%= userInfoData.getCounts().getFollows() %><br />
          <strong>Followed By: </strong><%= userInfoData.getCounts().getFollowedBy() %><br />
          <strong>Media Count: </strong><%= userInfoData.getCounts().getMedia() %><br /></h1>
    </div>
  </header>

<!-- Main -->
  <div id="main">

    <!-- One -->
      <section id="two">
        <h2>Recent Work</h2>
        <div class="row">
          <article class="6u 12u$(xsmall) work-item">
            <a href="images/fulls/01.jpg" class="image fit thumb"><img src="images/thumbs/01.jpg" alt="" /></a>
            <h3>Magna sed consequat tempus</h3>
            <p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
          </article>
          <article class="6u$ 12u$(xsmall) work-item">
            <a href="images/fulls/02.jpg" class="image fit thumb"><img src="images/thumbs/02.jpg" alt="" /></a>
            <h3>Ultricies lacinia interdum</h3>
            <p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
          </article>
          <article class="6u 12u$(xsmall) work-item">
            <a href="images/fulls/03.jpg" class="image fit thumb"><img src="images/thumbs/03.jpg" alt="" /></a>
            <h3>Tortor metus commodo</h3>
            <p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
          </article>
          <article class="6u$ 12u$(xsmall) work-item">
            <a href="images/fulls/04.jpg" class="image fit thumb"><img src="images/thumbs/04.jpg" alt="" /></a>
            <h3>Quam neque phasellus</h3>
            <p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
          </article>
          <article class="6u 12u$(xsmall) work-item">
            <a href="images/fulls/05.jpg" class="image fit thumb"><img src="images/thumbs/05.jpg" alt="" /></a>
            <h3>Nunc enim commodo aliquet</h3>
            <p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
          </article>
          <article class="6u$ 12u$(xsmall) work-item">
            <a href="images/fulls/06.jpg" class="image fit thumb"><img src="images/thumbs/06.jpg" alt="" /></a>
            <h3>Risus ornare lacinia</h3>
            <p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
          </article>
        </div>
        <ul class="actions">
          <li><a href="logout.jsp" class="button">Logout</a></li>
        </ul>
      </section>






<jsp:include page="common/footer.jsp"/>
