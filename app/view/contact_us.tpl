<main class="contact-page">

	<h1>Contact Us</h1>

	<hr>

	<form name="contact_form" method="post" action="send_form_email.php">
		<label for="name">Name</label>
		<input type="text" name="name" maxlength="80" size="20">

		<br>

		<label for="email">Email</label>
		<input type="text" name="email" maxlength="80" size="28">

		<br>

		<label for="subject">Subject</label>
		<select name="subject">
			<option value="general">General</option>
			<option value="suggestion">Suggestion</option>
			<option value="employer">Employer</option>
			<option value="website">Website</option>
		</select>

		<br>

		<label for="message">Message</label>
		<textarea name="message" rows="5" cols="40"></textarea>

		<br>

		<label for="message">Send Me a Copy</label>
		<input type="checkbox" name="send_to_user" value="Yes"/>

		<br><br>

		<input type="submit" name="submit" value="Send Message">
	</form>

	<ul class="media-links">
		<li><a href="https://m.me/VTIEEEstudentchapter" target="_blank"><i class="fab fa-facebook-messenger"></i> Messenger</a></li>
		<li><a href="mailto:vt-ieee-g@vt.edu"><i class="fas fa-envelope"></i> Email</a></li>
	</div>

</main>
