
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
  <title>Create User</title>
  <link rel="stylesheet" type="text/css" href="css/style2.css">
  <link rel="stylesheet" type="text/css" href="css/table.css">
    <link rel="stylesheet" type="text/css" href="css/navbar.css">
    <style>
    
    .container{
      background-color:orange;
      box-shadow: 8px 10px grey;
      border-radius:20px;
      
    }
   .buttons{
    
      margin-top:20px;
      text-align:center;
      margin-bottom:20px;
      width:40%;
      text-align:center;
      align:center;
      margin-left:30%;
    }
    
    </style>
</head>

<body style="background-image: url('shikhar.jpg') ;background-position: center; background-size:cover;background-repeat: no-repeat;background-attachment:fixed;">
<?php
    include 'db.php';
    if(isset($_POST['submit'])){
    $name=$_POST['name'];
    $email=$_POST['email'];
    $balance=$_POST['balance'];
    $sql="insert into users(name,email,balance)  values('{$name}','{$email}','{$balance}')";
    $result=mysqli_query($conn,$sql);
    if($result){
               echo "<script> alert('Congratulations! Your Account Created');
                               window.location='transfermoney.php';
                     </script>";
                    
    }
  }
?>

<?php
  include 'navbar.php';
?>

 
  <div class="container style:background-color:orange;">
    <!-- <img src="img/user.jpg" class="image"> -->
    <h1 style="margin-top:20px;">Create User</h1>

    <form  method="POST">
      
        <p>Name:-</p>
        <input class="app-form-control" placeholder="NAME" type="text" style="width:95%; margin-top:-10px;" name="name" required>
     
      
        <p>Email Address:-</p>
        <input class="app-form-control" placeholder="EMAIL" style="width:95%;margin-top:-10px;" type="email" name="email" required>
     
      
        <p>BALANCE:-</p>
        <input class="app-form-control" placeholder="BALANCE" style="width:95%;margin-top:-10px;" type="number" name="balance" required>
     
      <br>
    
      <div class="buttons">
      <input class="button" type="submit" value="CREATE" name="submit" style="margin: 5px;margin-top: 7px;align:center; background-color: blue;"></input>
        <input class="button1" type="reset" value="RESET" name="reset" style="margin: 5px; background-color: blue;"></input>
      </div>
       
     
    </form>
  </div>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>