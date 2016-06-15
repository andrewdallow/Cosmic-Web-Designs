<div class="about-section">
    <div class="jumbotron">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h1>About $Name</h1>
                    <h3>$Tagline</h3>
                </div>
            </div>
        </div>
    </div>
    <div class="container about-body">
        <div class="row">
            <div class="col-sm-3">
                <div class="row">
                    <div class="col-sm-12 about-photo">
                        <img class="img-responsive center-block img-circle"
                             src="$Photo.setWidth(200).URL" alt="Photo">
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-sm-12">
                        <ul class="about-social social-icons icon-circle icon-zoom list-unstyled list-inline">
                           <% if $LinkedInLink %>
                        <li><a href="$LinkedInLink" target="_blank"><i class="fa fa-linkedin"></i></a></li>
                        <% end_if %>
                        <% if $TwitterLink %>
                        <li><a href="$TwitterLink" target="_blank"><i class="fa fa-twitter"></i></a></li>
                        <% end_if %>
                        <% if $FacebookLink %>
                        <li><a href="$FacebookLink" target="_blank"><i class="fa fa-facebook"></i></a></li>
                        <% end_if %> 
                        </ul>                        
                    </div>
                </div>

            </div>
            <div class="col-sm-6 about-description box-right">
                $Content
            </div>
            <div class="col-sm-3 about-skills">
                <% loop $getSkills %>
                <h5>$Name</h5>
                <div class="progress">
                    <div class="progress-bar progress-bar-warning" 
                         role="progressbar" 
                         aria-valuenow="$Rating" 
                         aria-valuemin="0" 
                         aria-valuemax="100"
                         style="width: {$Rating}%;">
                        <span class="sr-only">$Rating / 100</span>
                    </div>
                </div>
                <% end_loop %>
            </div>
        </div>
    </div>

</div>

