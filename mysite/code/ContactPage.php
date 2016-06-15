<?php

/**
 * Description of Contact
 * Handles the email submision of the simple contact form. 
 * 
 * @author Andrew Dallow
 */
class ContactPage extends Page {
    //put your code here
}

class ContactPage_Controller extends Page_Controller {

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
        $email->setFrom($data['email']);
        $email->setSubject("{$config->Title} Message from {$data['name']}");

        $messageBody = " 
            <p><strong>Name:</strong> {$data['name']}</p>
            <p><strong>Email:</strong> <a href='mailto:{$data['email']}'>{$data['email']}</a></p>
            
        ";
        
        $messageBody = $messageBody . "
            <p><strong>Message:</strong></p>
            <p>{$data['message']}</p> 
            ";

        $email->setBody($messageBody);
        $success = $email->send();

        if ($success) {
            $reponse['success'] = true;
        }

        return json_encode($reponse);
    }

}
