
<div class="project-form">
    <div class="container">
        <div class="row">
            <div class="col-md-12 breadcrumbs">
                $BreadCrumbs
                <hr>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                $Content
                <form ng-controller="projectFormController"
                      name="form"
                      ng-submit="sendMessage(input)"
                      >
                    <h3>
                        Contact Details 
                        <span class="form-hint">
                            * denotes required field
                        </span>
                    </h3>
                    <hr>
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="form-group">

                                <label for="Name" class="control-label"> Full Name *</label>
                                <input type="text" class="form-control" 
                                       id="Name" name="Name" 
                                       ng-model="input.Name"
                                       required>
                            </div> 
                        </div>  
                    </div>
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label for="Company" class="control-label">Company</label>
                                <input type="text" class="form-control" 
                                       id="Company" name="Company" 
                                       ng-model="input.Company"
                                       >
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label for="email" class="control-label">
                                    Email *
                                    <span class="form-hint">
                                        example@email.com
                                    </span>
                                </label>
                                <input type="email" class="form-control" 
                                       id="email" name="Email" 
                                       ng-model="input.Email" 
                                       required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label for="Phone" class="control-label">
                                    Phone
                                    <span class="form-hint">
                                        03 123 456
                                    </span>
                                </label>
                                <input type="tel" class="form-control" 
                                       id="Phone" name="Phone" 
                                       ng-model="input.Phone"
                                       >
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="Address" class="control-label">
                                    Address *
                                    <span class="form-hint">
                                        123 Example St, Christchurch 1234, New Zealand
                                    </span>
                                </label>
                                <input type="text" class="form-control" 
                                       id="Address" name="Address" 
                                       ng-model="input.Address"
                                       required>
                            </div> 
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-12">
                            <h3>
                                Business Snapshot
                                <span class="form-hint">
                                    * denotes required field
                                </span>
                            </h3>
                            <hr>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label for="Budget" class="control-label">
                                    Project Budget *
                                </label>
                                <select class="form-control"
                                        id="Budget"
                                        name="Budget" 
                                        ng-model="input.Budget"
                                        required>
                                    <option value="" disabled selected>Please Select...</option>
                                    <option value="&lt; $500">&lt; $500</option>
                                    <option value="$500-$1K">$500 - $1K</option>
                                    <option value="$1K-2K">$1K - 2K</option>
                                    <option value="$2K-3K">$2K - 3K</option>
                                    <option value="$4K-5K">$3K - 4K</option>

                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="Website" class="control-label">
                                    Website
                                    <span class="form-hint">
                                        www.mywebsite.com
                                    </span>
                                </label>
                                <input type="text" class="form-control" 
                                       id="Website" name="Website" 
                                       ng-model="input.Website">
                            </div>
                        </div> 

                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label for="CompanyServices" class="control-label">What does your company do? What are the products and services you offer? *</label>
                                <textarea class="form-control" 
                                          rows="5" 
                                          id="CompanyServices"
                                          name="CompanyServices"
                                          ng-model="input.CompanyServices" 
                                          required></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label for="DecisionMakers" class="control-label">
                                    Who are the decision makers for this project? *
                                </label>
                                <textarea class="form-control" 
                                          rows="5"
                                          id="DecisionMakers"
                                          name="DecisionMakers"
                                          ng-model="input.DecisionMakers" 
                                          required></textarea>
                            </div>
                        </div>
                    </div>                    
                    <div class="row">
                        <div class="col-sm-12">
                            <h3>
                                Website Purpose
                                <span class="form-hint">
                                    * denotes required field
                                </span>
                            </h3>
                            <hr>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="goal1" class="control-label">
                                    Goal #1 *
                                    <span class="form-hint">
                                        e.g. Increase sales by 30% in the next year
                                    </span>
                                </label>
                                <input type="text" class="form-control" 
                                       id="goal1" name="Goal1" 
                                       ng-model="input.Goal1" 
                                       required>
                            </div>
                        </div> 
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="goal2" class="control-label">
                                    Goal #2
                                    <span class="form-hint">
                                        e.g. Increase subscribers by 10% in the next 6 months
                                    </span>
                                </label>
                                <input type="text" class="form-control" 
                                       id="goal2" name="Goal2" 
                                       ng-model="input.Goal2" 
                                       >
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="goal3" class="control-label">
                                    Goal #3
                                    <span class="form-hint">
                                        e.g. Reduce admin cost by 5%
                                    </span>
                                </label>
                                <input type="text" class="form-control" 
                                       id="goal3" name="Goal3" 
                                       ng-model="input.Goal3" 
                                       >
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label for="CurrentWebsiteFeatures" class="control-label">Is there anything about your current website that serves you well? if so why?</label>
                                <textarea class="form-control" 
                                          rows="5" 
                                          id="CurrentWebsiteFeatures"
                                          name="CurrentWebsiteFeatures"
                                          ng-model="input.CurrentWebsiteFeatures" 
                                          ></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <h3>
                                Website Visitors
                                <span class="form-hint">
                                    * denotes required field
                                </span>
                            </h3>
                            <hr>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label for="IdealCustomer" class="control-label">
                                    Who is your ideal Customer? How old are 
                                    they? What gender are they? What are their 
                                    interests? *
                                </label>
                                <textarea class="form-control" 
                                          rows="5" 
                                          id="IdealCustomer"
                                          name="IdealCustomer"
                                          ng-model="input.IdealCustomer" 
                                          required></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label for="CustomerActivities" class="control-label">
                                    What are the top 5 reasons your ideal 
                                    customer will visit your website? *
                                    <br>
                                    <span class="form-hint">
                                        e.g. get contact details, product 
                                        information, pricing, ask question 
                                        about services
                                    </span>
                                </label>
                                <textarea class="form-control" 
                                          rows="5" 
                                          id="CustomerActivities"
                                          name="CustomerActivities"
                                          ng-model="input.CustomerActivities" 
                                          required></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <h3>
                                Design Concept
                                <span class="form-hint">
                                    * denotes required field
                                </span>
                            </h3>
                            <hr>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label for="Design_CustomerFeel" 
                                       class="control-label">
                                    How do you want people to feel when they 
                                    interact with your brand? *
                                    <br>
                                    <span class="form-hint">
                                        e.g. Edgy and excited, Safe and secure, 
                                        like they belong, exclusive and cool
                                    </span>
                                </label>
                                <textarea class="form-control" 
                                          rows="5" 
                                          id="Design_CustomerFeel"
                                          name="Design_CustomerFeel"
                                          ng-model="input.Design_CustomerFeel" 
                                          required></textarea>
                            </div>
                        </div>
                    </div>
                     <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label for="Design_CompetitorInfo" 
                                       class="control-label">
                                    Tell me about your 
                                    competitors. Who else is competing for the 
                                    attention of your ideal customer and what 
                                    are they doing that you think is working? *
                                </label>
                                <textarea class="form-control" 
                                          rows="5" 
                                          id="Design_CompetitorInfo"
                                          name="Design_CompetitorInfo"
                                          ng-model="input.Design_CompetitorInfo"
                                          required></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label for="Design_CompetitorWebsite" 
                                       class="control-label">
                                    Do your competitors have websites? If so, 
                                    list them here.
                                </label>
                                <textarea class="form-control" 
                                          rows="5" 
                                          id="Design_CompetitorWebsite"
                                          name="Design_CompetitorWebsite"
                                          ng-model="input.Design_CompetitorWebsite"
                                          ></textarea>
                            </div>
                        </div>
                    </div>
                   
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label for="Design_OtherWebsites" 
                                       class="control-label">
                                    Are there any other websites in particular 
                                    that you like the design of? Why?
                                </label>
                                <textarea class="form-control" 
                                          rows="5" 
                                          id="Design_OtherWebsites"
                                          name="Design_OtherWebsites"
                                          ng-model="input.Design_OtherWebsites"
                                          ></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <hr>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label for="ExtraInfo" class="control-label">
                                    Is there anything else that you would like 
                                    to tell me?
                                </label>
                                <textarea class="form-control" 
                                          rows="5" 
                                          id="ExtraInfo"
                                          name="ExtraInfo"
                                          ng-model="input.ExtraInfo"
                                          ></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">

                        <div class="col-sm-4">

                            <input id="submit" 
                                   name="submit" 
                                   type="submit"
                                   value="Submit" 
                                   class="btn btn-primary btn-block"
                                   ng-disabled="disableSendButton">
                        </div>
                        <div class="col-sm-2 spinner">
                            <i class="fa fa-spinner fa-pulse fa-2x" ng-show="showSpinner"></i>
                        </div>
                    </div>
                    <br>

                    <p class="bg-success" ng-show="success">Your message has been received. You will get a response within 3 - 5 business days.</p>
                    <p class="bg-danger" ng-show="error">Something went wrong!, please try again.</p>

                </form>
            </div>
        </div>
    </div>
</div>
