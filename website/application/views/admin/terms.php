<?php    
    $system_name              =   $this->db->get_where('config' , array('title'=>'system_name'))->row()->value;
    $system_short_name        =   $this->db->get_where('config' , array('title'=>'system_short_name'))->row()->value;
    $site_name                =   $this->db->get_where('config' , array('title'=>'site_name'))->row()->value;
    $business_address         =   $this->db->get_where('config' , array('title'=>'business_address'))->row()->value;
    $system_email             =   $this->db->get_where('config' , array('title'=>'system_email'))->row()->value;
    $business_phone           =   $this->db->get_where('config' , array('title'=>'business_phone'))->row()->value;
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Abdul Mannan">
    <meta name="copyright" content="Copyright (c) 2014 - 2018 SpaGreen">
    <link rel="shortcut icon" href="<?php echo base_url(); ?>assets/images/favicon.ico">
    <!-- CSS-->

    <!-- select2 CSS -->
    <link href="<?php echo base_url(); ?>assets/plugins/select2/dist/css/select2.css" rel="stylesheet" />
   
    <!-- main CSS -->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/main.css">
    <!-- custom css -->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/custom.css">
     <link href="<?php echo base_url(); ?>assets/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.css" rel="stylesheet" />
    <!-- icon CSS -->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!--summernote CSS -->
    <link href="<?php echo base_url(); ?>assets/plugins/summernote/dist/summernote.css" rel="stylesheet" />
    
    
    <!--Jquery JS -->
    <script src="<?php echo base_url(); ?>assets/js/jquery-3.2.1.min.js"></script>
    <title>Terms &amp; Conditions</title>   
</head>

<body>
    <div class="container">
        <?php echo $this->db->get_where('config' , array('title'=>'terms'))->row()->value;  ?>
    </div>
</body>
</html>