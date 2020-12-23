<?php echo form_open(base_url() . 'admin/comments_setting/update/' , array('class' => 'form-horizontal group-border-dashed', 'enctype' => 'multipart/form-data'));?>
<div class="card">
    <div class="row">                
        <!-- panel  -->
        <div class="col-md-12">
            <div class="panel panel-border panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Comments Setting
                    </h3>
                </div>
                <div class="panel-body">
                    <!-- panel  -->
                    <div class="form-group">
                        <label class="control-label col-md-3">Comments Approval</label>
                        <div class="col-sm-6">
                            <select class="form-control m-bot15" id="comments_approval" name="comments_approval">
                                <option value="0" <?php if($this->db->get_where('config' , array('title' =>'comments_approval'))->row()->value=='0'){echo 'selected';}?>>Manual</option>
                                <option value="1" <?php if($this->db->get_where('config' , array('title' =>'comments_approval'))->row()->value=='1'){echo 'selected';}?>>Auto</option>
                            </select>
                        </div>
                    </div>                            
                    <div class="col-sm-offset-3 col-sm-9 m-t-15">
                        <button type="submit" class="btn btn-sm btn-primary"><span class="btn-label"><i class="fa fa-floppy-o"></i></span>Save Changes</button>
                    </div>
                    </form>
                </div>
                <!--end panel body -->
            </div>
            <!--end panel -->
        </div>
        <!--end col-6 -->
    </div>
</div>