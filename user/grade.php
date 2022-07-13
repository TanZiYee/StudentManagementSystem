
          <h3 class="page-header">Grade <small>section</small></h3> 
      
       <div class="col-md-8 " id="s_page">
        
             
              <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">List of Grades</h3>
        </div> 
        <div class="panel-body">  

  <table id="students" class="table table-hover table-bordered">
    <thead>
      <tr>
        <th style="width:20%">Grade</th>
        <th style="width:10%"></th>
      </tr>
    </thead>
    <tbody>
    <?php
    include 'db.php';

    
    $sql=  mysqli_query($conn, "SELECT * FROM grade Order by grade_id ASC ");
    while($row = mysqli_fetch_assoc($sql)) {

        $count = mysqli_num_rows($sql);
     
    ?>

      <tr>
         <input type="hidden" id="id<?php echo $row["grade_id"] ?>" name="id" value="<?php echo $row['grade_id'] ?>">
        <td><input id="grade<?php echo $row["grade_id"] ?>"  name="" type="text" style="border:0px" value="<?php echo $row['grade'] ?>" readonly></td>
      </tr>
    
      <?php
    
    }
     mysqli_close($conn);
      ?>
      
    </tbody>
  </table>
</div>
</div>
</div>

<script>
  function update_grade($i){
   var i = $i;
      $("#id").val($("#id"+i).val());
      $("#grade").val($("#grade"+i).val());
      $("#head").html('Update Grade');
      $("#btn_add").html('Update');
     
  
     



  }
</script>
