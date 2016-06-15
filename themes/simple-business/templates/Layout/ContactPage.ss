<div id="contact-section">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-12 contact-statement box-left">
                        $Content
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 contact-form box-left">
                        <form class="contactForm"
                              ng-controller="contactFormController"
                              name="form"
                              ng-submit="sendMessage(input)"
                              >
                            <p class="bg-success" ng-show="success">Your message has been received. You will get a response within 1 - 2 business days.</p>
                            <p class="bg-danger" ng-show="error">Something wrong happened!, please try again.</p>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">

                                        <label for="name" class="control-label">
                                            Full Name *                                         
                                        </label>
                                        <input type="text" class="form-control" 
                                               id="name" name="name" 
                                               ng-model="input.name"                                           
                                               required>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">

                                        <label for="email" class="control-label">
                                            Email *
                                            <span class="form-hint">
                                                example@email.com
                                            </span>
                                        </label>
                                        <input type="email" class="form-control" 
                                               id="email" name="email" 
                                               ng-model="input.email" 
                                               required>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="message" class="control-label">
                                            Write your message here *
                                        </label>
                                        <textarea class="form-control" 
                                                  rows="5" 
                                                  id="message"
                                                  name="message"
                                                  ng-model="input.message" 
                                                  required></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <span class="form-hint">
                                        * denotes required field
                                    </span>
                                </div>
                                <div class="col-sm-2 spinner">
                                    <i class="fa fa-spinner fa-pulse fa-2x" ng-show="showSpinner"></i>
                                </div>
                                <div class="col-sm-4">

                                    <input id="submit" 
                                           name="submit" 
                                           type="submit"
                                           value="Send" 
                                           class="btn btn-primary btn-block"
                                           ng-disabled="disableSendButton">
                                </div>
                            </div>


                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-3 contact-info">
                <div class="row">
                    <% with $SiteConfig %>
                    <% if $EmailContact %>
                    <div class="col-md-12">
                        <h3>                        
                            Email
                        </h3>
                        <p>
                            <a href="mailto:{$EmailContact}?subject={$SiteConfig.Title}%20Enquiry">
                                $EmailContact
                            </a>
                        </p>
                    </div>
                    <% end_if %>
                    <% if PhoneContact || MobileContact %>
                    <div class="col-md-12">
                        <h3>                        
                            Phone
                        </h3>
                        <% if PhoneContact %>
                        <p>P: <a href="tel:{$PhoneContact}">$PhoneContact</a></p>
                        <% end_if %>
                        <% if MobileContact %>
                        <p>M: <a href="tel:{$MobileContact}">$MobileContact</a></p>
                        <% end_if %>
                    </div>
                    <% end_if %>
                    <% if $PostalAddress %>
                    <div class="col-md-12">

                        <h3>                        
                            Postal Address
                        </h3>
                        <address>
                            $Title<br>
                            $PostalAddress<br>
                            $PostalCity<br>
                            $PostalRegion $PostalCode<br>
                            $PostalCountry
                        </address>
                    </div>
                    <% end_if %>
                    <% if $PhysicalAddress %>
                    <div class="col-md-12">

                        <h3>                        
                            Physical Address
                        </h3>
                        <address>
                            $Title<br>
                            $PhysicalAddress<br>
                            $PhysicalCity<br>
                            $PhysicalRegion<br>
                            $PostalCountry
                        </address>
                    </div>
                    <% end_if %>

                    <% end_with %> 
                </div>
            </div>


        </div>
    </div>

</div>
