<main class="contact-page">

	<h1>Contact Us</h1>
</br>
	<h2>Please e-mail us at ieee.virginiatech@gmail.com</h2>
	<hr>
		<form name="contact_form" method="post" action="<?= BASE_URL ?>/contact/send/">
			<!-- Spam Prevention -->
			<input id="occupation" type="text" name="occupation" maxlength="80" size="20">

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

			<br><br>

			<div class="g-recaptcha" data-sitekey="6LfU8GoUAAAAALBs1U8UNVtvuaMq9cLQNAR7oh0A"></div>

			<br><br>

			<input type="submit" value="Send Message">

		</form>

	<ul class="media-links">
		<li><a href="https://m.me/VTIEEEstudentchapter" target="_blank" class="link"><i class="fab fa-facebook-messenger"></i> Messenger</a></li>
		<li><a href="https://groups.google.com/a/vt.edu/forum/#!forum/vt-ieee-g/join" target="_blank" class="link"><i class="fab fa-google"></i> Google Group</a></li>
	</div>

</main>

<script type="text/javascript">
	$("form").submit(function(event) {
		var recaptcha = $("#g-recaptcha-response").val();
		if (recaptcha === "") {
			event.preventDefault();
			alert("Please check the recaptcha");
		}
	});
</script>
