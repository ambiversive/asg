<form method="POST" id="newbie_form" action="user/insert_user.php">

<label for="username">Username</label>
<input id="newbie_username" type="text" name="newUsername">

<label for="password">Password</label>
<input id="newbie_password" type="text" name="newPassword">

<label for="username">Email</label>
<input type="text" name="newEmail">

<label>Captcha</label>
<input type="text" name="key" /><br />
<img src="captcha/newUserCaptcha.php" alt="CAPTCHA image sould be here" /><br>
<input type="submit" value="Register">

</form>
