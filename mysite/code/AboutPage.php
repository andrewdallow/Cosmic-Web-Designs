<?php

/**
 * Description of About
 *
 * @author Andrew Dallow
 */
class AboutPage extends Page {

    private static $db = array(
        'Name' => 'Varchar',
        'Tagline' => 'Varchar',
        'LinkedInLink' => 'Varchar',
        'TwitterLink' => 'Varchar',
        'FacebookLink' => 'Varchar'
    );
    private static $has_one = array(
        'Photo' => 'Image'
    );
    
    private static $has_many = array (
      'Skills' => 'Skills' 
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();
        
         $fields->addFieldToTab('Root.Main', 
                 TextField::create('Name', 'Name'), 'Content'
                 );
         $fields->addFieldToTab('Root.Main', 
                 TextField::create('Tagline', 'Tagline'), 'Content'
                 );
        
        $fields->addFieldsToTab('Root.Main', array(
            $photo = UploadField::create('Photo')
        ), 'Content');
        $photo->setFolderName('about-images')
                ->getValidator()->setAllowedExtensions(
                array('png', 'gif', 'jpg', 'jpeg')
        );
        
        $fields->addFieldToTab('Root.Social', 
                TextField::create('LinkedInLink', 'LinkedIn')
        ); 
        
        $fields->addFieldToTab('Root.Social',
                TextField::create('TwitterLink', 'Twitter')
        );
        $fields->addFieldToTab('Root.Social', 
                TextField::create('FacebookLink', 'Facebook')
        );
        
        $fields->addFieldToTab('Root.Skills', GridField::create(
                'Skill',
                'Skills',
                $this->Skills(),
                GridFieldConfig_RecordEditor::create()
        ));
        
        return $fields;
    }    
    

}

class AboutPage_Controller extends Page_Controller {
    public function getSkills() {
        return Skills::get()
                ->sort('Rating', 'DESC');
    }
}
