<?php echo form_open(base_url() . 'admin/tv_program_guide/add/' , array('class' => 'form-horizontal group-border-dashed', 'enctype' => 'multipart/form-data'));?>

<h4 class="text-center">Add TV Program Guide</h4>
<hr>
<div class="form-group">
  <label class="control-label">TV Channel</label>
  <select  class="form-control"  name="live_tv_id" required>
    <?php 
      $tvs = $this->live_tv_model->get_all_live_tv();
      foreach ($tvs as $tv):
    ?>
    <option value="<?php echo $tv['live_tv_id']; ?>"><?php echo $tv['tv_name']; ?></option>
    <?php endforeach; ?>
  </select>
</div>

<div class="form-group">
  <label class="control-label">Program Title</label>
  <input type="text"  name="title" class="form-control" placeholder="Enter program title" />
</div>

<div class="form-group">
  <label class="control-label">Date</label>
  <input type="text"  name="date"  class="form-control"  placeholder="Enter date" />
</div>

<div class="form-group">
  <label class="control-label">Time</label>
  <input type="text"  name="time"  class="form-control"  placeholder="Enter time" />
</div>

<div class="form-group">
  <label class="control-label">Type</label>
  <select  class="form-control" id="type" name="type" required>
    <option value="upcoming">Upcoming</option>
    <option value="onaired">On Aired</option>
  </select>
</div>
<div class="form-group" id="video-url" style="display: none;">
  <label class="control-label">Video URL</label>
  <input type="text"  name="video_url"  class="form-control"  placeholder="Enter video URL" />
  <small>Only mp4,mkv,webm and direct video url is allowed.</small>
</div>

<div class="form-group">
  <label class="control-label">Status</label>
  <select  class="form-control"  name="status" required>
    <option value="1">Publish</option>
    <option value="0">Unpublish</option>
  </select>
</div>

<div class="form-group">
  <div class="col-sm-offset-3 col-sm-9 m-t-15">
    <button type="submit" class="btn btn-sm btn-primary waves-effect"> <span class="btn-label"><i class="fa fa-plus"></i></span>CREATE </button>
    <button type="" class="btn btn-sm btn-white m-l-5 waves-effect" data-dismiss="modal">CLOSE </button>
  </div>
</div>
</form>
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
