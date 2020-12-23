<?php echo form_open(base_url() . 'admin/country/add/' , array('class' => 'form-horizontal group-border-dashed', 'enctype' => 'multipart/form-data'));?>

<h4 class="text-center">New Country Add</h4>
<hr>
<div class="form-group">
    <label class=" col-sm-3 control-label">Name</label>
    <div class="col-sm-12">
        <input type="text" name="name" class="form-control" required>
    </div>
</div>
                    
<div class="form-group">
    <label class="control-label col-md-3">Description</label>
    <div class="col-md-12">
        <textarea class="wysihtml5 form-control" name="description" rows="10"></textarea>
    </div>
</div>

<div class="form-group">
  <label class="control-label col-sm-3">Icon</label>  
  <div class="col-sm-12" >
    <div class="profile-info-name text-center"> <img id="thumb_image" src="<?php echo base_url('uploads/default_image/country.png') ?>" class="img-thumbnail" alt="genre" width="120"> </div>
    <br>
    <div id="thumbnail_content">
    <input type="file" id="thumbnail_file" onchange="showImg(this);" name="image" class="filestyle" data-input="false" accept="image/*"></div><br>
    <p class="btn btn-white" id="thumb_link" href="#"><span class="btn-label"><i class="fa fa-link"></i></span>Link</p>
    <p class="btn btn-white" id="thumb_file" href="#"><span class="btn-label"><i class="fa fa-file-o"></i></span>File</p><br>
    <small>Max 512x512,Only PNG is allowed.</small>
  </div>
</div>
                    
<div class="form-group">
    <label class="control-label col-md-3">Publication</label>
    <div class="col-sm-12">
        <select class="form-control m-bot15" name="publication">
        <option value="1">Published</option>
        <option value="0">Unpublished</option>
        </select>
    </div>
</div>

<div class="form-group">
  <div class="col-sm-offset-3 col-sm-9 m-t-15">
    <button type="submit" class="btn btn-sm btn-primary waves-effect"> <span class="btn-label"><i class="fa fa-plus"></i></span>CREATE </button>
    <button type="" class="btn btn-sm btn-white m-l-5 waves-effect" data-dismiss="modal">CLOSE </button>
  </div>
</div>
<?php form_close(); ?>
<script>
    jQuery(document).ready(function() {
      $('form').parsley();
    });
</script>

<script>
  jQuery(document).ready(function(){
    $('#thumb_link').click(function(){
      $('#thumbnail_content').html('<input type="text" name="image_link" class="form-control">');
    });

    $('#thumb_file').click(function(){
      $('#thumbnail_content').html('<input type="file" id="thumbnail_file" onchange="showImg(this);" name="image" class="filestyle" data-input="false" accept="image/*"></div>');
    });

  });
</script>

<!--instant image dispaly--> 
<script type="text/javascript">
 function showImg(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#thumb_image')
                .attr('src', e.target.result)                        
        };
        reader.readAsDataURL(input.files[0]);
      }
  }
</script> 
<!--end instant image dispaly--> 
