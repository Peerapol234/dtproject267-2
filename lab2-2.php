<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<h1 class="p1"> 
    <i class="fa-solid fa-house"></i>การใช้งาน CSS </h1>
<div class="content">CSS คือ ภาษาที่ใช้สำหรับตกแต่งเอกสาร HTML/XHTML ให้มีหน้าตา สีสัน ระยะห่าง พื้นหลัง เส้นขอบและอื่นๆ ตามที่ต้องการ CSS ย่อมาจาก Cascading Style Sheets มีลักษณะเป็นภาษาที่มีรูปแบบในการเขียน Syntax แบบเฉพาะและได้ถูกกำหนดมาตรฐานโดย W3C เป็นภาษาหนึ่งในการตกแต่งเว็บไซต์ ได้รับความนิยมอย่างแพร่หลาย</div>
<h1 class="p1">
    <i class="fa-solid fa-bars"></i>ความหมายของ CSS </h1>
<div class="content">CSS ย่อมาจาก Cascading Style Sheets คือภาษาที่ใช้อธิบายรูปร่างและลักษณะของ ไฟล์ HTML • Style Sheet คือไฟล์ที่เขียนด้วยภาษา CSS เพื่อให้ไฟล์ HTML อ้างอิงการก าหนดรูปร่าง และลักษณะ ซึ่งไฟล์นี้จะมีนามสกุลเป็น .css • ในการเรียกใช้ไฟล์ .css ใน HTML เราจะเพิ่มแท็ก <link> ระหว่างแท็ก <head> เช่น</div>
<h1 class="p1">
    <i class="fa-solid fa-bars"></i>การสร้างฟอร์ม (FORM) </h1>
<div class="content">
    <form action="action.php" method="post">

    <div class="mb-3">
            <label class="form-label">FIRSTNAME</label>
            <input type="text" class="form-control" 
            name="tfirstname" 
            placeholder="ระบุชื่อ...">
</div>
    <div class="mb-3">
            <label class="form-label">LASTNAME</label>
            <input type="text" class="form-control" 
            name="tlastname" 
            placeholder="ระบุนามสกุล...">
</div>
    <div class="mb-3">
            <label class="form-label">EMAIL</label>
            <input type="text" class="form-control" 
            name="temail" 
            placeholder="ระบุอีเมล...">
</div>
        <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label">ADDRESS</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"
            name="taddress"
            placeholder="ระบุที่อยู่..."></textarea>
</div>
        <div><input type="submit" name="bSubmitStudent" value="บันทึกข้อมูล"></div>
    </form>
</div>