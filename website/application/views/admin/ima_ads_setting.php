<?php 
    $preroll_ads_enable               =   $this->db->get_where('config' , array('title' => 'preroll_ads_enable'))->row()->value;
    $preroll_ads_video                   =   $this->db->get_where('config' , array('title' => 'preroll_ads_video'))->row()->value;
 ?>
 <?php echo form_open(base_url() . 'admin/ima_ads_setting/update/' , array('class' => 'form-horizontal group-border-dashed', 'enctype' => 'multipart/form-data'));?>
<div class="card">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-border panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Admob Setting</h3>
                </div>

                <div class="form-group row">
                    <label class="control-label col-sm-3 ">IMA Ads Enable</label>
                    <div class="col-sm-6">
                      <div class="toggle">
                        <label>
                          <input type="checkbox" name="preroll_ads_enable" <?php if($preroll_ads_enable =='1'){ echo 'checked';} ?>><span class="button-indecator"></span>
                        </label>
                      </div>
                    </div>
                </div>


                <div class="form-group row">
                    <label class="col-sm-3 control-label">Ads Video URL(MP4 Only)</label>
                    <div class="col-sm-9">
                      <input type="text"  value="<?php echo $preroll_ads_video;?>" data-parsley-minlength="16" name="preroll_ads_video" class="form-control" required  />
                    </div>
                </div>


                <div class="col-sm-offset-3 col-sm-9 m-t-15">
                    <button type="submit" class="btn btn-sm btn-primary"><span class="btn-label"><i class="fa fa-floppy-o"></i></span>save changes </button>
                </div>

            </div>
        </div>
    </div>
</div>
<?php echo form_close(); ?>

<script type="text/javascript" src="<?php echo base_url(); ?>assets/plugins/parsleyjs/dist/parsley.min.js"></script> 
<script type="text/javascript">
  $(document).ready(function() {
    $('form').parsley();
  });
</script> 