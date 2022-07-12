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