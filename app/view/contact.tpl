<main class="contact-page">

	<h1>Contact Us</h1>

	<hr>
		<form name="contact_form" method="post" action="<?= BASE_URL ?>/contact/send/">
			<label for="name">Name</label>
			<input type="text" name="name" maxlength="80" size="20" required="true">

			<br>

			<label for="email">Email</label>
			<input type="email" name="email" maxlength="80" size="28" required="true">

			<br>

			<label for="subject">Subject</label>
			<select name="subject" required="true">
				<option value="General">General</option>
				<option value="Suggestion">Suggestion</option>
				<option value="Employer">Employer</option>
				<option value="Website">Website</option>
			</select>

			<br>

			<label for="message">Message</label>
			<textarea name="message" rows="5" cols="40" required="true"></textarea>

			<br>

			<label for="send_to_user">Send Me a Copy</label>
			<input type="checkbox" name="send_to_user"/>

			<br><br>

			<input type="submit" value="Send Message">
		</form>

	<ul class="media-links">
		<li><a href="mailto:ieee.virginiatech@gmail.com" class="link"><i class="fas fa-envelope"></i> Email</a></li>
		<li><a href="https://m.me/VTIEEEstudentchapter" target="_blank" class="link"><i class="fab fa-facebook-messenger"></i> Messenger</a></li>
		<li><a href="https://groups.google.com/a/vt.edu/forum/#!forum/vt-ieee-g/join" target="_blank" class="link"><i class="fab fa-google"></i> Google Group</a></li>
	</div>

</main>
