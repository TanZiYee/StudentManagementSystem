          <h1 class="page-header">Promoted Students Candidates </h1>


       <div class="col-md-12"> 
       <div class="row">
      <div class="alert alert-success" id="correct"> Student is now removed from Candidate of Promotion!</div>
        </div>   
       <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">Students List</h3>
        </div> 
        <div class="panel-body"> 

      <form id="promote" method="POST" >
  <table id="students" class="table table-bordered">
  <center> <button class="btn btn-info" onclick="confirm('ARE YOU SURE YOU WANT THEM TO REMOVED FROM LIST?')" type="submit">Remove</button></center>
        <input type="hidden" name="sy" id="sy">
    <thead>
      <tr id="heads">
       
       
        <th style="width:10%">LRN NO.</th>
        <th style="width:20%">Name</th>
        <th style="width:10%">Gender</th>
        <th style="width:10%">Curriculum</th>
        <th style="width:10%"><center><label><input type="checkbox" id="selectall">Select All</label></center></th>
      </tr>
    </thead>
    <tbody>

      </form>
    </tbody>
  </table>
</div>
</div>
</div>
 <script type="text/javascript">

        $(function() {

            $("#students").dataTable(
        { "aaSorting": [[ 0, "asc" ]] }
      );

        }); 


    </script>
    <script>
    jQuery(document).ready(function(){
            $('#correct').hide()
            jQuery("#promote").submit(function(e){
                e.preventDefault();
                var formData = jQuery(this).serialize();
                var sy =$('#sy').val();
                $.ajax({
                  type: "POST",
                  url: "del_promote.php",
                  data: formData,
                  success: function(html){
                  if(html=='true' )
                  {
                    $("#correct").slideDown();
                    var delay = 2000;
                    setTimeout(function(){  window.location.href='rms.php?page=candidates_list&sy='+sy;   }, delay);  
                  }                  }
                });
                  return false;
            
            });
            });
  
</script>
    <script>
        $("#selectall").click(function() 
{   $('.checkitems').prop("checked", $(this).prop("checked"));
});


  </script>