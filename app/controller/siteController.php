<?php
include_once '../global.php';
// Gets the identifier for the page being loaded
$action = $_GET['action'];
// Instantiate a SiteController and route it
$sc = new SiteController();
$sc->route($action);

class SiteController {
	// Route to the appropriate class method for each action
	public function route($action) {
		switch($action) {
			case 'home':
				$this->home();
				break;
			case 'get_involved':
				$this->get_involved();
				break;
			case 'sponsors':
				$this->sponsors();
				break;
			case 'officers':
				$this->officers();
				break;
			case 'about':
				$this->about();
				break;
			case 'contact':
				$this->contact();
				break;
			case 'contactSend':
				$name         = $_POST['name'];
				$email        = $_POST['email'];
				$subject      = $_POST['subject'];
				$message      = $_POST['message'];
				$send_to_user = isset($_POST['send_to_user']);
				$this->contactSend($name, $email, $subject, $message, $send_to_user);
				break;
			case 'sent':
				$this->sent();
				break;
		}
	}

	public function home() {
		$pageTitle = 'Home';
		include_once SYSTEM_PATH.'/view/title.tpl';
		include_once SYSTEM_PATH.'/view/header.tpl';
		include_once SYSTEM_PATH.'/view/home.tpl';
		// include_once SYSTEM_PATH.'/view/footer.tpl';
	}

	public function get_involved() {
		$pageTitle = 'Get Involved';
		include_once SYSTEM_PATH.'/view/header.tpl';
		include_once SYSTEM_PATH.'/view/get_involved.tpl';
		// include_once SYSTEM_PATH.'/view/footer.tpl';
	}

	public function sponsors() {
		$pageTitle = 'Sponsors';
		include_once SYSTEM_PATH.'/view/header.tpl';
		include_once SYSTEM_PATH.'/view/sponsors.tpl';
		// include_once SYSTEM_PATH.'/view/footer.tpl';
	}

	public function officers() {
		$pageTitle = 'Officers';
		include_once SYSTEM_PATH.'/view/header.tpl';
		include_once SYSTEM_PATH.'/view/officers.tpl';
		// include_once SYSTEM_PATH.'/view/footer.tpl';
	}

	public function about() {
		$pageTitle = 'About';
		include_once SYSTEM_PATH.'/view/header.tpl';
		include_once SYSTEM_PATH.'/view/about.tpl';
		// include_once SYSTEM_PATH.'/view/footer.tpl';
	}

	public function contact() {
		$pageTitle = 'Contact';
		include_once SYSTEM_PATH.'/view/header.tpl';
		include_once SYSTEM_PATH.'/view/contact.tpl';
		// include_once SYSTEM_PATH.'/view/footer.tpl';
	}

	public function sent() {
		$pageTitle = 'Contact';
		include_once SYSTEM_PATH.'/view/header.tpl';
		include_once SYSTEM_PATH.'/view/sent.tpl';
		// include_once SYSTEM_PATH.'/view/footer.tpl';
	}

	public function contactSend($name, $email, $subject, $message, $send_to_user) {
		if ($send_to_user) {
			mail($email, $subject . " - " . $name, $name . "\n" . $email . "\n\n" . $message);
		}

		$email_to = "ieee.virginiatech@gmail.com";

		switch ($subject) {
		    case "Website":
		        $email_to .= ",djo96@vt.edu";
		        break;
		}

		mail($email_to, $subject . " - " . $name, $name . "\n" . $email . "\n\n" . $message);
		header('Location: '.BASE_URL.'/contact/sent'); exit();
	}
}
