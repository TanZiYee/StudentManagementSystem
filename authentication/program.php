<?php
include 'newcurriculm.php';
?>
<script>
    $(document).ready(function(){

    $(document).on('click', '#get_sub', function(e){
  
     e.preventDefault();
  
     var prog = $(this).data('id');      
 
     $.ajax({
          url: 'get_subject.php',
          type: 'POST',
          data: 'prog='+prog,
          beforeSend:function()
{
 $("#content").html('Working on Please wait ..');
},
success:function(data)
{
   $("#content").html(data);
},
     })

    });
})
  </script>
          <h3 class="page-header">Curriculum</h3>
          
<?php

if (!isset($_SERVER['PHP_AUTH_USER'])) {
    header('WWW-Authenticate: Basic realm="My Realm"');
    header('HTTP/1.0 401 Unauthorized');
    echo 'Text to send if user hits Cancel button';
    exit;
} else {
    echo "<p>Hello {$_SERVER['PHP_AUTH_USER']}.</p>";
    echo "<p>You entered {$_SERVER['PHP_AUTH_PW']} as your password.</p>";
}
?>        
  
       <div class="col-md-8">
       <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">List of Curriculum</h3>
        </div> 
        <div class="panel-body">     
  <table id="students" class="table table-hover table-bordered">
    <thead>
      <tr id="heads">
        <th style="width:10%">Curriculum</th>
        <th style="width:30%">Description</th>
        <th style="width:20%"></th>
      </tr>
    </thead>
    <tbody>
    <?php
    include 'db.php';
    $sql=  mysqli_query($conn, "SELECT * FROM program Order by PROGRAM");
    while($row = mysqli_fetch_assoc($sql)) {


    ?>
    <form method="post" action="update_program.php">
      <tr>
      <input type="hidden" name="id" value="<?php echo $row['PROGRAM_ID'] ?>">
        <td><input  name="prog" type="text" style="border:0px" value="<?php echo $row['PROGRAM'] ?>"></td>
        <td><textarea  name="desc" type="text" style="border:0px;width:100%" ><?php echo $row['DESCRIPTION'] ?></textarea></td>
        <td><center><a  data-toggle="modal" data-target="#program" data-id="<?php echo $row['PROGRAM'] ?>" id="get_sub"></a></center></td>
      </tr>
      </form>
      <?php
    } mysqli_close($conn);
      ?>
      
    </tbody>
  </table>
</div>
</div>
</div>


      <div class="col-md-4">
        
            <div class="container frm-new">
      <div class="row main">
        <div class="main-login main-center">
        <h3>Add New Curriculum</h3>
          <form class="" method="post" >
            <input type="hidden" name="id">
            <div class="form-group">
              <label for="sub" class="cols-sm-2 control-label">Curriculum</label>
              <div class="cols-sm-4">
                <div class="input-group">
                  <input type="text" class="form-control" name="cur" id="sub"
                  style="width:225px"  placeholder="Enter Curriculum" value="<?php if(isset($_POST['cur'])){echo $_POST['cur'];} ?>"/>
                  <p>
            <?php if(isset($errors['cur'])){echo "<br><br><div class='erlert'><h5>" .$errors['cur']. "</h5></div>"; } ?>
            </p>
                </div>
              </div>
            </div>

            <div class="form-group">
              <label for="des" class="cols-sm-2 control-label">Description</label>
              <div class="cols-sm-4">
                <div class="input-group">
                  <textarea type="text" class="form-control" name="des" id="des"  
                  style="width:225px;height:50px" placeholder="Enter Description" value="<?php if(isset($_POST['des'])){echo $_POST['des'];} ?>" ></textarea>
                  <p>
            <?php if(isset($errors['des'])){echo "<br><br><br><div class='erlert'><h5>" .$errors['des']. "</h5></div>"; } ?>
            </p>
                </div>
              </div>
            </div>


            <div class="form-group ">
            <input type="reset" class="btn btn-info" id="reset" name="reset" value="Cancel">
              <button  class="btn btn-info" id="submit">Add</button>
            </div>
            
          </form>
        </div>
      </div>

    </div>
   

