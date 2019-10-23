<?php
require './libs/students.php';
$students = get_all_students();
disconnect_db();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Danh sách sinh viên</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
    <center><h1>Danh sách sinh viên</h1>
       <a href="student-add.php"><h3>Thêm sinh viên</h3></a></center>
       
       <div class="container">
        <div class="row text-center">
            <table class="table table-bordered mt-1">
                <thead>
                    <tr>
                        <td><b><h4>STT</h4></b></td>
                        <td><b><h4>HỌ VÀ TÊN</h4></b></td>
                        <td><b><h4>GIỚI TÍNH</h4></b></td>
                        <td><b><h4>NGÀY SINH</h4></b></td>
                        <td><b><h4>CHỨC NĂNG</h4></b></td>
                    </thead>
                    <tbody>
                        <?php foreach ($students as $item){ ?>
                            <tr>
                                <td><?php echo $item['sv_id']; ?></td>
                                <td><?php echo $item['sv_name']; ?></td>
                                <td><?php echo $item['sv_sex']; ?></td>
                                <td><?php echo $item['sv_birthday']; ?></td>
                                <td>
                                    <form method="post" action="student-delete.php">
                                        <input onclick="window.location = 'student-edit.php?id=<?php echo $item['sv_id']; ?>'" type="button" value="Sửa"/>
                                        <input type="hidden" name="id" value="<?php echo $item['sv_id']; ?>"/>
                                        <input onclick="return confirm('Bạn có chắc muốn xóa không?');" type="submit" name="delete" value="Xóa"/>
                                    </form>
                                </td>
                            </tr>
                        <?php } ?>
                    </tbody>

                </table>
            </div>            
        </div>
    </body>
    </html>