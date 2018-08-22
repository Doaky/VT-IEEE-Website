<?php
include_once '../global.php';
// Gets the identifier for the page being loaded
$action = $_GET['action'];
// Instantiate a SiteController and route it
$sc = new SiteController();
$sc->route($action);

$output;

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
				$occupation   = $_POST['occupation']; // Spam prevention
				$this->contactSend($name, $email, $subject, $message, $send_to_user, $occupation);
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
	}

	public function get_involved() {
		$pageTitle = 'Get Involved';
		include_once SYSTEM_PATH.'/view/header.tpl';

		$spreadsheet_url = SYSTEM_PATH . '/public/img/Upcoming Events.csv';

		if (!ini_set('default_socket_timeout', 15)) echo "<!-- unable to change socket timeout -->";

		if (($handle = fopen($spreadsheet_url, "r")) !== FALSE) {
			while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
				$spreadsheet_data[] = $data;
			}
			fclose($handle);
		}

		$output = $spreadsheet_data;

		include_once SYSTEM_PATH.'/view/get_involved.tpl';
	}

	public function sponsors() {
		$pageTitle = 'Sponsors';
		include_once SYSTEM_PATH.'/view/header.tpl';
		include_once SYSTEM_PATH.'/view/sponsors.tpl';
	}

	public function officers() {
		$pageTitle = 'Officers';
		include_once SYSTEM_PATH.'/view/header.tpl';
		include_once SYSTEM_PATH.'/view/officers.tpl';
	}

	public function about() {
		$pageTitle = 'About';
		include_once SYSTEM_PATH.'/view/header.tpl';
		include_once SYSTEM_PATH.'/view/about.tpl';
	}

	public function contact() {
		$pageTitle = 'Contact';
		include_once SYSTEM_PATH.'/view/header.tpl';
		include_once SYSTEM_PATH.'/view/contact.tpl';
	}

	public function sent() {
		$pageTitle = 'Contact';
		include_once SYSTEM_PATH.'/view/header.tpl';
		include_once SYSTEM_PATH.'/view/sent.tpl';
	}

	public function contactSend($name, $email, $subject, $message, $send_to_user, $occupation) {
		$reg_exUrl = "/((http|https|ftp|ftps)\:\/\/)?[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,3}(\/\S*)?/";
		preg_match($reg_exUrl, $message, $url);
		// Fake field for bots and link spam blocking
		if ($occupation == "" && count($url) == 0) {
			mail($email,  "Copy of email to IEEE at VT", $name . "\n" . $email . "\n" . $subject . "\n\n" . $message);

			$email_to = "ieee.virginiatech@gmail.com";

			switch ($subject) {
				case "Website":
					$email_to .= ",djo96@vt.edu";
					break;
			}

			mail($email_to, $subject . " - " . $name, $name . "\n" . $email . "\n\n" . $message);
		}
		else {
			mail($email,  "Email to IEEE at VT Failed", $name . "\n" . $email . "\n" . $subject . "\n\n" . $message. "\n\n Detected spam. If you believe this to be a mistake, please email us directly.");
		}
		
		header('Location: '.BASE_URL.'/contact/sent'); exit();
	}
}
