<%--
  Created by IntelliJ IDEA.
  User: enhyq
  Date: 2022/11/01
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign Up Form</title>
  <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
</head>
<body>

<!--
user_name
user_email
user_password
user_gender
user_birthday
user_bio
team_color
user_major
user_interest
payment
-->

<form name="form1" action="form_ok.jsp" method="post" onsubmit="return validateForm()">

  <h1>Sign Up</h1>
  <p><a href="index.jsp">Home</a></p>

  <fieldset>
    <legend><span class="number">1: </span>Basic info</legend>
    <label for="name">Name:</label>
    <input type="text" id="name" name="user_name">
    <br>
    <label for="mail">Email:</label>
    <input type="email" id="mail" name="user_email">
    <br>
    <label for="password">Password:</label>
    <input type="password" id="password" name="user_password">
    <br>
    <label>Gender:</label>
    <br>
    <input type="radio" id="male" value="male" name="user_gender"><label for="male" class="light">male</label><br>
    <input type="radio" id="female" value="female" name="user_gender"><label for="female" class="light">female</label>
    <br>
    <label for="birthday">Birthday:</label>
    <input type="date" id="birthday" name="user_birthday">
  </fieldset>

  <fieldset>
    <legend><span class="number">2: </span>More info</legend>
    <label for="bio">Biography:</label>
    <textarea id="bio" name="user_bio"></textarea>
    <br>
    <label for="team_color">Select your team color:</label>
    <input type="color" id="team_color" name="team_color">
  </fieldset>

  <fieldset>
    <label for="major">major Role:</label>
    <select id="major" name="user_major">
      <optgroup label="전산전자공학부">
        <option value="컴퓨터공학">컴퓨터공학</option>
        <option value="전자공학">전자공학</option>
        <option value="AI·컴퓨터공학심화">AI·컴퓨터공학심화</option>
        <option value="전자공학심화">전자공학심화</option>
        <option value="IT">IT</option>
      </optgroup>
      <optgroup label="커뮤니케이션">
        <option value="공연영상학">공연영상학</option>
        <option value="언론정보학">언론정보학</option>
      </optgroup>
    </select>
    <br>
    <label>Interests:</label>
    <br>
    <input type="checkbox" id="development" value="development" name="user_interest[]"><label class="light" for="development">Development</label><br>
    <input type="checkbox" id="design" value="design" name="user_interest[]"><label class="light" for="design">Design</label><br>
    <input type="checkbox" id="business" value="business" name="user_interest[]"><label class="light" for="business">Business</label>
    <br>
    <label for="payment">Desired payment (between 0 and 100,000,000):</label>
    <input type="range" id="payment" name="payment" min="0" max="100000000">
  </fieldset>
  <button type="submit">Sign Up</button>
</form>

</body>
<script>
  function validateForm() {
    var user_name = document.form1.user_name;
    var user_email = document.form1.user_email;
    var user_password = document.form1.user_password;
    var user_gender = document.form1.user_gender;
    var user_birthday = document.form1.user_birthday;
    var user_bio = document.form1.user_bio;
    var team_color = document.form1.team_color;
    var user_major = document.form1.user_major;
    var user_interest = document.form1.user_interest;
    var payment = document.form1.payment;

    if(user_name.value == ''){
      alert("Enter user name");
      user_name.focus();
      return false;
    }
    if(user_email.value == ''){
      alert("Enter email");
      user_email.focus();
      return false;
    }
    if(user_password.value == ''){
      alert("Enter password");
      user_password.focus();
      return false;
    }
    if(user_gender.value == ''){
      alert("Choose gender");
      user_gender.focus();
      return false;
    }
    if(user_birthday.value == ''){
      alert("Choose birthday");
      user_birthday.focus();
      return false;
    }
    if(user_bio.value == ''){
      alert("Enter bio");
      user_bio.focus();
      return false;
    }
    if(team_color.value == ''){
      alert("Choose team color");
      team_color.focus();
      return false;
    }
    if(user_major.value == ''){
      alert("Choose major");
      user_major.focus();
      return false;
    }
    // if(user_interest.value == ''){
    //     alert("Choose interest");
    //     user_interest.focus();
    //     return false;
    // }
    if(payment.value == ''){
      alert("Choose payment");
      payment.focus();
      return false;
    }

  }
</script>

</html>
