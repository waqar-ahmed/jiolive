<?php 
  $version_code           =   $this->db->get_where('config' , array('title'=>'apk_version_code'))->row()->value;      
  $version_name           =   $this->db->get_where('config' , array('title'=>'apk_version_name'))->row()->value;      
  $whats_new              =   $this->db->get_where('config' , array('title'=>'apk_whats_new'))->row()->value;      
  $apk_url                =   $this->db->get_where('config' , array('title'=>'latest_apk_url'))->row()->value;
  $is_skipable            =   $this->db->get_where('config' , array('title'=>'apk_update_is_skipable'))->row()->value;
 ?>

<?php echo form_open(base_url() . 'admin/android_setting/update/' , array('class' => 'form-horizontal group-border-dashed', 'enctype' => 'multipart/form-data'));?> 
<div class="card">
  <div class="row"> 
    <!-- panel  -->
    <div class="col-md-12">
      <div class="panel panel-border panel-primary">
        <div class="panel-heading">
          <h3 class="panel-title">Android Setting</h3>
        </div>
        <div class="panel-body"> 
          <!-- panel  -->
          <div class="alert alert-success"><strong>Note: </strong>An update popup will be display to old version user based on bellow APK information.</div>
          <div class="form-group row">
            <label class="col-sm-3 control-label">Latest APK Version Name</label>
            <div class="col-sm-9">
              <input type="text"  value="<?php echo $version_name;?>" name="apk_version_name" placeholder="Ex: V1.0.0" class="form-control" required  />
            </div>
          </div>

          <div class="form-group row">
            <label class="col-sm-3 control-label">Latest APK Version Code</label>
            <div class="col-sm-9">
              <input type="number"  value="<?php echo $version_code;?>" name="apk_version_code" placeholder="Ex: 12" class="form-control" required  />
            </div>
          </div>         

          <div class="form-group row">
            <label class="control-label col-sm-3 ">APK File URL</label>
            <div class="col-sm-9">
              <input type="text"  value="<?php echo $apk_url;?>" name="latest_apk_url" placeholder="Ex: PlayStore URL or any other direct download URL" class="form-control" required  />
            </div>
          </div>

          <div class="form-group row">
            <label class="col-sm-3 control-label">What's new on latest APK</label>
            <div class="col-sm-9">
              <textarea type="text" rows="6" name="apk_whats_new" class="form-control"><?php echo $whats_new; ?></textarea>
            </div>
          </div>

          <div class="form-group row">
              <label class="control-label col-sm-3 ">Update Skipable?</label>
              <div class="col-sm-6">
                <div class="toggle">
                  <label>
                    <input type="checkbox" name="apk_update_is_skipable" <?php if($is_skipable =='1'){ echo 'checked';} ?>><span class="button-indecator"></span>
                  </label>
                </div>
              </div>
          </div>

          <div class="col-sm-offset-3 col-sm-9 m-t-15">
            <button type="submit" class="btn btn-sm btn-primary"><span class="btn-label"><i class="fa fa-floppy-o"></i></span>save changes </button>
          </div>
         <?php echo form_close(); ?>
        </div>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript" src="<?php echo base_url(); ?>assets/plugins/parsleyjs/dist/parsley.min.js"></script> 
<script type="text/javascript">
  $(document).ready(function() {
    $('form').parsley();
  });
</script> 

<!-- file select--> 
<script src="<?php echo base_url(); ?>assets/plugins/bootstrap-filestyle/src/bootstrap-filestyle.min.js" type="text/javascript"></script> 
<!-- file select-->

<!--instant image dispaly-->
<script type="text/javascript">
    function showImg(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#landing_page_image')
                    .attr('src', e.target.result)
            };
            reader.readAsDataURL(input.files[0]);
        }
    }

</script>
<!--end instant image dispaly-->

