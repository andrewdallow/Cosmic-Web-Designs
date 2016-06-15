<?php

/**
 * Description of Skills
 *
 * @author Andrew Dallow
 */
class Skills extends DataObject {
    private static $db = array (
        'Name' => 'VarChar',
        'Rating' => 'Int'
    );
    
    private static $has_one = array (
      'AboutPage' => 'AboutPage',
      'PortfolioPage' => 'PortfolioPage'
    );
    
    public function getCMSFields() {
        return FieldList::create(array(
            TextField::create('Name', 'Skill Name'),
            TextField::create('Rating', 'Skill Competency (0 - 100)')            
            ));
    }
}
