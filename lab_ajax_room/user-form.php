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
    <h2 class="p1"><i class="fa-solid fa-house"></i>Room</h2>
    <div class="content off">
        <p class ="mb-3" id="msg"></p>
        <form id="userForm" method="POST">
            <div class="mb-3">
                <label class="form-label">Roomname</label>          
                <input type="text" class="form-control"  placeholder="Enter Room Name" name="troomname" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Detail</label>
                <input type="text" class="form-control"  placeholder="Enter Detail" name="tdetail" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Roomtypeid</label>
                <select class="form-control"name="troomtypeid">
<?php
    include"database.php";
    $sql="SELECT * FROM tbroomtype";
    $query=$conn->query($sql);
    while($row=$query->fetch_object()){
?>
            <option value="<?=$row->roomtypeid?>">
                <?=$row->roomtypename?></option>
<?PHP } ?>
            </select> 
            </div>

            <input type="submit" name="bSubmitRoom"class="btn btn-primary" value="submit">
        </form>
    </div>
<div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="ajax-script.js"></script>

<h1 class="p1"><i class="fa-solid fa-house"></i>รายการข้อมูลห้อง</h1>
<div class="content">
    <table class="table table-striped table-bordered">
        <thead>
            <th>Roomname</th>
            <th>Detail</th>
            <th>Price</th>
            <th>Roomtypename</th>
        </thead>
        <tbody>
<?php
    include"database.php";
    $sql="SELECT * FROM tbroom INNER JOIN tbroomtype ON tbroom.roomtypeid=tbroomtype.roomtypeid";
    $query=$conn->query($sql);
    while($row=$query->fetch_object()){
?>
            <tr>
                <td><?=$row->roomname?></td>
                <td><?=$row->detail?></td>
                <td><?=$row->price?></td>
                <td><?=$row->roomtypename?></td>
            </tr>
<?php
    }
?>
        </tbody>
    </table>
</div>
</body>
</html>