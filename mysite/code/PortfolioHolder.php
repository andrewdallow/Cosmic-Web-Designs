<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Portfolio
 *
 * @author Andrew Dallow
 */
class PortfolioHolder extends Page {
     private static $allowed_children = array(
        'PortfolioPage'
    );
     
     
}

class PortfolioHolder_Controller extends Page_Controller {
    //put your code here
}
