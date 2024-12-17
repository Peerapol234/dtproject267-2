<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">

<h1 class="p1">
    <i class="fa-solid fa-book"></i>เลือกประเภทหนังสือ</h1>
<div class="content">
    <form action="action.php" method="post">

    <div class="mb-3">
            <label class="form-label">BOOKTYPENAME</label>
            <input type="text" class="form-control" 
            name="tbooktypename" 
            placeholder="ชื่อประเภท....">
        </div>          
        <div>
        <input type="submit" name="bSubmitbooktypename" class="btn btn-primary" value="เพิ่มหนังสือ"></div>
    </form>
</div>