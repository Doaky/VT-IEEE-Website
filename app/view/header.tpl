<!DOCTYPE html>
<html lang="en">
<head>
	<title><?= $pageTitle ?> | VT IEEE</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<meta property="og:url" content="https://www.ieee.vt.edu">
	<meta property="og:type" content="website">
	<meta property="og:title" content="VT IEEE">
	<meta property="og:description" content="Virginia Tech's IEEE Chapter">
	<meta property="og:image" content="<?= BASE_URL ?>/app/public/img/title-background.jpg">

	<link rel="stylesheet" type="text/css" href="<?= BASE_URL ?>/app/public/css/styles.css" />
	<link rel="icon" href="<?= BASE_URL ?>/app/public/img/favicon.ico">

	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js" integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em" crossorigin="anonymous"></script>

	<script src="<?= BASE_URL ?>/app/public/js/index.js"></script>

</head>

<body>

	<nav class="navbar sticky-top navbar-dark ">
		<?php if($pageTitle == 'Home'): ?>
			<a class="nav-item nav-link active" href="javascript:void(0);">Home</a>
		<?php else: ?>
			<a class="nav-item nav-link" href="<?= BASE_URL ?>">Home</a>
		<?php endif; ?>

		<?php if($pageTitle == 'Get Involved'): ?>
			<a class="nav-item nav-link active" href="javascript:void(0);">Get Involved</a>
		<?php else: ?>
			<a class="nav-item nav-link" href="<?= BASE_URL ?>/get_involved/">Get Involved</a>
		<?php endif; ?>

		<?php if($pageTitle == 'Sponsors'): ?>
			<a class="nav-item nav-link active" href="javascript:void(0);">Sponsors</a>
		<?php else: ?>
			<a class="nav-item nav-link" href="<?= BASE_URL ?>/sponsors/">Sponsors</a>
		<?php endif; ?>

		<?php if($pageTitle == 'Officers'): ?>
			<a class="nav-item nav-link active" href="javascript:void(0);">Officers</a>
		<?php else: ?>
			<a class="nav-item nav-link" href="<?= BASE_URL ?>/officers/">Officers</a>
		<?php endif; ?>

		<?php if($pageTitle == 'Contact'): ?>
			<a class="nav-item nav-link active" href="javascript:void(0);">Contact</a>
		<?php else: ?>
			<a class="nav-item nav-link" href="<?= BASE_URL ?>/contact/">Contact</a>
		<?php endif; ?>

		<a href="javascript:void(0);" class="icon" onclick="showMenu()">
			<i class="fas fa-times"></i>
		</a>

		<a href="javascript:void(0);" class="icon" onclick="showMenu()">
			<i class="fa fa-bars"></i>
		</a>

		<!-- <img src="<?= BASE_URL ?>/app/public/img/ieee_logo_white.png"> -->
	</nav>

<script type="text/javascript">
	$(window).resize(larg);

	function larg(){
	    if ($(window).width() > 598) {
			nav.className = "navbar sticky-top navbar-dark ";
		}
	}

	var nav = document.getElementsByClassName("navbar")[0];

	function showMenu() {
		// var nav = document.getElementsByClassName("navbar")[0];
		if (nav.className === "navbar sticky-top navbar-dark ") {
			nav.className += "responsive";
		} else {
			nav.className = "navbar sticky-top navbar-dark ";
		}
	}

	$('a').on('click touchend', function(e) {
	    var el = $(this);
	    var link = el.attr('href');
	    console.log("Redirect: " + link);
	    window.location = link;
	});
</script>