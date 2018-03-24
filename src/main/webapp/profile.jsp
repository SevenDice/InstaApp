<jsp:include page="common/header.jsp"/>


<%@ page import="com.sachinhandiekar.examples.Constants" %>

<%@ page import="org.jinstagram.Instagram" %>
<%@ page import="org.jinstagram.entity.users.feed.MediaFeedData" %
<%@ page import="org.jinstagram.entity.users.basicinfo.UserInfoData" %>
<%@ page import="java.util.List" %>


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
      <section id="one">
        <h2>Gallery</h2>
        <div class="row">
          <%
              List<MediaFeedData> mediaList = instagram.getUserRecentMedia().getData();
          %>
          <h3>Media Count : <%=mediaList.size()%></h3>
          <%
              for (MediaFeedData mediaFeedData : mediaList) {
          %>
          <article class="6u 12u$(xsmall) work-item">
            <a href="<%=mediaFeedData.getImages().getStandardResolution().getImageUrl()%>" class="image fit thumb"> <img src="<%=mediaFeedData.getImages().getLowResolution().getImageUrl()%>" alt="" /></a>
            <h3>Magna sed consequat tempus</h3>
            <p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
          </article>
          <%
              }
          %>

        </div>
        <ul class="actions">
          <li><a href="logout.jsp" class="button">Logout</a></li>
        </ul>
      </section>






<jsp:include page="common/footer.jsp"/>
