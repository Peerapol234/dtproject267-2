<?php
    include"dbcon.php";
    if (isset($_REQUEST['bSubmitStudent'])){
        $firstname=$_REQUEST['tfirstname'];
        $lastname=$_REQUEST['tlastname'];
        $email=$_REQUEST['temail'];
        $address=$_REQUEST['taddress'];
    
        echo $firstname.$lastname.$email.$address;
        $sql="INSERT INTO tbstudent
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

    }elseif(isset($_REQUEST['bSubmitbookname'])){
        $bookname=$_REQUEST['tbookname'];
        $author=$_REQUEST['tauthor'];
        $price=$_REQUEST['tprice'];
        $stock=$_REQUEST['tstock'];
        $booktypeid=$_REQUEST['tbooktypeid'];
    
        echo $bookname.$author.$price.$stock.$booktypeid;
        $sql="INSERT INTO tbbook
            VALUE(null,'$bookname','$author','$price','$stock','$booktypeid')";
        $query=$conn->query($sql);
        echo "<META HTTP-EQUIV='refresh'
                        CONTENT='3; URL=lab2-3.php'>";

    }elseif(isset($_REQUEST['bSubmitbooktypename'])){
        $booktypename=$_REQUEST['tbooktypename'];

        echo $booktypename;
        $sql="INSERT INTO tbbooktype
            VALUE(null,'$booktypename')";
        $query=$conn->query($sql);
        echo "<META HTTP-EQUIV='refresh'
                        CONTENT='3; URL=lab2-3.php'>";

    }elseif(isset($_REQUEST['bSubmitUser'])){
        $firstname=$_REQUEST['tfirstname'];
        $lastname=$_REQUEST['tlastname'];
        $username=$_REQUEST['tusername'];
        $password=$_REQUEST['tpassword'];
        $hashValue= md5($password);

        $sql="INSERT INTO tbuser
            VALUE(null,'$firstname','$lastname','$username','$hashValue')";
        $query=$conn->query($sql);
        echo "บันทึกข้อมูลสำเร็จ <META HTTP-EQUIV='refresh'
                        CONTENT='3; URL=lab_function/lab-formregis.php'>";

    }elseif(isset($_REQUEST['bLogin'])){
        $username=$_REQUEST['tusername'];
        $password=md5($_REQUEST['tpassword']);
        $sql="SELECT * FROM tbuser
                WHERE username='$username'
                and password='$password' ";

        $query=$conn->query($sql);
        $rs=$query->fetch_object();

        $numrows=$query->num_rows;
        if($numrows>0){
                echo "ล็อกอินสำเร็จ";
        }else{
                echo "รหัสผ่านไม่ถูกต้อง";

        }
        echo "เข้าสู้ระบบสำเร็จ <META HTTP-EQUIV='refresh'
        CONTENT='3; URL=lab_function/lab-formlogin.php'>";
    }
?>