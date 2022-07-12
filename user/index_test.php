<!DOCTYPE html>
<h1>Student Management System</h1>
<html>
<head>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a, .dropbtn {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

li.dropdown {
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1;}

.dropdown:hover .dropdown-content {
  display: block;
}


section {
  position: relative;
}

section img {
	position: absolute;
}

.top {
	animation-name: fade;
	animation-timing-function: ease-in-out;
	animation-iteration-count: infinite;
	animation-duration: 2s;
	animation-direction: alternate;
}

@keyframes fade {
	0% {
		opacity: 1;
	}
	25% {
		opacity: 1;
	}
	75% {
		opacity: 0;
	}
	100% {
		opacity: 0;
	}
}
</style>
</head>
<body>

<ul>
  <li><a href="home.php">Home</a></li>
  <li><a href="grade.php">Grade</a></li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Academic</a>
    <div class="dropdown-content">
      <a href="subjects.php">Subjects</a>
      <a href="program.php">Curriculum</a>
      <a href="records.php">Records</a>
      <a href="quickstart.php">Calendar</a>
      <li><a href="logout.php">Logout</a>
    </div>
  </li>
</ul>

</body>

<section>
    <img class="bottom" src="2.png">
    <img class="top" src="1.png">
</section>
</html>
