<div class="card">
    <div class="row">
        <div class="col-sm-12">
            <a class="btn btn-sm btn-primary waves-effect" href="<?php echo base_url('admin/tvseries'); ?>"> <span class="btn-label"><i class="fa fa-arrow-left"></i></span>Back to List</a>

                <button data-toggle="modal" data-target="#mymodal" data-id="<?php echo base_url() . 'admin/view_modal/seasons_add/'.$param1;?>" id="menu" class="btn btn-sm btn-primary waves-effect waves-light"><span class="btn-label"><i class="fa fa-plus"></i></span>Add Seasons</button>
                <br>
                <br>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Session Name</th>
                            <th>Order</th>
                            <th>Episodes</th>                            
                            <th>Option</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php echo form_open(base_url() . 'admin/seasons_manage/change_order/', array('class' => 'form-horizontal group-border-dashed', 'enctype' => 'multipart/form-data')); ?>
                            <input type="hidden" name="videos_id" value="<?php echo $param1; ?>">
                        <?php 
                            $sl = 1;
                            $this->db->order_by('order',$this->common_model->season_order());
                            $seasons = $this->db->get_where('seasons', array('videos_id'=>$param1))->result_array();
                            foreach ($seasons as $seasons):                     

                        ?>
                        <tr id='row_<?php echo $seasons['seasons_id'];?>'>
                            <td><?php echo $sl++;?></td>
                            <td><strong><?php echo $seasons['seasons_name'];?></strong></td>
                            <td>
                                <input type="hidden" name="seasons_id[]" value="<?php echo $seasons['seasons_id']; ?>">
                                <input type="number" name="order[]" value="<?php echo $seasons['order']; ?>" class="form-control" style="width:80px" required>
                            </td>
                            <td><?php echo $this->common_model->get_total_episods_by_seasons_id($seasons['seasons_id']);?> Episodes</td>
                            <td>
                                <a class="btn btn-primary btn-sm" href="<?php echo base_url().'admin/episodes_manage/'.$param1.'/'.$seasons['seasons_id']; ?>">Manage Episodes</a>
                                <a class="btn btn-primary btn-sm" href="<?php echo base_url().'admin/episodes_download/'.$param1.'/'.$seasons['seasons_id']; ?>">Episodes Download</a>
                                <div class="btn-group m-b-20"> <a data-toggle="modal" data-target="#mymodal" data-id="<?php echo base_url() . 'admin/view_modal/seasons_edit/'. $seasons['seasons_id'];?>" id="menu" title="Edit" class="btn btn-icon"><i class="fa fa-pencil"></i></a> <a title="Delete" class="btn btn-icon" onclick="delete_row(<?php echo " 'seasons' ".','.$seasons['seasons_id'];?>)" class="delete"><i class="fa fa-remove"></i></a> </div>
                            </td>
                        </tr>
                        <?php endforeach;?>
                    </tbody>
                </table>
                <div class="pull-right"><button type="submit" class="btn btn-primary btn-sm">Save Order</button></div>
                <?php echo form_close();?>
            </div>
        </div>
    </div>
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