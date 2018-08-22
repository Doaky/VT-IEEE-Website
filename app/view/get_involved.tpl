<main class="get-involved-page">
	
	<h1>Ready to get involved?</h1>

	<hr>

	<p>
		We’re excited that you are interested in getting involved in IEEE at Virginia Tech! Below you’ll find a brief description of the types of events and activities IEEE members participate in, as well as information on how to join our listserv to stay up to date on what’s happening.
	</p>

	<p>
		IEEE puts on a variety of events to help students develop professionally, socially, and academically:
	</p>

	<ul>
		<li><b>Professional:</b> company meet & greets, workshops, leadership conference, resume review, and more!</li>
		<li><b>Academic:</b> networking with professors, study space, tours of research labs, youth outreach programs</li>
		<li><b>Social:</b> Fun Fridays, intramural sports, ECE student/faculty happy hour, etc.</li>
	</ul>

	<div class="pin-container">
		<img class="pin" src="<?= BASE_URL ?>/app/public/img/EE_Pin_Circle.png">
		<img class="pin" src="<?= BASE_URL ?>/app/public/img/CPE_Pin_Circle.png">
		<img class="pin" src="<?= BASE_URL ?>/app/public/img/CS_Pin_Circle.png">
	</div>

	<h2>Upcoming Events</h2>

	<?php 
		for ($i = 1; $i < count($output); $i++) {
			echo	"<div class='event-card'>" .
						"<h4>" . $output[$i][1] . "</h4>" .
						"<h6>" . $output[$i][2] . " - " . $output[$i][3] . "</h6>" .
						"<h6><b>" . $output[$i][4] . "</b></h6>" .
						"<br>" .
						"<p>" . $output[$i][5] . "</p>" .
					"</div>";
		}
	?>

	<div class="event-calendar">
		<iframe src="https://calendar.google.com/calendar/embed?src=vt.edu_ooj0bdgfiokvibb5tmagv697ss%40group.calendar.google.com&ctz=America%2FNew_York" style="width: 100%; height: 400px;" frameborder="0" scrolling="no"></iframe>
	</div>

	<ul class="media-links">
		<li><a href="https://www.facebook.com/VTIEEEstudentchapter/" target="_blank" class="link"><i class="fab fa-facebook"></i> Facebook</a></li>
		<li><a href="https://www.instagram.com/vt_ieee/" target="_blank" class="link"><i class="fab fa-instagram"></i> Instagram</a></li>
		<li><a href="https://groups.google.com/a/vt.edu/forum/#!forum/vt-ieee-g/join" target="_blank" class="link"><i class="fab fa-google"></i> Google Group</a></li>
		<li><a href="https://gobblerconnect.vt.edu/organization/ieee/" target="_blank" class="link"><i class="fas fa-link"></i> GobblerConnect</a></li>
	</ul>

</main>
