<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">

<h1 class="p1">
    <i class="fa-solid fa-book"></i>เพิ่มหนังสือ</h1>
<div class="content">
    <form action="action.php" method="post">

    <div class="mb-3">
            <label class="form-label">BOOKNAME</label>
            <input type="text" class="form-control" 
            name="tbookname" 
            placeholder="ชื่อหนังสือ....">
</div>
    <div class="mb-3">
            <label class="form-label">AUTHOR</label>
            <input type="text" class="form-control" 
            name="tauthor" 
            placeholder="ชื่อผู้เขียน....">
</div>
    <div class="mb-3">
            <label class="form-label">PRICE</label>
            <input type="number" class="form-control" 
            name="tprice" 
            placeholder="0">
</div>
    <div class="mb-3">
            <label class="form-label">STOCK</label>
            <input type="number" class="form-control" 
            name="tstock" 
            placeholder="0">
</div>
    <div class="mb-3">
            <label class="form-label">BOOKTYPE</label>
            <select class="form-control"
            name="tbooktypeid" 
            placeholder="รหัสหนังสือ....">
<?php
    include"dbcon.php";
    $sql="SELECT * FROM tbbooktype";
    $query=$conn->query($sql);
    while($row=$query->fetch_object()){
?>
            <option value="<?=$row->booktypeid?>">
                <?=$row->booktypename?></option>
<?PHP } ?>
            </select> 
        </div>
        <div>
        <input type="submit" name="bSubmitbookname" class="btn btn-primary" value="เพิ่มหนังสือ"></div>

    </form>
</div>