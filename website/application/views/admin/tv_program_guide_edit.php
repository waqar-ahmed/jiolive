<?php
    $users    = $this->db->get_where('live_tv_program_guide' , array('live_tv_program_guide_id' => $param2) )->result_array();
    foreach ( $users as $row):
?>

<?php echo form_open(base_url() . 'admin/tv_program_guide/update/'.$row['live_tv_program_guide_id'] , array('class' => 'form-horizontal group-border-dashed', 'enctype' => 'multipart/form-data'));?>

<h4 class="text-center">Edit TV Program Guide</h4>
<hr>
<div class="form-group">
  <label class="control-label">TV Channel</label>
  <select  class="form-control"  name="live_tv_id" required>
    <?php 
      $tvs = $this->live_tv_model->get_all_live_tv();
      foreach ($tvs as $tv):
    ?>
    <option value="<?php echo $tv['live_tv_id']; ?>" <?php if($row['live_tv_id'] == $tv['live_tv_id']): echo "selected"; endif; ?>><?php echo $tv['tv_name']; ?></option>
    <?php endforeach; ?>
  </select>
</div>

<div class="form-group">
  <label class="control-label">Program Title</label>
  <input type="text"  value="<?php echo $row['title']; ?>" name="title" class="form-control" placeholder="Enter program title" />
</div>

<div class="form-group">
  <label class="control-label">Date</label>
  <input type="text"  value="<?php echo $row['date']; ?>" name="date"  class="form-control"  placeholder="Enter date" />
</div>

<div class="form-group">
  <label class="control-label">Time</label>
  <input type="text"  value="<?php echo $row['time']; ?>" name="time"  class="form-control"  placeholder="Enter time" />
</div>

<div class="form-group">
  <label class="control-label">Type</label>
  <select  class="form-control" id="type" name="type" required>
    <option value="upcoming" <?php if($row['type'] =="upcoming"): echo "selected"; endif; ?>>Upcoming</option>
    <option value="onaired" <?php if($row['type'] =="onaired"): echo "selected"; endif; ?>>On Aired</option>
  </select>
</div>
<div class="form-group" id="video-url" <?php if($row['type'] == "upcoming"): echo 'style="display: none;"'; endif; ?>>
  <label class="control-label">Video URL</label>
  <input type="text"  value="<?php echo $row['video_url']; ?>" name="video_url"  class="form-control"  placeholder="Enter video URL" />
  <small>Only mp4,mkv,webm and direct video url is allowed.</small>
</div>

<div class="form-group">
  <label class="control-label">Status</label>
  <select  class="form-control"  name="status" required>
    <option value="1" <?php if($row['status'] =="1"): echo "selected"; endif; ?>>Publish</option>
    <option value="0" <?php if($row['status'] =="0"): echo "selected"; endif; ?>>Unpublish</option>
  </select>
</div>

<div class="form-group">
  <div class="col-sm-offset-3 col-sm-9 m-t-15">
    <button type="submit" class="btn btn-sm btn-primary waves-effect"> <span class="btn-label"><i class="fa fa-floppy-o"></i></span>SAVE CHANGES</button>
    <button type="" class="btn btn-sm btn-white m-l-5 waves-effect" data-dismiss="modal">CLOSE </button>
  </div>
</div>
</form>
<?php endforeach; ?>
<script type="text/javascript">
  $(document).ready(function(){
      $("select#type").change(function(){
          var type = $(this).children("option:selected").val();
          if(type =="onaired"){
            $("#video-url").fadeIn('slow');
          }
          else{
            $("#video-url").fadeOut("slow");
          }
      });
  });
</script>
