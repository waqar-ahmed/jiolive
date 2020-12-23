<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * OXOO - Android Live TV & Movie Portal App
 * ---------------------- OXOO --------------------
 * ------- Android Live TV & Movie Portal App --------
 * - Live tv channel & movie management system -
 *
 * @package     OXOO - Android Live TV & Movie Portal App
 * @author      Abdul Mannan/Spa Green Creative
 * @copyright   Copyright (c) 2014 - 2019 SpaGreen,
 * @license     http://codecanyon.net/wiki/support/legal-terms/licensing-terms/ 
 * @link        http://www.spagreen.net
 * @link        support@spagreen.net
 *
 **/

class Event_model extends CI_Model {
	
	function __construct()
    {
        parent::__construct();
    }
		/* clear cache*/	
	function clear_cache()
	{
        $this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
        $this->output->set_header('Pragma: no-cache');
	}

    function get_event_poster($poster = '')
    {
        if($poster =='' || $poster ==NULL){
            $image_url  =   base_url().'uploads/default_image/event_poster.jpg';
        }else{
            if(file_exists('uploads/event_image/'.$poster))
                $image_url  =   base_url().'uploads/event_image/'.$poster;
            else
                $image_url  =   base_url().'uploads/default_image/event_poster.jpg';
        }
        return $image_url;        
    }

    function get_event_thumbnail($thumbnail = '')
    {
         if($thumbnail =='' || $thumbnail ==NULL){
            $image_url  =   base_url().'uploads/default_image/event_thumbnail.jpg';
        }else{
            if(file_exists('uploads/event_image/sm/'.$thumbnail))
                $image_url  =   base_url().'uploads/event_image/sm/'.$thumbnail;
            else
                $image_url  =   base_url().'uploads/default_image/event_thumbnail.jpg';
        }
        return $image_url;
    }

     public function get_live_event_url($event_id='',$quality='')
    {
        $query = $this->db->get_where('event_url', array('event_id' => $event_id,'quality'=>$quality));
        if($query->num_rows() > 0):
            return '<br>'.$query->row()->url;
        else:
            return '';
        endif;
    }
	

    public function num_event()
    {
        return  $this->db->get_where('event', array('publish' => '1'))->num_rows();
    }

    public function event_is_published($slug='')
    {
        $status = FALSE;
        $row =  $this->db->get_where('event', array('publish' => '1','slug'=>$slug))->num_rows();
        if($row >0)
            $status = TRUE;
        return $status;
    }

    public function get_events($limit=NULL, $start=NULL)
    {
        $this->db->order_by("event_id","desc");
        $this->db->limit($limit,$start);
        $query = $this->db->get('event');
        if ($query->num_rows() > 0){
            return $query->result_array();        
        }else{
            return array();
        }
    }

    public function get_stream_from($event_id='',$url_for=''){
        $query =$this->db->get_where('event_url', array('event_id' => $event_id,'url_for'=>$url_for),1);
        if($query->num_rows() >0){
            return $query->row()->source;
        }else{
            return "";
        }
    }

    public function get_stream_label($event_id='',$url_for=''){
        $query =$this->db->get_where('event_url', array('event_id' => $event_id,'url_for'=>$url_for),1);
        if($query->num_rows() >0){
            return $query->row()->label;
        }else{
            return "";
        }
    }

    public function get_stream_key($event_id='',$url_for=''){
        $query =$this->db->get_where('event_url', array('event_id' => $event_id,'url_for'=>$url_for),1);
        if($query->num_rows() >0){
            return $query->row()->stream_key;
        }else{
            return "";
        }
    }


    public function get_stream_url($event_id='',$url_for=''){
        $query = $this->db->get_where('event_url', array('event_id' => $event_id,'url_for'=>$url_for),1);
        if($query->num_rows() > 0){
            return $query->row()->url;
        }else{
            return "";
        }
    }

    public function get_featured_tv_status() {
        $status             =   FALSE;
        $rows               =   $this->db->get_where('event',array('featured'=>'1','publish'=>'1'))->num_rows();
        $event_publish    =   $this->db->get_where('config' , array('title' =>'event_publish'))->row()->value;
        if($event_publish =='1' && ($rows > 0))
            $status     =   TRUE;
        return $status;
    }

    public function get_featured_event($limit=10,$start=0) {
        $this->db->where('featured','1');
        $this->db->where('publish','1');
        $this->db->limit($limit,$start);
        return $this->db->get('event')->result_array();
    }

    public function get_tv_status() {
        $status             =   FALSE;
        $rows               =   $this->db->get_where('event',array('publish'=>'1'))->num_rows();
        $event_publish    =   $this->db->get_where('config' , array('title' =>'event_publish'))->row()->value;
        if($event_publish =='1' && ($rows > 0))
            $status     =   TRUE;
        return $status;
    }

    public function get_event($start=0, $limit=10) {
        $this->db->where('publish','1');
        $this->db->limit($limit,$start);
        return $this->db->get('event')->result_array();
    }

    public function get_all_event() {
        $this->db->where('publish','1');
        //$this->db->limit($limit,$start);
        return $this->db->get('event')->result_array();
    }

    public function get_event_details_by_slug($slug)
    {
        return $this->db->get_where('event', array('slug' => $slug))->row();
    }

    public function get_slug_by_event_id($event_id='')
    {
        $query  =   $this->db->get_where('event' , array('event_id' => $event_id));
        $res    =   $query->result_array();
        foreach($res as $row)           
            return $row['slug'];
    }
    public function get_event_category($event_category_id='') {
        $result = "not found";
        $this->db->where('event_category_id',$event_category_id);
        $query = $this->db->get('event_category');
        if($query->num_rows() > 0)
            $result = $query->row()->event_category;
        return $result;
    }
    public function get_event_title_by_id($event_id='') {
        $result = "not found";
        $this->db->where('event_id',$event_id);
        $query = $this->db->get('event');
        if($query->num_rows() > 0)
            $result = $query->row()->tv_name;
        return $result;
    }

    public function get_event_by_category_id($event_category_id='') {
        $this->db->where('publish','1');
        $this->db->where('event_category_id',$event_category_id);
        return $this->db->get('event')->result_array();
    }

    public function get_all_event_category() {
        $this->db->where('status','1');
        return $this->db->get('event_category')->result_array();
    }
}


