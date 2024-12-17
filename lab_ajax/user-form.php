<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div class="user-detail">
    <h2 class="p1"><i class="fa-solid fa-house"></i>Insert User Data</h2>
    <div class="content off">
        <p class ="mb-3" id="msg"></p>
        <form id="userForm" method="POST">
            <div class="mb-3">
                <label class="form-label">FullName</label>          
                <input type="text" class="form-control"  placeholder="Enter Full Name" name="fullName" required>
            </div>
            <div class="mb-3">
                <label class="form-label">EmailAddress</label>
                <input type="email" class="form-control"  placeholder="Enter Email Address" name="emailAddress" required>
            </div>
            <div class="mb-3">
                <label class="form-label">City</label>
                <input type="city" class="form-control"  placeholder="Enter Full City" name="city" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Country</label>
                <input type="text" class="form-control" placeholder="Enter Full Country" name="country" required>
            </div>
            <div><input type="submit" class="btn btn-primary" value="submit"></div>
        </form>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="ajax-script.js"></script>

<h1 class="p1"><i class="fa-solid fa-house"></i>รายการข้อมูล</h1>
<div class="content">
    <table class="table table-striped table-bordered">
        <thead>
            <th>FullName</th>
            <th>EmailAddress</th>
            <th>City</th>
            <th>Country</th>
        </thead>
        <tbody>
<?php
    include"database.php";
    $sql="SELECT * FROM usertable";
    $query=$conn->query($sql);
    while($row=$query->fetch_object()){
?>
            <tr>
                <td><?=$row->fullName?></td>
                <td><?=$row->emailAddress?></td>
                <td><?=$row->city?></td>
                <td><?=$row->country?></td>
            </tr>
<?php
    }
?>
        </tbody>
    </table>
</div>
</body>
</html>