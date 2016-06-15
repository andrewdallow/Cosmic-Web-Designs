<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of PortfolioPage
 *
 * @author Andrew Dallow
 */
class PortfolioPage extends Page {

    private static $can_be_root = false;
    private static $db = array(
        'Date' => 'Date',
        'Website' => 'VarChar',
        'Skills' => 'VarChar',
        'Author' => 'VarChar',
        'Testimonial' => 'Text'
    );
    private static $has_one = array(
        'Photo' => 'Image'
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();
        
        $fields->addFieldToTab('Root.Main', 
                DateField::create('Date', 'Completion Date')
                    ->setConfig('showcalendar', true), 
                'Content');
        
        $fields->addFieldToTab('Root.Main',
                TextField::create('Website', 'Website Address'),
                'Content');
        
        $fields->addFieldToTab('Root.Main',
                TextField::create('Skills', 'Skills (comma separated)'),
                'Content');
        $fields->addFieldToTab('Root.Main',
                TextField::create('Author', 'Authors (comma separated)'),
                'Content');
        
        $fields->addFieldToTab('Root.Main', 
                TextareaField::create('Testimonial', 'Customer Testimonial'),
                'Content');   

        $fields->addFieldToTab('Root.Attachments', 
                $photo = UploadField::create('Photo')
        );
        $photo->getValidator()->setAllowedExtensions(
                array('png', 'gif', 'jpg', 'jpeg')
        );
        return $fields;
    }

}

class PortfolioPage_Controller extends Page_Controller {
    //put your code here
}
