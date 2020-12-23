<?php
    $site_name          =   $this->db->get_where('config' , array('title' => 'site_name'))->row()->value;
    $users    = $this->db->get_where('videos' , array('videos_id' => $param2) )->result_array();
    foreach ( $users as $row):
?>
<?php echo form_open(base_url() . 'admin/send_custom_movie_notification' , array('class' => 'form-horizontal group-border-dashed', 'enctype' => 'multipart/form-data'));?>

<h4 class="text-center">Send Push Notification</h4>
<hr>
<input type="hidden" name="videos_id" value="<?php echo $row['videos_id']; ?>">
<div class="form-group">
  <label class="control-label">Notification Title</label>
  <input type="text"  name="headings" value="<?php echo "New Movie Release-".$row['title']; ?>" class="form-control" placeholder="Enter notification title" />
</div>
<div class="form-group">
  <label class="control-label">Message</label>
    <textarea  rows="5" name="message" class="form-control"  placeholder="Enter your message"><?php echo "Watch ".$row['title']." on ".$site_name; ?></textarea>
</div>
<?php endforeach; ?>
<div class="form-group">
  <div class="col-sm-offset-3 col-sm-9 m-t-15">
    <button type="submit" class="btn btn-sm btn-primary waves-effect"><span class="btn-label"><i class="fa fa-bell"></i></span>Send Notification</button>
    <button type="" class="btn btn-sm btn-white m-l-5 waves-effect" data-dismiss="modal">CLOSE </button>
  </div>
</div>
</form>
<script>
  jQuery(document).ready(function() {
    $(".select2").select2();
    $('form').parsley();                            

  });
</script> 
