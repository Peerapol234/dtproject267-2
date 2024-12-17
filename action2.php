<?php
    include"dbcon.php";
    if (isset($_REQUEST['bSubmitRoom'])){
        $bookname=$_REQUEST['tbookname'];
        $author=$_REQUEST['tauthor'];
        $price=$_REQUEST['tprice'];
        $stock=$_REQUEST['tstock'];
        $booktypeid=$_REQUEST['tbooktypeid'];
    
        echo $bookname.$author.$price.$stock.$booktypeid;
        $sql="INSERT INTO tbbook
            VALUE(null,'$firstname','$lastname','$email','$address')";
        $query=$conn->query($sql);
        echo "<META HTTP-EQUIV='refresh'
                        CONTENT='3; URL=lab2-2.php'>";

    }elseif(isset($_REQUEST['bSubmitRoom'])){
        $roomname=$_REQUEST['troomname'];
        $detail=$_REQUEST['tdetail'];
        $roomtype=$_REQUEST['troomtype'];

        echo $roomname.$detail.$roomtype;
        $sql="INSERT INTO tbroom
            VALUE(null,'$roomname','$detail','$roomtype')";
        $query=$conn->query($sql);
        echo "<META HTTP-EQUIV='refresh'
                        CONTENT='3; URL=lab2-4.php'>";
    }
?>