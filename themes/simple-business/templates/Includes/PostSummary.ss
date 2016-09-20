<div class="post-summary">
    <div class="row">
        <div class="col-md-6 post-image">
            <a href="$Link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
               $FeaturedImage.setWidth(500)
        </a>
    </div>
    <div class="col-md-6">
        <h2>
            <a href="$Link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
               <% if $MenuTitle %>$MenuTitle
               <% else %>$Title<% end_if %>
        </a>
    </h2>
    <div class="row">
        <div class="col-md-12 blog-author">
            <p>
                Posted <a href="$MonthlyArchiveLink">$PublishDate.Nice</a>
                <% if $Credits %>
                <%t Blog.By "by" %>
                <% loop $Credits %><% if not $First && not $Last %>, <% end_if %><% if not $First && $Last %> and <% end_if %><% if $URLSegment %><a href="$URL">$Name.XML</a><% else %>$Name.XML<% end_if %><% end_loop %>
                <% end_if %>
            </p>
        </div>                            
    </div>
    <% if $Summary %>
    <p>$Summary
        <% else %>
    <p>$Excerpt
        <% end_if %>        
    </p>
    <p class="read-more">
        <a href="$Link">
            Read more about $Title
            <i class="glyphicon glyphicon-triangle-right"></i>
        </a>
    </p>


</div>
</div>


</div>
