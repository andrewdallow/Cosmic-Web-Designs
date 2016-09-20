<section class="member-profile">
    <div class="row">
        <div class="col-md-12">
            <h1>About $CurrentProfile.FirstName $CurrentProfile.Surname</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            <% if $CurrentProfile.BlogProfileImage %>
		<div class="profile-image">
                    <img class="img-responsive img-circle" 
                        src="$CurrentProfile.BlogProfileImage.setWidth(180).URL"
                        >			
		</div>
		<% end_if %>
        </div>
        <div class="col-md-9">
            <div class="profile-summary">
			<p>$CurrentProfile.BlogProfileSummary</p>
            </div>           
        </div>
    </div>
	
</section>
