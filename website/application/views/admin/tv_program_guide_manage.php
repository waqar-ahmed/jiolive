<style type="text/css">
  .select2-container--open .select2-dropdown--below {
      margin-top: 0px;
  }
  .select2-container .select2-selection--single {
    height: 36px;
  }
  .select2-container--default .select2-selection--single .select2-selection__rendered {
    line-height: 32px;
}
</style>

<div class="row card">
  <div class="col-sm-12">
    <div class="row">
      <div class="col-md-3">
        <button data-toggle="modal" data-target="#mymodal" data-id="<?php echo base_url() . 'admin/view_modal/tv_program_guide_add';?>" id="menu" class="btn btn-sm btn-primary waves-effect waves-light"><span class="btn-label"><i class="fa fa-plus"></i></span>Add Program Guide</button>
      <br>
      </div>
      <div class="col-md-9">
      <form class="form-inline pull-right" method="get" action="<?php echo base_url('admin/tv_program_guide') ?>">
          <div class="form-group mx-sm-3 mb-2 ">
            <label for="date" class="sr-only">Date</label>
            <input type="text" name="date" value="<?php if(isset($date)): echo $date;endif; ?>" class="form-control" id="date" placeholder="Date">
          </div>
          <div class="form-group mx-sm-3 mb-2">
            <label for="release" class="sr-only">Live TV</label>
            <select class="form-control select2 " name="live_tv_id" id="live_tv_id">
              <option value="">All TV Channels</option>
              <?php 
                foreach ($all_channels as $channel): 
              ?>
              <option value="<?php echo $channel['live_tv_id']; ?>" <?php if(isset($live_tv_id) && $live_tv_id ==$channel['live_tv_id']){ echo 'selected';} ?>><?php echo $channel['tv_name']; ?></option>
              <?php endforeach; ?>
            </select>
          </div>
          <div class="form-group mx-sm-3 mb-2">
            <label for="release" class="sr-only">Type</label>
            <select class="form-control select2" name="type" id="type">
              <option value="">All</option>
              <option value="onaired" <?php if(isset($type) && $type =='onaired'){ echo 'selected';} ?>>On Aired</option>
              <option value="upcoming" <?php if(isset($type) && $type =='upcoming'){ echo 'selected';} ?>>Upcomming</option>
            </select>
          </div>
          <button type="submit" class="btn btn-primary mb-2"><span class="btn-label"><i class="fa fa-search"></i></span>Search</button>
        </form>
        </div>
      </div>
    </div>          
      <?php if(count($this->db->get('live_tv_program_guide')->result_array())>0): ?>
      <table class="table table-striped" id="datatablessd">
        <thead>
          <tr>
            <th>#</th>
            <th>###</th>
            <th>Program Name</th>
            <th>TV Channel</th>
            <th>Date</th>
            <th>Time</th>
            <th>Type</th>
            <th>Status</th>
          </tr>
        </thead>
        <tbody>
          <?php $sl = 1;
            if($last_row_num)
            $sl = $last_row_num + 1;
            foreach ($program_guides as $program_guide):
          ?>
          <tr id='row_<?php echo $program_guide['live_tv_live_tv_program_guide_id'];?>'>
            <td><?php echo $sl++;?></td>
            <td>
              <div class="btn-group">
                <button type="button" class="btn btn-white btn-sm dropdown-toggle waves-effect waves-light" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></button>
                <ul class="dropdown-menu" role="menu">
                  <li><a class="dropdown-item" href="#" data-toggle="modal" data-target="#mymodal" data-id="<?php echo base_url() . 'admin/view_modal/tv_program_guide_edit/'. $program_guide['live_tv_program_guide_id'];?>" id="menu" title="Edit">Edit</a></li>
                  <li><a class="dropdown-item" title="delete" href="#" onclick="delete_row(<?php echo " 'live_tv_program_guide' ".','.$program_guide['live_tv_program_guide_id'];?>)" class="delete">Delete</a> </li>

                </ul>
              </div>
            </td>
            <td><strong><?php echo $program_guide['title'];?></strong></td>
            <td> <?php echo $this->live_tv_model->get_live_tv_title_by_id($program_guide['live_tv_id']); ?></td>
            <td><?php echo $program_guide['date'];?></td>
            <td><?php echo $program_guide['time'];?></td>
            <td>
              <?php
                if($program_guide['type']=='onaired'){
                    echo 'On Aired';
                }
                else{
                    echo 'Upcoming';
                }
              ?>
            </td>
            <td>
              <?php
                if($program_guide['status']=='1'){
                    echo 'Published';
                }
                else{
                    echo 'Unublished';
                }
              ?>
            </td>
          </tr>
          <?php endforeach;?>
        </tbody>
      </table>
    <?php else: ?>
      <div class="text-center"><h2>No tv program guide found..</h2></div>
    <?php endif; ?>
      <?php echo $links; ?>
      
  </div>
<script src="<?php echo base_url() ?>assets/plugins/select2/dist/js/select2.min.js" type="text/javascript"></script>
<script src="<?php echo base_url() ?>assets/plugins/summernote/dist/summernote.min.js"></script>
<script src="<?php echo base_url() ?>assets/plugins/moment/moment.js"></script>
<script src="<?php echo base_url() ?>assets/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="<?php echo base_url() ?>assets/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/date.js"></script>

<script type="text/javascript">
jQuery(document).ready(function() {
  $(".select2").select2();
});
</script>

<script>
    jQuery(document).ready(function() {
        $('#date').datepicker({
            format: 'yyyy-mm-dd',
            autoclose: true,
            todayHighlight: true
        });
    });
</script>

