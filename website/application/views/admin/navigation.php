<?php $active_menu=$this->session->userdata('active_menu');
?>
 <!-- Side-Nav-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
  <ul class="app-menu">
    <li><a class="app-menu__item <?php if($active_menu==1) {echo "active"; } ?>" href="<?php echo base_url()."admin/dashboard";?>"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">DASHBOARD</span></a> </li>
    <li class="treeview <?php if($active_menu==6 || $active_menu==8 || $active_menu==9) {echo "is-expanded"; } ?>"> <a href="#" class="app-menu__item" data-toggle="treeview"><i class="app-menu__icon fa fa-video-camera" aria-hidden="true"></i><span class="app-menu__label">MOVIES</span><i class="treeview-indicator fa fa-angle-right"></i> </a>
      <ul class="treeview-menu">
        <li><a class="treeview-item <?php if($active_menu==6) {echo "active"; } ?>" href="<?php echo base_url().'admin/videos_add/'?>"><i class="app-menu__icon fa fa-plus"></i>ADD MOVIE</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==8) {echo "active"; } ?>" href="<?php echo base_url().'admin/videos/'?>"><i class="app-menu__icon fa fa-list"></i> ALL MOVIES</span> </a></li>
      </ul>
    </li>
    <li class="treeview <?php if($active_menu==28 || $active_menu==29 || $active_menu==30) {echo "is-expanded"; } ?>"> <a href="#" class="app-menu__item" data-toggle="treeview"><i class="app-menu__icon fa fa-film" aria-hidden="true"></i><span class="app-menu__label">TV SERIES</span><i class="treeview-indicator fa fa-angle-right"></i> </a>
      <ul class="treeview-menu">
        <li><a class="treeview-item <?php if($active_menu==29) {echo "active"; } ?>" href="<?php echo base_url().'admin/tvseries_add/'?>"><i class="app-menu__icon fa fa-plus" aria-hidden="true"></i>ADD TV SERIES</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==30) {echo "active"; } ?>" href="<?php echo base_url().'admin/tvseries/'?>"><i class="app-menu__icon fa fa-list" aria-hidden="true"></i> ALL TV SERIES</span> </a></li>
      </ul>
    </li>
    <li class="treeview <?php if($active_menu==26 || $active_menu==27 || $active_menu==35 || $active_menu==39 || $active_menu==139) {echo "is-expanded"; } ?>"> <a href="#" class="app-menu__item" data-toggle="treeview"><i class="app-menu__icon fa fa-tv" aria-hidden="true"></i><span class="app-menu__label">TV&nbsp;<span class="label label-danger">CHANNELS</span></span><i class="treeview-indicator fa fa-angle-right"></i> </a>
      <ul class="treeview-menu">
        <li><a class="treeview-item <?php if($active_menu==35) {echo "active"; } ?>" href="<?php echo base_url().'admin/manage_live_tv/new'?>"><i class="app-menu__icon fa fa-plus" aria-hidden="true"></i>ADD TV CHANNEL</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==26) {echo "active"; } ?>" href="<?php echo base_url().'admin/manage_live_tv/'?>"><i class="app-menu__icon fa fa-list" aria-hidden="true"></i> ALL TV CHANNEL</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==139) {echo "active"; } ?>" href="<?php echo base_url().'admin/tv_program_guide/'?>"><i class="app-menu__icon fa fa-clock-o" aria-hidden="true"></i> PROGRAM GUIDE </span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==39) {echo "active"; } ?>" href="<?php echo base_url().'admin/live_tv_category/'?>"><i class="app-menu__icon fa fa-tags" aria-hidden="true"></i> CATEGORY </span> </a></li>
      </ul>
    </li>
    <li><a class="app-menu__item <?php if($active_menu==7) {echo "active"; } ?>" href="<?php echo base_url().'admin/movie_importer/'?>"><i class="app-menu__icon fa fa-search" aria-hidden="true"></i><span class="app-menu__label">SEARCH & IMPORT</span> </a></li>
    <li><a class="app-menu__item <?php if($active_menu==77) {echo "active"; } ?>" href="<?php echo base_url().'admin/movie_scrapper_manage/'?>"><i class="app-menu__icon fa fa-clone" aria-hidden="true"></i><span class="app-menu__label">MOVIE SCRAPPER</span> </a></li>
    <li><a class="app-menu__item <?php if($active_menu==2) {echo "active"; } ?>" href="<?php echo base_url();?>admin/country"><i class="app-menu__icon fa fa-globe"></i><span class="app-menu__label">COUNTRY</span></a> </li>
    <li><a class="app-menu__item <?php if($active_menu==3) {echo "active"; } ?>" href="<?php echo base_url();?>admin/genre"><i class="app-menu__icon fa fa-archive"></i><span class="app-menu__label">GENRE</span></a> </li>
    <li class="treeview <?php if($active_menu==4 || $active_menu==5 ) {echo "is-expanded"; } ?>"> <a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-stack-overflow"></i><span class="app-menu__label">SLIDER</span><i class="treeview-indicator fa fa-angle-right"></i> </a>
      <ul class="treeview-menu">
        <li><a class="treeview-item <?php if($active_menu==4) {echo "active"; } ?>" href="<?php echo base_url().'admin/slider/'?>"><i class="app-menu__icon fa fa-stack-overflow"></i>IMAGE SLIDER</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==5) {echo "active"; } ?>" href="<?php echo base_url().'admin/slider_setting/'?>"><i class="app-menu__icon fa fa-gears" aria-hidden="true"></i>SLIDER SETTING</span> </a></li>
      </ul>
    </li>
    <li class="treeview <?php if($active_menu==31 || $active_menu==32 || $active_menu==33) {echo "is-expanded"; } ?>"> <a href="#" class="app-menu__item" data-toggle="treeview"><i class="app-menu__icon fa fa-comment-o"></i><span class="app-menu__label">COMMENTS</span><i class="treeview-indicator fa fa-angle-right"></i> </a>
      <ul class="treeview-menu">
        <li><a class="treeview-item <?php if($active_menu==31) {echo "active"; } ?>" href="<?php echo base_url().'admin/comments/'?>"><i class="app-menu__icon fa fa-comments-o"></i>COMMENTS</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==32) {echo "active"; } ?>" href="<?php echo base_url().'admin/comments_setting/'?>"><i class="app-menu__icon fa fa-gears"></i>COMMENTS SETTING</span> </a></li>
      </ul>
    </li>
    
    <li><a class="app-menu__item <?php if($active_menu==25) {echo "active"; } ?>" href="<?php echo base_url().'admin/manage_star'?>"><i class="app-menu__icon fa fa-users"></i><span class="app-menu__label">ACTOR / DIRECTOR..</span></a></li>
    <li><a class="app-menu__item <?php if($active_menu==15) {echo "active"; } ?>" href="<?php echo base_url().'admin/manage_user'?>"><i class="app-menu__icon fa fa-user-o"></i><span class="app-menu__label">USERS</span></a></li>
      <li><a class="app-menu__item <?php if($active_menu==4001) {echo "active"; } ?>" href="<?php echo base_url().'admin/request_manage'?>"><i class="app-menu__icon fa fa-paper-plane-o"></i><span class="app-menu__label">MOVIE REQUEST</span></a></li>
      <li><a class="app-menu__item <?php if($active_menu==4002) {echo "active"; } ?>" href="<?php echo base_url().'admin/report_manage'?>"><i class="app-menu__icon fa fa-flag-o"></i><span class="app-menu__label">REPORT</span></a></li>
    <li class="treeview <?php if($active_menu==16 || $active_menu==17 || $active_menu==18 || $active_menu==19 || $active_menu==20 || $active_menu==21 || $active_menu==22 || $active_menu==24 || $active_menu==34 || $active_menu==35 || $active_menu==78 || $active_menu==79 || $active_menu==80 || $active_menu==161 || $active_menu==162) {echo "is-expanded"; } ?>"> <a href="#" class="app-menu__item" data-toggle="treeview"><i class="app-menu__icon fa fa-gears" aria-hidden="true"></i><span class="app-menu__label">SETTING</span> <i class="treeview-indicator fa fa-angle-right"></i></a>
      <ul class="treeview-menu">
        <li><a class="treeview-item <?php if($active_menu==16) {echo "active"; } ?>" href="<?php echo base_url().'admin/system_setting/'?>"><i class="app-menu__icon fa fa-gear" aria-hidden="true"></i>SYSTEM SETTING</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==162) {echo "active"; } ?>" href="<?php echo base_url().'admin/api_setting/'?>"><i class="app-menu__icon fa fa-exchange" aria-hidden="true"></i>API SETTING</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==18) {echo "active"; } ?>" href="<?php echo base_url().'admin/android_setting/'?>"><i class="app-menu__icon fa fa-android" aria-hidden="true"></i>ANDROID SETTING</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==17) {echo "active"; } ?>" href="<?php echo base_url().'admin/email_setting/'?>"><i class="app-menu__icon fa fa-envelope" aria-hidden="true"></i>EMAIL SETTING</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==24) {echo "active"; } ?>" href="<?php echo base_url().'admin/video_quality/'?>"><i class="app-menu__icon fa fa-signal" aria-hidden="true"></i> MOVIE / VIDEO QUALITY </span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==78) {echo "active"; } ?>" href="<?php echo base_url().'admin/cron_setting/'?>"><i class="app-menu__icon fa fa-clock-o" aria-hidden="true"></i>CRON SETTING</span> </a></li>
        <li><a class="treeview-item <?php if($active_menu==79) {echo "active"; } ?>" href="<?php echo base_url().'admin/mobile_ads_setting/'?>"><i class="app-menu__icon fa fa-usd" aria-hidden="true"></i>ADS SETTING</span> </a></li>
        <!-- <li><a class="treeview-item <?php if($active_menu==80) {echo "active"; } ?>" href="<?php echo base_url().'admin/ima_ads_setting/'?>"><i class="app-menu__icon fa fa-usd" aria-hidden="true"></i>IMA ADS SETTING</span> </a></li> -->
        <li><a class="treeview-item <?php if($active_menu==161) {echo "active"; } ?>" href="<?php echo base_url().'admin/update/'?>"><i class="app-menu__icon fa fa-upload" aria-hidden="true"></i>UPDATE</span> </a></li>

      </ul>
      <li class="treeview <?php if($active_menu==301 || $active_menu==302 || $active_menu==303|| $active_menu==3001 || $active_menu==3002) {echo "is-expanded"; } ?>"> <a href="#" class="app-menu__item" data-toggle="treeview"><i class="app-menu__icon fa fa-coffee"></i><span class="app-menu__label">SUBSCRIPTION</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item <?php if($active_menu==301) {echo "active"; } ?>" href="<?php echo base_url().'subscription/package/'?>" ><i class="app-menu__icon fa  fa fa-check"></i>PACKAGE </a></li>            
            <li><a class="treeview-item <?php if($active_menu==3002) {echo "active"; } ?>" href="<?php echo base_url().'subscription/payment_setting'?>"><i class="app-menu__icon fa fa fa-dollar" aria-hidden="true"></i>PAYMENT SETTING</a></li>
            <li><a class="treeview-item <?php if($active_menu==3001) {echo "active"; } ?>" href="<?php echo base_url().'subscription/transaction_history'?>"><i class="app-menu__icon fa fa fa-clock-o" aria-hidden="true"></i>TRANSACTION LOG</a></li>
            <li><a class="treeview-item <?php if($active_menu==302) {echo "active"; } ?>" href="<?php echo base_url().'subscription/sub_setting'?>"><i class="app-menu__icon fa fa fa-wrench" aria-hidden="true"></i>SETTING</a></li>
          </ul>
        </li>
      <li class="treeview <?php if($active_menu == 36 || $active_menu == 37 || $active_menu == 370 || $active_menu == 371) {echo "is-expanded"; } ?>"> <a href="#" class="app-menu__item" data-toggle="treeview"><i class="app-menu__icon fa fa-bell" aria-hidden="true"></i><span class="app-menu__label">NOTIFICATION</span> <i class="treeview-indicator fa fa-angle-right"></i></a>
        <ul class="treeview-menu">
          
          <li><a class="treeview-item <?php if($active_menu==37) {echo "active"; } ?>" href="<?php echo base_url().'admin/send_live_tv_notification/'?>"><i class="app-menu__icon fa fa-paper-plane-o" aria-hidden="true"></i>LIVE TV</span> </a></li>
          <li><a class="treeview-item <?php if($active_menu==370) {echo "active"; } ?>" href="<?php echo base_url().'admin/send_movie_tvseries_notification/'?>"><i class="app-menu__icon fa fa-paper-plane-o" aria-hidden="true"></i>MOVIE/TVSERIES</span> </a></li>
          <li><a class="treeview-item <?php if($active_menu==371) {echo "active"; } ?>" href="<?php echo base_url().'admin/send_web_notification/'?>"><i class="app-menu__icon fa fa-paper-plane-o" aria-hidden="true"></i>WEBVIEW</span> </a></li>
          <li><a class="treeview-item <?php if($active_menu==36) {echo "active"; } ?>" href="<?php echo base_url().'admin/push_notification_setting/'?>"><i class="app-menu__icon fa fa-gear" aria-hidden="true"></i>SETTING</span> </a></li>
        </ul>
      </li>
    </li>
    <li><a class="app-menu__item <?php if($active_menu==23) {echo "active"; } ?>" href="<?php echo base_url().'admin/backup_restore'?>"><i class="app-menu__icon fa fa-database"></i><span class="app-menu__label">BACKUP</span></a></li>
  </ul>
</aside>
        