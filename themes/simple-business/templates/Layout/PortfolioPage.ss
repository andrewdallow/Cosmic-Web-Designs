<div id="portfolio-item" class="container">
    <div class="row">
        <div class="col-md-12 breadcrumbs">
            $BreadCrumbs
            <hr>
        </div>
    </div>
    <div class="row">
        <div class="row">
            <div class="projectImage  col-md-4">
                <img src="$Photo.setWidth(350).URL" class="img-responsive center-block">
            </div>
            <div class="item-description col-md-5">
                <h3>About the Project</h3>
                $Content
                <% if $Testimonial %>
                <h3>Testimonial</h3>
                <blockquote>$Testimonial</blockquote>
                <% end_if %>
            </div>
            <div class="item-details col-md-3">
                <span class="item-details-name">Date:</span> $Date.Long<hr>
                <span class="item-details-name">Skills:</span> $Skills<hr>
                <span class="item-details-name">Credits:</span>  $Author<hr>
                <span class="item-details-name">Link:</span> <a href="http://{$Website}">$Website</a><hr>
            </div>
        </div>
    </div>
</div>