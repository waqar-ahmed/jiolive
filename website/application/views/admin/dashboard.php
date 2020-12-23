<div class="row">
  <div class="col-md-3">
    <div class="widget-small primary"><i class="icon fa fa-video-camera fa-3x"></i>
        <div class="info">
            <h4>Movies</h4>
            <p><b class="counter"><?php echo $this->db->get_where('videos', array('publication' => '1','is_tvseries'=>'0'))->num_rows();?></b></p>
        </div>
    </div>
  </div>
  <div class="col-md-3">
    <div class="widget-small info"><i class="icon fa fa-video-camera fa-3x"></i>
        <div class="info">
            <h4>TV-Series</h4>
            <p><b class="counter"><?php echo $this->db->get_where('videos', array('publication' => '1','is_tvseries'=>'1'))->num_rows();?></b></p>
        </div>
    </div>
  </div>
  <div class="col-md-3">
    <div class="widget-small warning"><i class="icon fa fa-tv fa-3x"></i>
        <div class="info">
            <h4>Live TV</h4>
            <p><b class="counter"><?php echo $this->db->get_where('live_tv', array('publish' => '1'))->num_rows(); ?></b></p>
        </div>
    </div>
  </div>
  <div class="col-md-3">
    <div class="widget-small danger"><i class="icon fa fa-star fa-3x"></i>
        <div class="info">
            <h4>Stars</h4>
            <p><b class="counter"><?php echo $this->db->get('star')->num_rows(); ?></b></p>
        </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-md-3">
    <div class="widget-small primary coloured-icon"><i class="icon fa fa-flag fa-3x"></i>
        <div class="info">
            <h4>Countries</h4>
            <p><b class="counter"><?php echo count($this->db->get('country')->result_array());?></b></p>
        </div>
    </div>
  </div>
  <div class="col-md-3">
    <div class="widget-small info coloured-icon"><i class="icon fa fa-archive fa-3x"></i>
        <div class="info">
            <h4>Genre</h4>
            <p><b class="counter"><?php echo $this->db->get_where('genre', array('publication' => '1'))->num_rows();?></b></p>
        </div>
    </div>
  </div>
  <div class="col-md-3">
    <div class="widget-small warning coloured-icon"><i class="icon fa fa-video-camera fa-3x"></i>
        <div class="info">
            <h4>Unpublished Movies</h4>
            <p><b class="counter"><?php echo $this->db->get_where('videos', array('publication' => '0','is_tvseries'=>'0'))->num_rows();?></b>
            </p>
        </div>
    </div>
  </div>
  <div class="col-md-3">
    <div class="widget-small danger coloured-icon"><i class="icon fa fa-users fa-3x"></i>
        <div class="info">
            <h4>Users</h4>
            <p><b class="counter"><?php echo $this->db->get('user')->num_rows(); ?></b></p>
        </div>
    </div>
  </div>
</div>
<div class="card">
  <div class="row">
    <div class="col-sm-6">
      <div class="panel panel-border panel-primary">
        <div class="panel-heading">
          <h3 class="panel-title">Most Popular Movies</h3>
        </div>
        <div class="panel-body">
          <table id="datatable-fixed-header" class="table table-striped table-bordered success">
            <thead>
              <tr>
                <th>Title</th>
                <th>Release</th>
                <th>Total View</th>
              </tr>
            </thead>
            <tbody>
              <?php 
              $this->db->LIMIT('5' );
              $this->db->order_by('total_view', 'desc' );                                    
              $videos = $this->db->get('videos')->result_array();                                  
              foreach ($videos as $video): ?>
              <tr>
                <td><?php echo $video['title']; ?></td>
                <td><?php echo $video['release']; ?></td>
                <td><?php echo $video['total_view']; ?></td>                 
              </tr>
              <?php endforeach; ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>

    <div class="col-sm-6">
      <div class="panel panel-border panel-primary">
        <div class="panel-heading">
          <h3 class="panel-title">Top Rated Movies</h3>
        </div>
        <div class="panel-body">
          <table id="datatable-fixed-header" class="table table-striped table-bordered success">
            <thead>
              <tr>
                <th>Title</th>
                <th>Release</th>
                <th>Total Rating</th>
              </tr>
            </thead>
            <tbody>
              <?php
              $this->db->LIMIT('5' );
              $this->db->order_by('total_rating', 'desc' );                                    
              $videos = $this->db->get('videos')->result_array();                                  
              foreach ($videos as $video): ?>
              <tr>
                <td><?php echo $video['title']; ?></td>
                <td><?php echo $video['release']; ?></td>
                <td><?php echo $video['total_rating']; ?></td>                 
              </tr>
              <?php endforeach; ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-sm-6">
      <div class="panel panel-border panel-primary">
        <div class="panel-heading">
          <h3 class="panel-title">Top View Today</h3>
        </div>
        <div class="panel-body">
          <table id="datatable-fixed-header" class="table table-striped table-bordered success">
            <thead>
              <tr>
                <th>Title</th>
                <th>Release</th>
                <th>Today View</th>
              </tr>
            </thead>
            <tbody>
              <?php
              $this->db->LIMIT('5' );
              $this->db->order_by('today_view', 'desc' );                                    
              $videos = $this->db->get('videos')->result_array();                                  
              foreach ($videos as $video): ?>
              <tr>
                <td><?php echo $video['title']; ?></td>
                <td><?php echo $video['release']; ?></td>
                <td><?php echo $video['today_view']; ?></td>                 
              </tr>
              <?php endforeach; ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="col-sm-6">
      <div class="panel panel-border panel-primary">
        <div class="panel-heading">
          <h3 class="panel-title">Recent Subscriber</h3>
        </div>
        <div class="panel-body">
          <table id="datatable-fixed-header" class="table table-striped table-bordered success">
            <thead>
              <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Subscribe At</th>
              </tr>
            </thead>
            <tbody>
              <?php
              $this->db->LIMIT('5' );
              $this->db->order_by('user_id', 'desc' );                                    
              $subscribers = $this->db->get('user')->result_array();                                  
              foreach ($subscribers as $subscriber): ?>
              <tr>
                <td><?php echo $subscriber['name']; ?></td>
                <td><?php echo $subscriber['email']; ?></td>
                <td><?php echo $subscriber['join_date']; ?></td>                 
              </tr>
              <?php endforeach; ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
<div>

<script src="<?php echo base_url();?>assets/plugins/waypoints/lib/jquery.waypoints.js"></script>
<script src="<?php echo base_url();?>assets/plugins/counterup/jquery.counterup.min.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function($) {
        $('.counter').counterUp({
            delay: 10,
            time: 1000
        });
    });
</script>