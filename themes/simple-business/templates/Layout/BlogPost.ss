<% require themedCSS('blog', 'blog') %>
<div class="blog-article-holder">
    <div class="container">
        <div class="row">
            <div class="<% if $SideBarView %>col-sm-9<% else %>col-sm-12<% end_if %>">
                <div class="blog-entry content-container">
                    $Breadcrumbs
                    <article>
                        <h1>$Title</h1>

                        <% if $FeaturedImage %>
                        <p class="post-image">$FeaturedImage.setSize(795,400)</p>
                        <% end_if %>



                        <div class="content">
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
                            <div class="row">
                                <div class="col-md-12">
                                    $Content   
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 social-share">
                                    <!-- Go to www.addthis.com/dashboard to customize your tools -->
                                    <div class="addthis_sharing_toolbox"></div>
                                </div>                            
                            </div> 
                            <div class="row">
                                <div class="col-md-12 blog-meta">                                
                                    <% if $Categories.exists %>
                                    <%t Blog.PostedIn "Posted in" %>
                                    <% loop $Categories %>
                                    <a href="$Link" title="$Title">$Title</a><% if not Last %>, <% else %>;<% end_if %>
                                    <% end_loop %>
                                    <% end_if %>
                                    <% if $Tags.exists %>
                                    <%t Blog.Tagged "Tagged" %>
                                    <% loop $Tags %>
                                    <a href="$Link" title="$Title">$Title</a><% if not Last %>, <% else %>;<% end_if %>
                                    <% end_loop %>
                                    <% end_if %>
                                </div>
                            </div> 
                        </div>






                    </article>

                    $Form
                    $CommentsForm
                </div>
            </div>
            <div class="col-sm-3">
                <% include BlogSideBar %>
            </div>
        </div>
    </div>
</div>



