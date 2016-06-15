<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of HomePage
 *
 * @author Andrew Dallow
 */
class HomePage extends Page {
    private static $has_many = array (
      'Services' => 'Service' 
    );
    
    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Services', GridField::create(
                'Services',
                'Service',
                $this->Services(),
                GridFieldConfig_RecordEditor::create()
        ));
        return $fields;
    }
}

class HomePage_Controller extends Page_Controller {
    public function getPortfolio($count = 3) {
        return PortfolioPage::get()
                ->sort('Created', 'DESC')
                ->limit($count);
    }
}
