<h1 class="page-header">CURRICULUM</h1>
     
       <div class="col-md-8 " id="s_page">
        
             
              <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">List of Curriculum</h3>
        </div> 
        <div class="panel-body">  

  <table id="students" class="table table-hover table-bordered">
    <thead>
      <tr>
        <th style="width:20%">Curriculum</th>
        <th style="width:10%">Applicable For</th>
        <th style="width:10%">Description</th>
        <th style="width:10%"></th>
      </tr>
    </thead>
  </table>
</div>
</div>
</div>


      <div class="col-md-4" id="">
        
            <div class="container frm-new">
      <div class="row main">
        <div class="main-login main-center">
        <h3 id="head">Add New Curriculum</h3>
          <form class="" method="post">
            <input type="hidden" id="id" name="id">
            <div class="form-group">
              <label for="sub" class="cols-sm-2 control-label">Subject</label>
              <div class="cols-sm-4">
                <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-book fa" aria-hidden="true"></i></span>
                  <input type="text" class="form-control" id="sub" name="sub" id="sub"
                  style="width:200px"  placeholder="Enter Subject"
                </div>
                 <p>
            
            </p>
              </div>
            </div>
            <div class="form-group">
              <label for="sub" class="cols-sm-2 control-label">For</label>
              <div class="cols-sm-4">
                <div class="input-group">
                  <select name="f" class="form-control" id="para1">
                  <option id="para"></option>
                  <option>All</option>
                  <option value="<?php echo $row['PROGRAM'] ?>">
                  </option>
                  </select>
                </div>
              </div>
            </div>

            <div class="form-group">
              <label for="des" class="cols-sm-2 control-label">Description</label>
              <div class="cols-sm-4">
                <div class="input-group">
                  <textarea type="text" class="form-control" name="des" id="des"  
                  style="width:225px;height:50px" placeholder="Enter Description" value="<?php if(isset($_POST['des'])){echo $_POST['des'];} ?>"/></textarea>
                </div>


            <div class="form-group ">
            <input type="reset" class="btn btn-info " id="reset" name="reset" value="Cancel">
              <button class="btn btn-info" id="btn_add">Add</button>
            </div>
            
          </form>
        </div>
      </div>