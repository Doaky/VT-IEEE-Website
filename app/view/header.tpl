<!DOCTYPE html>
<html lang="en">
<head>
	<title><?= $pageTitle ?> | VT IEEE</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">

	<link rel="stylesheet" type="text/css" href="<?= BASE_URL ?>/app/public/css/styles.css" />
	<link rel="stylesheet" type="text/css" href="<?= BASE_URL ?>/app/public/css/timeline.css"/>
	<link rel="icon" href="<?= BASE_URL ?>/app/public/img/favicon.ico">

	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js" integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em" crossorigin="anonymous"></script>

	<script src=https://cdnjs.cloudflare.com/ajax/libs/css-doodle/0.4.2/css-doodle.min.js></script>

	<script src="<?= BASE_URL ?>/app/public/js/d3.v3.min.js"></script>
	<script src="<?= BASE_URL ?>/app/public/js/d3timeline.js"></script>
	<script src="<?= BASE_URL ?>/app/public/js/index.js"></script>

</head>

<body>

	<nav class="navbar sticky-top navbar-dark ">
		<a class="nav-item nav-link active" href="<?= BASE_URL ?>">Home</a>
		<a class="nav-item nav-link" href="<?= BASE_URL ?>/get_involved/">Get Involved</a>
		<a class="nav-item nav-link" href="<?= BASE_URL ?>/sponsors/">Sponsors</a>
		<a class="nav-item nav-link" href="<?= BASE_URL ?>/officers/">Officers</a>
		<a class="nav-item nav-link" href="<?= BASE_URL ?>/about/">About</a>
		<a class="nav-item nav-link" href="<?= BASE_URL ?>/contact_us/">Contact Us</a>
	</nav>

	<!-- <nav>
		<ul class="nav-menu-list">
			<?php if($pageTitle == 'Home'): ?>
				<li class="nav-item"><a href="<?= BASE_URL ?>" class="selected">Home</a></li>
			<?php else: ?>
				<li class="nav-item"><a href="<?= BASE_URL ?>">Home</a></li>
			<?php endif; ?>

			<?php if($pageTitle == 'Get Involved'): ?>
				<li class="nav-item"><a href="<?= BASE_URL ?>/get_involved/" class="selected">Get Involved</a></li>
			<?php else: ?>
				<li class="nav-item"><a href="<?= BASE_URL ?>/get_involved/">Get Involved</a></li>
			<?php endif; ?>

			<?php if($pageTitle == 'Sponsors'): ?>
				<li class="nav-item"><a href="<?= BASE_URL ?>/sponsors/" class="selected">Sponsors</a></li>
			<?php else: ?>
				<li class="nav-item"><a href="<?= BASE_URL ?>/sponsors/">Sponsors</a></li>
			<?php endif; ?>

			<?php if($pageTitle == 'About'): ?>
				<li class="nav-item"><a href="<?= BASE_URL ?>/about/" class="selected">About</a></li>
			<?php else: ?>
				<li class="nav-item"><a href="<?= BASE_URL ?>/about/">About</a></li>
			<?php endif; ?>

			<?php if($pageTitle == 'Contact Us'): ?>
				<li class="nav-item"><a href="<?= BASE_URL ?>/contact_us/" class="selected">Contact Us</a></li>
			<?php else: ?>
				<li class="nav-item"><a href="<?= BASE_URL ?>/contact_us/">Contact Us</a></li>
			<?php endif; ?>
		</ul>
	</nav> -->
