<style type="text/css">
    .p-a{
        padding: 10px;
    }
    .bootstrap-tagsinput .badge {;
        background-color: #009688;
        border: 1px solid #035d54;
    }
    button.close {
        padding: 0px;
    }
</style>

<?php echo form_open(base_url() . 'admin/manage_live_tv/add/' , array('class' => 'form-horizontal group-border-dashed', 'enctype' => 'multipart/form-data'));?>
<div class="card">
    <div class="row">
      <div class="col-sm-6">
        <h4 class="text-center">TV Channel Info</h4>
        <hr>

        <div class="form-group">
          <label class=" control-label">TV Name</label>
            <input type="text"  name="tv_name" id="title" class="form-control" placeholder="Enter TV channel name" required />
        </div>
        <!-- end form -group --> 

        <div class="form-group">
          <label class="control-label ">Description</label>
            <textarea class="wysihtml5 form-control" name="description" id="about_text" rows="10"></textarea>
        </div>
        <div class="form-group">
          <label class=" control-label">Category</label>
            <select  class="form-control"  name="live_tv_category_id" required>
              <option value="">Select</option>
              <?php 
                $live_tv_categories = $this->db->get_where('live_tv_category',array('status'=>'1'))->result_array();
                foreach ($live_tv_categories as $live_tv_category):
              ?>

              <option value="<?php echo $live_tv_category['live_tv_category_id']; ?>"><?php echo $live_tv_category['live_tv_category']; ?></option>
              <?php endforeach; ?>
            </select>
        </div>
        <div class="row">
          <div class="form-group col-md-3">
            <label class=" control-label">Stream From</label>
            <select  class="form-control"  name="stream_from" required>
              <option value="">From</option>
              <option value="hls" selected>HLS/M3U8/HTTP</option>
              <option value="rtmp">RTMP</option>
              <option value="youtube_live">Youtube Live</option>
              <option value="embed">Embed</option>
            </select>
          </div>
          <div class="form-group col-md-3">
            <label class="control-label">Label</label>
            <input type="text"  name="stream_label" value="HD"  class="form-control"  placeholder="Enter label" required />
          </div>
          <div class="form-group col-md-6 align-self-end">
            <label class="control-label">Stream URL</label>
            <input type="text"  name="stream_url"  class="form-control"  placeholder="Primary/high quality stream URL" required />
          </div>
        </div>
      <div class="row">
        <div class="form-group col-md-3">
          <label class=" control-label">Stream From(optional)</label>
          <select  class="form-control"  name="stream_from1" required>
              <option value="">From</option>
              <option value="hls" selected>HLS/M3U8/HTTP</option>
              <option value="rtmp">RTMP</option>
              <option value="youtube_live">Youtube Live</option>
              <option value="embed">Embed</option>
            </select>
        </div>
        <div class="form-group col-md-3">
          <label class="control-label">Label(optional)</label>
          <input type="text"  name="stream_label1" value="SD"  class="form-control"  placeholder="Enter label" />
        </div>
        <div class="form-group col-md-6 align-self-end">
          <label class="control-label">Stream URL(optional)</label>
          <input type="text"  name="stream_url1"  class="form-control"  placeholder="Standard quality stream URL"/>
        </div>
      </div> 

      <div class="row">
        <div class="form-group col-md-3">
          <label class=" control-label">Stream From(optional)</label>
          <select  class="form-control"  name="stream_from2" required>
              <option value="">From</option>
              <option value="hls" selected>HLS/M3U8/HTTP</option>
              <option value="rtmp">RTMP</option>
              <option value="youtube_live">Youtube Live</option>
              <option value="embed">Embed</option>
            </select>
        </div>
        <div class="form-group col-md-3">
          <label class="control-label">Label(optional)</label>
          <input type="text"  name="stream_label2" value="LQ"  class="form-control"  placeholder="Enter label" />
        </div>
        <div class="form-group col-md-6 align-self-end">
          <label class="control-label">Stream URL(optional)</label>
          <input type="text"  name="stream_url2"  class="form-control"  placeholder="Low quality stream URL" />
        </div>
      </div>

      
      <div class="row">
        <div class="form-group col-md-3">
          <div class="form-group">
            <label class="control-label">Free/Paid</label>
              <select  class="form-control"  name="is_paid">
                <option value="0">Free</option>
                <option value="1" selected>Paid</option>
              </select>
          </div> 
        </div>
         
          <div class="form-group col-md-6">
                <label class="control-label">Countries</label>
                <select class="form-control select2" name="country" id="country">
              <optgroup label="Select Country">
              <?php $country = $this->db->get('country')->result_array();
                    foreach ($country as $v_country):?>
                <option value="<?php echo $v_country['country_id']; ?>" ><?php echo $v_country['name']; ?></option>
              <?php endforeach; ?>
            </select>
          </div>
      </div>


       
    </div>
      <div class="col-sm-6">
        <h4 class="text-center">Thumbnail & Poster Image</h4>
        <hr>
        <div class="form-group">
        <label class="control-label ">Thumbnail</label>
          <p>
          <img id="thumb_image" src="<?php echo base_url().'uploads/default_image/tv_thumbnail.jpg'; ?>" width="110" class="img-thumbnail" alt=""><br>          
      </div>

      <div class="form-group">
        <label class="control-label "></label>
          <input type="file"  name="thumbnail" onchange="showImg(this);" class="filestyle" data-input="false" accept="image/*">
      </div>

      <div class="form-group">
        <label class="control-label ">Poster</label><br>
          <img id="poster_image" src="<?php echo base_url().'uploads/default_image/tv_poster.jpg'; ?>" width="400" class="img-thumbnail" alt="">          
      </div>
      <div class="form-group">
        <label class="control-label "></label>
          <input type="file" name="poster" onchange="showImg2(this);" class="filestyle" data-input="false" accept="image/*">
      </div>
         
        <div class="form-group">
          <label class="control-label  ">Publish</label>
          <div class="col-sm-6">
            <div class="toggle">
              <label>
                <input type="checkbox" name="publish" checked><span class="button-indecator"></span>
              </label>
            </div>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label  ">Featured</label>
          <div class="col-sm-6">
            <div class="toggle">
              <label>
                <input type="checkbox" name="featured" checked><span class="button-indecator"></span>
              </label>
            </div>
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-offset-3 col-sm-9 m-t-15">
            <button type="submit" class="btn btn-sm btn-primary waves-effect"> <span class="btn-label"><i class="fa fa-plus"></i></span>CREATE </button>
          </div>
        </div>
      </div> 
    </div>
  </div>
  <?php echo form_close() ?>
<script type="text/javascript" src="<?php echo base_url() ?>assets/plugins/parsleyjs/dist/parsley.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('form').parsley();
    });
</script>

<!-- select2-->
<script src="<?php echo base_url() ?>assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js" type="text/javascript"></script>
<script src="<?php echo base_url() ?>assets/plugins/select2/select2.min.js" type="text/javascript"></script>
<!-- select2-->
<script src="<?php echo base_url() ?>assets/plugins/summernote/dist/summernote.min.js"></script>
<script src="<?php echo base_url() ?>assets/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
<script>
  jQuery(document).ready(function() {
    $('form').parsley();                            

    });
</script>
<script src="<?php echo base_url() ?>assets/plugins/bootstrap-filestyle/src/bootstrap-filestyle.min.js" type="text/javascript"></script>

<script>
  jQuery(document).ready(function() {
      $('#tags').tagsinput();
      $(":file").filestyle({
            input: false
        });
      $('#focus_keyword').tagsinput();
      $('#about_text').summernote({
            height: 200, // set editor height
            minHeight: null, // set minimum height of editor
            maxHeight: null, // set maximum height of editor
            focus: false // set focus to editable area after initializing summernote
        });
    });
</script>

<script>
    $("#title").keyup(function() {
        var Text = $(this).val();
        Text = Text.toLowerCase();
        Text = Text.replace(/[^\w ]+/g, '');
        Text = Text.replace(/ +/g, '-');
        $("#slug").val(Text);
    });

</script>

<!--instant image dispaly-->
<script type="text/javascript">
    function showImg(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#thumb_image')
                    .attr('src', e.target.result)
            };
            reader.readAsDataURL(input.files[0]);
        }
    }
</script>
<script type="text/javascript">
    function showImg2(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#poster_image')
                    .attr('src', e.target.result)
            };
            reader.readAsDataURL(input.files[0]);
        }
    }
</script>
<!--end instant image dispaly-->


