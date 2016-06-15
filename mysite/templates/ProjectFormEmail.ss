<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
        <% base_tag %>
    </head>
    <body>
        <h1>$SiteConfig.Title Website Project Submission</h1>
        <h2>Contact Details</h2>
        <p>
            <strong>Name:</strong> $Name, 
            <strong>Email:</strong><a href="mailto:$Sender">$Email</a>
        </p>
        <p>
            <% if $Company %>
            <strong>Company:</strong> $Company
            <% end_if %>
            <% if $Phone %>
            <strong> Phone:</strong> $Phone
            <% end_if %>
        </p>
        <p>
            <% if $Address %>
            <strong>Address:</strong> $Address
            <% end_if %>
        </p>
        <h2>Business Snapshot</h2>
        <p>
            <% if $Website %>
            <strong>Website:</strong> <a href="http://{$Website}">$Website</a> 
            <% end_if %>
            <% if $Budget %>
            <strong>Budget:</strong> $Budget
            <% end_if %>
        </p>
        <p>
            <strong>
                What does your company do? What are the products and 
                services you offer?
            </strong> 
        </p>
        <p>
            $CompanyServices
        </p>
        <% if $DecisionMakers %>
        <p><strong>Who are the decision makers for this project?</strong></p>
        <p>$DecisionMakers</p>
        <% end_if %>
        <h2>Website Purpose</h2>

        <p><strong>Goal #1:</strong> $Goal1</p>

        <% if $Goal2 %>
        <p><strong>Goal #2:</strong> $Goal2</p>
        <% end_if %>
        <% if $Goal3 %>
        <p><strong>Goal #3:</strong> $Goal3</p>
        <% end_if %>
        <% if $CurrentWebsiteFeatures %>
        <p>
            <strong>
                Is there anything about your current website that serves 
                you well? if so why?:    
            </strong> 
        </p>
        <p>$CurrentWebsiteFeatures</p>    
        <% end_if %>
        <h2>Website Visitors</h2>
        <% if $IdealCustomer %>
        <p>
            <strong>
                Who is your ideal Customer? How old are they? What gender 
                are they? What are their interests?    
            </strong> 
        </p>
        <p>$IdealCustomer</p>
        <% end_if %>
        <% if $CustomerActivities %>
        <p>
            <strong>
                What are the top 5 reasons your ideal customer will 
                visit your website?    
            </strong> 
        </p>
        <p>$CustomerActivities</p>
        <% end_if %>


        <h2>Design Concept</h2>
        <% if $Design_CustomerFeel %>
        <p>
            <strong>
                How do you want people to feel when they interact with your brand?    
            </strong> 
        </p>
        <p>$Design_CustomerFeel</p>
        <% end_if %>
        <% if $Design_CompetitorWebsite %>
        <p>
            <strong>
                Do your competitors have websites? If so, list them here.    
            </strong> 
        </p>
        <p>$Design_CompetitorWebsite</p>
        <% end_if %>
        <% if $Design_CompetitorInfo %>
        <p>
            <strong>
                Tell me about your competitors. Who else is competing for the 
                attention of your ideal customer and what are they doing that 
                you think is working?    
            </strong> 
        </p>
        <p>$Design_CompetitorInfo</p>
        <% end_if %>
        <% if $Design_OtherWebsites %>
        <p>
            <strong>
                Are the any other websites in particular that you like the 
                design of? Why?   
            </strong> 
        </p>
        <p>$Design_OtherWebsites</p>
        <% end_if %>

        <% if $ExtraInfo %>
        <h2>Other Information</h2>
        <p>
            <strong>
                Is there anything else that you would like to tell me?   
            </strong> 
        </p>
        <p>$ExtraInfo</p>
        <% end_if %>
    </body>
</html>
