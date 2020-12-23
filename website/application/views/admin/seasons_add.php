<?php echo form_open(base_url() . 'admin/seasons_manage/add/' , array('class' => 'form-horizontal group-border-dashed', 'enctype' => 'multipart/form-data'));?>

<h4 class="text-center">New Seasons information</h4>
<hr>
<div class="form-group row">
  <label class="col-sm-3 control-label">Seasons Name</label>
  <div class="col-sm-9">
    <input type="text"  name="seasons_name" class="form-control" placeholder="Enter user full name" required/>
  </div>
</div>

<div class="form-group row">
  <label class="col-sm-3 control-label">Order</label>
  <div class="col-sm-9">
    <input type="number"  name="order" class="form-control" placeholder="Ex: 1" required/>
  </div>
</div>
<input type="hidden" name="videos_id" value="<?php echo $param2; ?>">


<div class="form-group row">
  <div class="col-sm-offset-3 col-sm-6 m-t-15">
    <button type="submit" class="btn btn-sm btn-primary waves-effect"> <span class="btn-label"><i class="fa fa-plus"></i></span>CREATE </button>
    <button type="" class="btn btn-sm btn-white m-l-5 waves-effect" data-dismiss="modal">CLOSE </button>
  </div>
  <!-- End col-6 --> 
</div>
<!-- end form -group -->
</form>
<script>
        jQuery(document).ready(function() {
          $('form').parsley();                            

          });
</script> 
