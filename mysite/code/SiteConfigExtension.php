<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of SiteConfigExtension
 *
 * @author Andrew Dallow
 */
class SiteConfigExtension extends DataExtension {

    private static $db = array(
        'EmailContact' => 'Varchar',
        'PhoneContact' => 'Varchar',
        'MobileContact' => 'Varchar',
        'PostalAddress' => 'Varchar',
        'PostalCity' => 'Varchar',
        'PostalCode' => 'Varchar',
        'PostalRegion' => 'Varchar',
        'PostalCountry' => 'Varchar',
        'PhysicalAddress' => 'Varchar',
        'PhysicalCity' => 'Varchar',
        'PhysicalRegion' => 'Varchar',
        'PhysicalCountry' => 'Varchar',
        'FacebookLink' => 'Varchar',
        'TwitterLink' => 'Varchar',
        'GoogleLink' => 'Varchar',
        'YouTubeLink' => 'Varchar'
    );
    private static $has_one = array(
        'Photo' => 'Image'
    );
    

    public function updateCMSFields(FieldList $fields) {
        
        $fields->addFieldsToTab('Root.ContactDetails', array(
            EmailField::create('EmailContact', 'Email Address'),
            FieldGroup::create(
                    PhoneNumberField::create('PhoneContact', 'Telephone Number'),
                    PhoneNumberField::create('MobileContact', 'Mobile Number')
            )->setTitle('Telephone Numbers'),
            
            FieldGroup::create(
                    TextField::create('PostalAddress', 'Address'),
                    TextField::create('PostalCity', 'City'),
                    TextField::create('PostalRegion', 'Region'),
                    TextField::create('PostalCode', 'Postcode'),
                    CountryDropdownField::create('PostalCountry', 'Country')
            )->setTitle('Postal Address'),
            FieldGroup::create(
                    TextField::create('PhysicalAddress', 'Address'),
                    TextField::create('PhysicalCity', 'City'),
                    TextField::create('PhysicalRegion', 'Region'),
                    CountryDropdownField::create('PhysicalCountry', 'Country')
            )->setTitle('Physical Address')
        ));
        
        $fields->addFieldsToTab('Root.Social', array(
            TextField::create('FacebookLink', 'Facebook'),
            TextField::create('TwitterLink', 'Twitter'),
            TextField::create('GoogleLink', 'Google'),
            TextField::create('YouTubeLink', 'YouTube')
        ));

        $fields->addFieldsToTab('Root.Main', array(
            $photo = UploadField::create('Photo')
        ));

        $photo->setFolderName('banner-images')
                ->getValidator()->setAllowedExtensions(
                array('png', 'gif', 'jpg', 'jpeg')
        );

        
    }

}
