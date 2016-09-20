<% require themedCSS('blog', 'blog') %>
<div class="blog-holder">
    <div class="container">
        <div class="row">
            <div class="<% if $SideBarView %>col-sm-9<% else %>col-sm-12<% end_if %>">
                <div class="blog-entry content-container">

                    <% include MemberDetails %>

                    <% if $PaginatedList.Exists %>
                    <h2>Posts by $CurrentProfile.FirstName $CurrentProfile.Surname for $Title:</h2>
                    <% loop $PaginatedList %>
                    <% include PostSummary %>
                    <% end_loop %>
                    <% end_if %>

                    $Form
                    $CommentsForm

                    <% with $PaginatedList %>
                    <% include Pagination %>
                    <% end_with %>

                </div>
            </div>
            <div class="col-sm-3">
                <% include BlogSideBar %>
            </div>
        </div>
    </div>
</div>


