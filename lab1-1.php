<?php
    //index.php
    include"dbcon.php"; //เชื่อมต่อฐานข้อมูล
    $sql="SELECT * FROM tbstudent";
    $query=$conn->query($sql); //นำคำสั่ง sql ไปกระทำกับฐานข้อมูล
    while($rs=$query->fetch_object()){
        echo $rs->stdid.", ".$rs->firstname." ".$rs->lastname." ".$rs->address."<br>";
    }

    echo"<hr>";//แสดงเส้นคั้น

    $sql2="SELECT * FROM tbstudent
        WHERE stdid='2' ";
    $query2=$conn->query($sql2); //นำคำสั่ง sql ไปกระทำกับฐานข้อมูล
    while($rs2=$query2->fetch_object()){
        echo $rs2->stdid.", ".$rs2->firstname." ".$rs2->lastname." ".$rs2->address."<br>";
    }
 
    echo"<hr>";//แสดงเส้นคั้น

    $sql3="SELECT * FROM tbstudent
        WHERE firstname LIKE'%า%' ";
    $query3=$conn->query($sql3); //นำคำสั่ง sql ไปกระทำกับฐานข้อมูล
    while($rs3=$query3->fetch_object()){
        echo $rs3->stdid.", ".$rs3->firstname." ".$rs3->lastname." ".$rs3->address."<br>";
    }
?>