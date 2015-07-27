<%@ Page Title="" Language="C#" MasterPageFile="~/TravelPlanner.Master" AutoEventWireup="true" CodeBehind="planner.aspx.cs" Inherits="Assignment.travel.planner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav class="nav glyphicon-alert">
        <ul class="nav navbar-nav">
            <li><a href="/travel/planner.aspx">Planner</a></li>
            <li><a href="/travel/accommodations.aspx">Accommodations</a></li>
            <li><a href="/travel/transportation.aspx">transportation</a></li>
        </ul>
    </nav>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!-- START of center-block div -->
    <div class="col-md-12">
        <p class="visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
        </p>
        <!-- START of panel panel-default div -->
        <div class="panel panel-primary">
            <!-- Default panel contents -->
            <div class="panel-heading"><h1>Hello, world!</h1></div>
            <!-- START of GoogleMaps-location-pick div -->
            <div id="GoogleMaps_location_pick" class="panel-body">
                <div style="width:100%; height:500px;">
                    <!-- google map here -->
                    <div id="map-canvas"></div>
                 <!-- END of GoogleMaps-location-pick div -->
                 </div>
            </div>
            
            <!-- List group -->
            <ul class="list-group">
                <li class="list-group-item">
                  <ul class="pager">
                    <li><a onclick="next()" href="#">Previous</a></li>
                    <li><a onclick="back()" href="#">Next</a></li>
                  </ul>
                </li>
                <li id="NA" class="list-group-item" aria-label="North America">North America</li>
                <li id="SA" class="list-group-item" aria-label="South Americ">South America</li>
                <li id="EU" class="list-group-item" aria-label="Europe">Europe</li>
                <li id="AS" class="list-group-item" aria-label="Asia" >Asia</li>
                <li id="AF" class="list-group-item" aria-label="Africa" >Africa</li>
                <li id="AU" class="list-group-item" aria-label="Austrailia" >Austrailia</li>
            </ul>
            <script>
                var continents = ["NA", "SA", "EU", "AS", "AF", "AU"];
                var counter_t1 = 0;

                function next() {
                    counter_t1--;

                }

                function back() {
                    counter_t1++;

                }

                if (counter_t1 <= continents.length)
                {
                    counter_t1 = 0;
                } else {

                }
            </script>
        <!-- END of panel panel-default div -->
        </div>
    </div>

    <!-- Google Map API JavaScript -->
    <div>
        <script type="text/javascript">

            var map;

            function initialize() {
                var mapOptions = {
                    //center : { lat: -35, lng: 35 },
                    zoom: 6
                };
                map = new google.maps.Map(document.getElementById('map-canvas'),
                    mapOptions);

                // Try HTML5 geolocation
                if (navigator.geolocation) {
                    navigator.geolocation.getCurrentPosition(function (position) {
                        var pos = new google.maps.LatLng(position.coords.latitude,
                                                         position.coords.longitude);

                        var infowindow = new google.maps.InfoWindow({
                            map: map,
                            position: pos,
                            content: 'Location found.'
                        });

                        map.setCenter(pos);
                    }, function () {
                        handleNoGeolocation(true);
                    });
                } else {
                    // Browser doesn't support Geolocation
                    handleNoGeolocation(false);
                }
            }

            function handleNoGeolocation(errorFlag) {
                if (errorFlag) {
                    var content = 'Error: The Geolocation service failed.';
                } else {
                    var content = 'Error: Your browser doesn\'t support geolocation.';
                }

                var options = {
                    map: map,
                    position: new google.maps.LatLng(60, 105),
                    content: content
                };

                var infowindow = new google.maps.InfoWindow(options);
                map.setCenter(options.position);
            }

            google.maps.event.addDomListener(window, 'load', initialize);


        </script>
    </div>

</asp:Content>
