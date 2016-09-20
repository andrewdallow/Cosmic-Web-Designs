<div id="home-section">
    <div class="welcome-banner">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    $Content
                </div>
            </div>
        </div>
    </div>
    <div class="services">
        <div class="container">
            <div class="row">
                <% loop $Services %>
                <div class="col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="icon">
                                <% if $IconClass %>
                                <i class="$IconClass"></i>
                                <% else_if $IconHTML %>
                                $IconHTML
                                <% end_if %>
                            </div>
                            <h3>$Title</h3>
                            $Description
                        </div>
                    </div>
                </div>
                <% end_loop %>

            </div>

        </div>
    </div>
    <div class="contact-banner">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Contact Me Today</h1>
                    <p>Contact me today and we can get your project underway</p>
                    <a href="{$AbsoluteBaseURL}contact" role="button" class="btn btn-default btn-lg">Request a Free Quote</a>

                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-preview">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <a href="{$AbsoluteBaseURL}portfolio"><h1>Portfolio</h1></a>
                    <div class="row">
                        <% loop $getPortfolio %>
                        <div class="portfolio-listing col-xs-12 col-sm-6 col-md-4">
                            <div class="item">
                                <div class="row">
                                    <div class="image col-md-12">
                                        <a href="$Link">
                                            <span class="btn btn-default">Read More</span>
                                        </a>
                                        $Photo.SetSize(400,300)

                                    </div>
                                </div> 
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <span class="companyName">$Title</span><br>
                                    <span class="companyUrl">$Website</span>
                                </div>
                            </div>
                        </div>
                        <% end_loop %>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>



