<% if $Categories %>
	<ul class="categories">
		<% loop $Categories %>
                        <li>
				<a href="$Link" title="$Title">
                                        <span class="text">$Title <span class="badge">$BlogPosts.Count</span></span>
				</a>
			</li>
		<% end_loop %>
	</ul>
<% end_if %>