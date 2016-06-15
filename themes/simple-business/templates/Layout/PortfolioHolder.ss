<div id="portfolio-holder" class="container">
    <div class="row">
        <div class="col-md-12">
            <p>$Content<p>
        </div>        
    </div>
    <div id="portfolio-listings">
        <div class="row">
            <% loop $Children %>
            <div class="portfolio-listing col-xs-12 col-sm-6 col-md-4">
                <div class="item">
                    <div class="row">
                        <div class="image col-md-12">
                            <a href="$Link">
                                <span class="btn btn-default">Read More</span>
                            </a>
                            $Photo.setWidth(593)

                        </div>
                    </div> 
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <span class="companyName">$Title</span><br>
                        <span class="companyUrl">
                            <a href="http://{$Website}">$Website</a>
                        </span>
                    </div>
                </div>
            </div>
            <% end_loop %>
        </div>
    </div>
</div>
