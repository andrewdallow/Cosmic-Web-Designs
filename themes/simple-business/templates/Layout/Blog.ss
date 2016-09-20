<% require themedCSS('blog', 'blog') %>
<div class="blog-holder">
    <div class="container">
        <div class="row">
            <div class="<% if $SideBarView %>col-xs-12 col-md-9<% else %>col-sm-12<% end_if %>">
                <div class="blog-entry content-container">

                    <article>
                            <h1>
                                    <% if $ArchiveYear %>
                                            <%t Blog.Archive 'Archive' %>:
                                            <% if $ArchiveDay %>
                                                    $ArchiveDate.Nice
                                            <% else_if $ArchiveMonth %>
                                                    $ArchiveDate.format('F, Y')
                                            <% else %>
                                                    $ArchiveDate.format('Y')
                                            <% end_if %>
                                    <% else_if $CurrentTag %>
                                            <%t Blog.Tag 'Tag' %>: $CurrentTag.Title
                                    <% else_if $CurrentCategory %>
                                            <%t Blog.Category 'Category' %>: $CurrentCategory.Title
                                    <% end_if %>
                            </h1>

                            <div class="content">$Content</div>

                            <% if $PaginatedList.Exists %>
                                    <% loop $PaginatedList %>
                                            <% include PostSummary %>
                                    <% end_loop %>
                            <% else %>
                                    <p><%t Blog.NoPosts 'There are no posts' %></p>
                            <% end_if %>
                    </article>
                    $Form
                    $CommentsForm

                    <% with $PaginatedList %>
                            <% include Pagination %>
                    <% end_with %>
                    
            </div>
            </div>
            <div class="col-xs-12 col-md-3">
            <% include BlogSideBar %>
            </div>
        </div>
        
    </div>
</div>
