<?php 
  $app_menu                 = $this->db->get_where('config' , array('title' =>'app_menu'))->row()->value;
  $app_program_guide_enable = $this->db->get_where('config' , array('title' =>'app_program_guide_enable'))->row()->value;
  $app_mandatory_login      = $this->db->get_where('config' , array('title' =>'app_mandatory_login'))->row()->value;
  $genre_visible            = $this->db->get_where('config' , array('title' =>'genre_visible'))->row()->value;
  $country_visible          = $this->db->get_where('config' , array('title' =>'country_visible'))->row()->value;
  $video_file_order         =   $this->db->get_where('config', array('title' => 'video_file_order'))->row()->value;
  $season_order             =   $this->db->get_where('config', array('title' => 'season_order'))->row()->value;
  $episode_order            =   $this->db->get_where('config', array('title' => 'episode_order'))->row()->value;
 ?>

<?php echo form_open(base_url() . 'admin/system_setting/update/' , array('class' => 'form-horizontal group-border-dashed', 'enctype' => 'multipart/form-data'));?> 
<div class="card">
  <div class="row"> 
    <!-- panel  -->
    <div class="col-md-12">
      <div class="panel panel-border panel-primary">
        <div class="panel-heading">
          <h3 class="panel-title">System Setting</h3>
        </div>
        <div class="panel-body"> 
          <!-- panel  -->
          <div class="form-group row">
            <label class="col-sm-3 control-label">Purchase Code</label>
            <div class="col-sm-9">
              <input type="text"  value="<?php echo $this->db->get_where('config' , array('title' =>'purchase_code'))->row()->value;?>" name="purchase_code" class="form-control" required  />
            </div>
          </div>

          <div class="form-group row">
            <label class="col-sm-3 control-label"><strong>Terms URL FOR ANDROID</strong></label>
            <div class="col-sm-9">
              <input type="text"  value="<?php echo base_url('terms/') ?>" readonly class="form-control" required data-parsley-length="[14, 128]" />
              <p><small>Copy &amp; paste this URL to Android Source Code.</small></p>
            </div>
          </div>

          <div class="form-group row">
            <label class="control-label col-md-3">Navigation Menu</label>
            <div class="col-sm-3">
                <select class="form-control m-bot15" id="app_menu" name="app_menu">
                  <option value="grid" <?php if($app_menu == 'grid'){echo 'selected';}?> >Grid</option>
                  <option value="vertical" <?php if($app_menu == 'vertical'){echo 'selected';}?> >Vertical</option>
                </select>
                <p><small>Close app then reopen to take effect any changes.</small></p>
            </div>
          </div>

          <div class="form-group row">
            <label class="control-label col-md-3">TV Program Guide</label>
            <div class="col-sm-3">
                <select class="form-control m-bot15" id="app_program_guide_enable" name="app_program_guide_enable">
                  <option value="true" <?php if($app_program_guide_enable == 'true'){echo 'selected';}?> >Enable</option>
                  <option value="false" <?php if($app_program_guide_enable == 'false'){echo 'selected';}?> >Disable</option>
                </select>
                <p><small>Close app then reopen to take effect any changes.</small></p>
            </div>
          </div>

          <div class="form-group row">
            <label class="control-label col-md-3">Mandatory Login</label>
            <div class="col-sm-3">
                <select class="form-control m-bot15" id="app_mandatory_login" name="app_mandatory_login">
                  <option value="true" <?php if($app_mandatory_login == 'true'){echo 'selected';}?> >Enable</option>
                  <option value="false" <?php if($app_mandatory_login == 'false'){echo 'selected';}?> >Disable</option>
                </select>
                <p><small>Close app then reopen to take effect any changes.</small></p>
            </div>
          </div>

          <div class="form-group row">
            <label class="control-label col-md-3">Display Genre on App Home</label>
            <div class="col-sm-3">
                <select class="form-control m-bot15" id="genre_visible" name="genre_visible">
                  <option value="true" <?php if($genre_visible == 'true'){echo 'selected';}?> >Yes</option>
                  <option value="false" <?php if($genre_visible == 'false'){echo 'selected';}?> >No</option>
                </select>
                <p><small>Close app then reopen to take effect any changes.</small></p>
            </div>
          </div>

          <div class="form-group row">
            <label class="control-label col-md-3">Country Genre on App Home</label>
            <div class="col-sm-3">
                <select class="form-control m-bot15" id="country_visible" name="country_visible">
                  <option value="true" <?php if($country_visible == 'true'){echo 'selected';}?> >Yes</option>
                  <option value="false" <?php if($country_visible == 'false'){echo 'selected';}?> >No</option>
                </select>
                <p><small>Close app then reopen to take effect any changes.</small></p>
            </div>
          </div>

          <div class="form-group row">
            <label class="col-sm-3 control-label">Site Name</label>
            <div class="col-sm-9">
              <input type="text"  value="<?php echo $this->db->get_where('config' , array('title' =>'site_name'))->row()->value;?>" name="site_name" class="form-control" required  />
            </div>
          </div>         

          <div class="form-group row">
            <label class="col-sm-3 control-label">Address</label>
            <div class="col-sm-9">
              <textarea rows="5" name="business_address" class="form-control"><?php echo $this->db->get_where('config' , array('title' =>'business_address'))->row()->value;?></textarea>
            </div>
          </div>
          <div class="form-group row">
            <label class="col-sm-3 control-label">Phone</label>
            <div class="col-sm-9">
              <input type="number"  value="<?php echo $this->db->get_where('config' , array('title' =>'business_phone'))->row()->value;?>" name="business_phone" class="form-control" data-parsley-length="[10, 14]"  />
            </div>
          </div>
          <div class="form-group row">
            <label class="col-sm-3 control-label">System Email</label>
            <div class="col-sm-9">
              <input type="email"  value="<?php echo $this->db->get_where('config' , array('title' =>'system_email'))->row()->value;?>" name="system_email" class="form-control"   />
            </div>
          </div>

          <div class="form-group row">
            <label class="col-sm-3 control-label">Contact Email</label>
            <div class="col-sm-9">
              <input type="email"  value="<?php echo $this->db->get_where('config' , array('title' =>'contact_email'))->row()->value;?>" name="contact_email" class="form-control"   />
            </div>
          </div>

          <div class="form-group row">
            <label class="col-sm-3 control-label">Terms &amp; conditions</label>
            <div class="col-sm-9">
              <textarea name="terms" id="terms_text" rows="10" class="form-control"><?php echo $this->db->get_where('config' , array('title' =>'terms'))->row()->value;?></textarea>
              <p><small>HTML is allowed</small></p>
            </div>
          </div>

          <div class="form-group row">
            <label class="control-label col-sm-3 "><?php echo trans('video_file_order'); ?></label>
            <div class="col-sm-3">
              <select class="form-control" name="video_file_order" required>
                  <option value="ASC" <?php if ($video_file_order == "ASC") { echo "selected";} ?>><?php echo trans('ascending'); ?></option>
                  <option value="DESC" <?php if ($video_file_order == "DESC") { echo "selected";} ?>><?php echo trans('descending'); ?></option>
                </select>
            </div>
          </div>

          <div class="form-group row">
            <label class="control-label col-sm-3 "><?php echo trans('season_order'); ?></label>
            <div class="col-sm-3">
              <select class="form-control" name="season_order" required>
                  <option value="ASC" <?php if ($season_order == "ASC") { echo "selected";} ?>><?php echo trans('ascending'); ?></option>
                  <option value="DESC" <?php if ($season_order == "DESC") { echo "selected";} ?>><?php echo trans('descending'); ?></option>
                </select>
            </div>
          </div>

          <div class="form-group row">
            <label class="control-label col-sm-3 "><?php echo trans('episode_order'); ?></label>
            <div class="col-sm-3">
              <select class="form-control" name="episode_order" required>
                  <option value="ASC" <?php if ($episode_order == "ASC") { echo "selected";} ?>><?php echo trans('ascending'); ?></option>
                  <option value="DESC" <?php if ($episode_order == "DESC") { echo "selected";} ?>><?php echo trans('descending'); ?></option>
                </select>
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
<script src="<?php echo base_url() ?>assets/plugins/summernote/dist/summernote.min.js"></script>
<script type="text/javascript">
  $(document).ready(function() {
    $('#terms_text').summernote({
        height: 200, // set editor height
        minHeight: null, // set minimum height of editor
        maxHeight: null, // set maximum height of editor
        focus: false // set focus to editable area after initializing summernote
    });
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

