<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Service
 *
 * @author Andrew Dallow
 */
class Service extends DataObject {
    private static $db = array (
        'Title' => 'VarChar',
        'Description' => 'HTMLText',
        'IconClass' => 'VarChar',
        'IconHTML' => 'HTMLText'
    );
    
    private static $has_one = array (
      'HomePage' => 'HomePage'  
    );
    
    public function getCMSFields() {
        return FieldList::create(array(
            TextField::create('Title'),
            HtmlEditorField::create('Description'),
            TextField::create('IconClass'),
            TextareaField::create('IconHTML')
            
            ));
    }
    
}
