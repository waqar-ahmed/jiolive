<?php $this->load->model('subscription_model'); ?>
<?php $currency_symbol  = $this->db->get_where('config' , array('title'=>'currency_symbol'))->row()->value; ?>
<div class="card">
    <div class="row">
        <div class="col-sm-12">
                <br>
                <br>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>***</th>
                            <th>User</th>
                            <th>PaymentMethod</th>
                            <th>Amount(<?php echo $currency_symbol; ?>)</th>
                            <th>Payment Time</th>
                            <th>Transaction Info</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $sl = 1;
                            foreach ($subscriptions as $subscription): 
                        ?>
                        <tr id='row_<?php echo $subscription['subscription_id'];?>'>
                            <td><?php echo $sl++;?></td>
                            <td><strong><?php echo $this->common_model->get_user_name_by_id($subscription['user_id']);?></strong></td>
                            <td><?php echo $subscription['payment_method'];?></td>
                            <td><?php echo $currency_symbol.' '.$subscription['paid_amount'];?></td>
                            <td><?php echo date('Y-m-d H:i:s',$subscription['payment_timestamp']);?></td>                            
                            <td><?php echo $subscription['payment_info'];?></td>
                        </tr>
                        <?php endforeach;?>
                    </tbody>
                </table>
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