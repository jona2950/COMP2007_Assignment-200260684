<%@ Page Title="" Language="C#" MasterPageFile="~/TravelPlanner.Master" AutoEventWireup="true" CodeBehind="u-topics.aspx.cs" Inherits="Assignment.forums.main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="bs-example" data-example-id="simple-nav-stacked">
        <ul class="nav nav-pills nav-stacked nav-pills-stacked-example">
          <li role="presentation" class="active"><a href="/user/u-topics.aspx">U-Topics</a></li>
          <li role="presentation"><a href="/user/f-faq.aspx">FAQ Forums</a></li>
          <li role="presentation"><a href="/user/f-questions.aspx">Questions Forums</a></li>
          <li role="presentation"><a href="/user/f-safety.aspx">Safety Forums</a></li>
          <li role="presentation"><a href="/user/f-suggests.aspx">Suggestions Forums</a></li>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.4";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
    <div class="fb-post" data-href="https://www.facebook.com/FacebookDevelopers/posts/10151471074398553" data-width="500">
        <div class="fb-xfbml-parse-ignore">
            <blockquote cite="https://www.facebook.com/FacebookDevelopers/posts/10151471074398553">
                <p>Be the first to know when we release a new video by subscribing to our official Facebook Developers YouTube channel!  http://www.youtube.com/facebookdevelopers</p>Posted by 
                <a href="https://www.facebook.com/FacebookDevelopers">Facebook Developers</a> on&nbsp;
                <a href="https://www.facebook.com/FacebookDevelopers/posts/10151471074398553">Wednesday, May 29, 2013</a>

            </blockquote>

        </div>

    </div>
</asp:Content>
