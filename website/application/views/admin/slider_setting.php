<?php echo form_open(base_url() . 'admin/slider_setting/update/' , array('class' => 'form-horizontal group-border-dashed', 'enctype' => 'multipart/form-data'));?>
<div class="card">
    <div class="row">                
        <!-- panel  -->
        <div class="col-md-12">
            <div class="panel panel-border panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Slider Setting
                    </h3>
                </div>
                <div class="panel-body">
                    <!-- panel  -->
                    <div class="form-group">
                        <label class="control-label col-md-3">Slider Type</label>
                        <div class="col-sm-6">
                            <select class="form-control m-bot15" id="slider_type" name="slider_type">
                                <option value="image" <?php if($this->db->get_where('config' , array('title' =>'slider_type'))->row()->value=='image'){echo 'selected';}?> id="ad1_image_selection">Image Slider</option>
                                <option value="movie" <?php if($this->db->get_where('config' , array('title' =>'slider_type'))->row()->value=='movie'){echo 'selected';}?> id="ad1_code_selection">Latest Movie/Series</option>
                                <option value="tv" <?php if($this->db->get_where('config' , array('title' =>'slider_type'))->row()->value=='tv'){echo 'selected';}?> id="ad1_code_selection">Latest TV Channel</option>
                                <option value="disable" <?php if($this->db->get_where('config' , array('title' =>'slider_type'))->row()->value=='disable'){echo 'selected';}?> id="ad1_disable">Disable</option>
                            </select>
                        </div>
                    </div>
                    <div id="total_movie_in_slider">
                        <div class="form-group">
                            <label class=" col-sm-6 control-label">Total Content</label>
                            <div class="col-sm-6">
                                <input type="number" name="total_movie_in_slider" value="<?php echo $this->db->get_where('config' , array('title' =>'total_movie_in_slider'))->row()->value; ?>" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div id="slide_per_page">
                    </div>
                    <div class="col-sm-offset-3 col-sm-9 m-t-15">
                        <button type="submit" class="btn btn-sm btn-primary"><span class="btn-label"><i class="fa fa-floppy-o"></i></span>Save Changes </button>
                    </div>
                    <?php echo form_close(); ?>
                </div>
                <!--end panel body -->
            </div>
            <!--end panel -->
        </div>
        <!--end col-6 -->
    </div>
</div>


<script>
    $(document).ready(function() {
        <?php $slider_type=$this->db->get_where('config' , array('title' =>'slider_type'))->row()->value;
        if ($slider_type=='image'):?>
        $("#slide_per_page").fadeOut();
        $("#total_movie_in_slider").fadeOut();
        <?php endif; if ($slider_type=='movie'):?>
        $("#slide_per_page").fadeIn();
        $("#total_movie_in_slider").fadeIn();
        <?php endif; if ($slider_type=='disable'):?>
        $("#slide_per_page").fadeOut();
        $("#total_movie_in_slider").fadeOut();
        <?php endif;?>        
    });
    $("#slider_type").change(function() {
        var slider_type = $("#slider_type option:selected").val();
        if (slider_type == 'image') {
            $("#slide_per_page").fadeOut();
            $("#total_movie_in_slider").fadeOut();
        } else if (slider_type == 'movie') {
            $("#slide_per_page").fadeIn();
            $("#total_movie_in_slider").fadeIn();
        } else if (slider_type == 'disable') {
            $("#slide_per_page").fadeOut();
            $("#total_movie_in_slider").fadeOut();
        }
    });
</script>