<?php

/**
 * Description of ProjectFormPage
 * Handles the submission of the project enquiry form via email. 
 *
 * @author Andrew Dallow
 */
class ProjectFormPage extends Page {
    //put your code here
}

class ProjectFormPage_Controller extends Page_Controller {

    private static $allowed_actions = array('submit');

    /**
     * Handles the submission and emailing of the Contact form
     * @param type $request
     * @return boolean success or failed to send email
     */
    public function submit($request) {
        $config = SiteConfig::current_site_config();
        $reponse = array(
            'success' => false
        );

        $email = new Email();
        $formData = file_get_contents('php://input');
        $data = json_decode($formData, true);

        $email->setTo($config->EmailContact);
        $email->setFrom($data['Email']);
        $email->setSubject("{$config->Title} Project Message from {$data['Name']}");
        $email->setTemplate('ProjectFormEmail');
        $email->populateTemplate($data);
        $success = $email->send();

        if ($success) {
            $reponse['success'] = true;
        }

        return json_encode($reponse);
    }

}
