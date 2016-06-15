<footer id="footer" ng-controller="footerController">   
    <div id="footer-top" class="container">
        <div class="row">
            <div class="col-sm-4">
                <h3>Useful Links</h3>
                <div class="footer-underline"></div>
                <ul class="footer-links">
                <% loop $Menu(1) %>
                    <li><a class="$LinkingMode" href="$Link">$MenuTitle</a></li>                    
                <% end_loop %>
                </ul>
            </div>            
            <div class="col-sm-4 footer-blog">
                <h3>News</h3>
                <div class="footer-underline"></div>
                <a class="twitter-timeline" 
                   data-chrome="transparent noheader nofooter noborders noscrollbar"
                   data-height="200"
                   href="https://twitter.com/cosmicwebdev" 
                   data-widget-id="731325167566118912">
                </a>
                <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>

            </div>
            
            
            <div class="col-sm-4 footer-contact">
                <h3>Contact Us</h3>
                <div class="footer-underline"></div>
                <% with $SiteConfig %>
                <% if $EmailContact %>
                E: <a href="mailto:{$EmailContact}?subject=Website%20Enquiry">
                            $EmailContact
                </a><br><br>
                <% end_if %>                
                <% if $PostalAddress %>
                <address>
                        $Title<br>
                        $PostalAddress<br>
                        $PostalCity<br>
                        $PostalRegion $PostalCode<br>
                        $PostalCountry
                    </address>
                <% end_if %>
                <% end_with %>
            </div>
        </div>        
    </div>
    <div id="copyright">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    &copy; <span ng-bind="copywriteYear"></span> 
                    $SiteConfig.Title | 
                    <span class="sitemap">
                        <a href="{$AbsolutePath}sitemap.xml">Sitemap</a>
                    </span>
                    

                    <!-- BEGIN SOCIAL NETWORKS -->
                    <ul class="social-icons icon-circle icon-zoom list-unstyled list-inline">
                         <% with $SiteConfig %>
                            <% if $FacebookLink %>
                                <li><a href="$FacebookLink" target="_blank"><i class="fa fa-facebook"></i></a></li>
                            <% end_if %>
                            <% if $TwitterLink %>
                                <li><a href="$TwitterLink" target="_blank"><i class="fa fa-twitter"></i></a></li>
                            <% end_if %>
                            <% if $GoogleLink %>
                                <li><a href="$GoogleLink" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                            <% end_if %>
                            <% if $YouTubeLink %>
                                <li><a href="$YouTubeLink" target="_blank"><i class="fa fa-youtube"></i></a></li>
                            <% end_if %>
                        <% end_with %> 
                                
                    </ul>
                    <!-- END SOCIAL NETWORKS -->

                </div>
            </div>
        </div>
    </div>
</footer>
