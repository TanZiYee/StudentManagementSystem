 
          <h1 class="page-header">History Logs</h1>

       <div class="col-md-12">   
      
       <div class="row">
       	<table id="log">
       		<thead>
       		<tr style="border-bottom:1px solid black">
       			<td width="20%"><center>Date/Time</center></td>
       			<td width="50%"></td>
       		</tr>
       		</thead>
       		<tbody style="line-height:10mm" id="log_table">
       		<?php include 'all_logs.php' ?>
       		</tbody>
       	</table>
       </div>
</div>
<script type="text/javascript">
        $(function() {
            $("#log").dataTable(
        { "aaSorting": [[ 0, "asc" ]] }
      );
        });
    </script>
 

