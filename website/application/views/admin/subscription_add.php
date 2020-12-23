<?php echo form_open(base_url() . 'subscription/manage_subscription/add/' , array('class' => 'form-horizontal group-border-dashed', 'enctype' => 'multipart/form-data'));?>
<h4 class="text-center">Add Subscription</h4>
<hr>
<div class="form-group row">
  <label class="col-sm-12 control-label">Package</label>
  <div class="col-sm-12 ">
    <select class="form-control" name="plan_id" required>
      <?php $plans = $this->db->get('plan')->result_array();
            foreach ($plans as $plan):?>
            <option value="<?php echo $plan['plan_id']; ?>"><?php echo $plan['name']; ?></option>
      <?php endforeach; ?>
    </select>
  </div>
</div>
<div class="form-group row">
  <label class="col-sm-12 control-label">Start Date</label>
  <div class="col-sm-12 ">
    <div class="input-group">
      <input type="text" name="start_date" id="start_date" class="form-control" value="<?php echo date('Y-m-d') ?>">
      <span class="input-group-addon bg-custom b-0 text-white"><i class="fa fa-calendar" aria-hidden="true"></i></span>
    </div>
  </div>
</div>
<div class="form-group row">
  <label class="col-sm-12 control-label">Payment Method</label>
  <div class="col-sm-12 ">
    <select class="form-control" name="payment_method" required>
      <option value="Paypal">Paypal</option>
      <option value="Card">Card</option>
      <option value="Cash">Cash</option>
      <option value="Bank">Bank</option>
      <option value="Local">Local Payment Service</option>
      <option value="Others">Others</option>
    </select>
  </div>
</div>
<div class="form-group row">
  <label class="col-sm-12 control-label">Amount</label>
  <div class="col-sm-12">
    <input type="text"  name="paid_amount" value="" class="form-control" placeholder="Enter amount" required />
  </div>
</div>
<div class="form-group row">
  <label class="col-sm-12 control-label">TransactionID</label>
  <div class="col-sm-12">
    <input type="text"  name="payment_info" value="" class="form-control" placeholder="Enter amount" />
  </div>
</div>

<div class="form-group row">
  <label class="col-sm-12 control-label">Status</label>
  <div class="col-sm-12 ">
    <select  class="form-control"  name="status" required>
      <option value="1">Active</option>
      <option value="0">Inactive</option>
    </select>
  </div>
  <!-- End col-6 --> 
</div>
<!-- end form -group -->
<input type="hidden" name="user_id" value="<?php echo $param2; ?>">
<div class="form-group row">
  <div class="col-sm-offset-3 col-sm-9 m-t-15">
    <button type="submit" class="btn btn-sm btn-primary waves-effect"> <span class="btn-label"><i class="fa fa-plus"></i></span>Add </button>
    <button type="" class="btn btn-sm btn-white m-l-5 waves-effect" data-dismiss="modal">CLOSE </button>
  </div>
  <!-- End col-6 --> 
</div>
<!-- end form -group -->
</form>
<script>
        jQuery(document).ready(function() {
          $(".select2").select2();
          $('form').parsley(); 
          $('#start_date').datepicker({
            format: 'yyyy-mm-dd',
            autoclose: true,
            todayHighlight: true
        });                           

          });
</script> 
