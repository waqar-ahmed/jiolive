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

class Radio_model extends CI_Model {
	
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

    function get_radio_poster($poster = '')
    {
        if($poster =='' || $poster ==NULL){
            $image_url  =   base_url().'uploads/default_image/radio_poster.jpg';
        }else{
            if(file_exists('uploads/radio_image/'.$poster))
                $image_url  =   base_url().'uploads/radio_image/'.$poster;
            else
                $image_url  =   base_url().'uploads/default_image/radio_poster.jpg';
        }
        return $image_url;        
    }

    function get_radio_thumbnail($thumbnail = '')
    {
         if($thumbnail =='' || $thumbnail ==NULL){
            $image_url  =   base_url().'uploads/default_image/radio_thumbnail.jpg';
        }else{
            if(file_exists('uploads/radio_image/sm/'.$thumbnail))
                $image_url  =   base_url().'uploads/radio_image/sm/'.$thumbnail;
            else
                $image_url  =   base_url().'uploads/default_image/radio_thumbnail.jpg';
        }
        return $image_url;
    }

     public function get_live_radio_url($radio_id='',$quality='')
    {
        $query = $this->db->get_where('radio_url', array('radio_id' => $radio_id,'quality'=>$quality));
        if($query->num_rows() > 0):
            return '<br>'.$query->row()->url;
        else:
            return '';
        endif;
    }
	

    public function num_radio()
    {
        return  $this->db->get_where('radio', array('publish' => '1'))->num_rows();
    }

    public function radio_is_published($slug='')
    {
        $status = FALSE;
        $row =  $this->db->get_where('radio', array('publish' => '1','slug'=>$slug))->num_rows();
        if($row >0)
            $status = TRUE;
        return $status;
    }

    public function get_radios($limit=NULL, $start=NULL)
    {
        $this->db->order_by("radio_id","desc");
        $this->db->limit($limit,$start);
        $query = $this->db->get('radio');
        if ($query->num_rows() > 0){
            return $query->result_array();        
        }else{
            return array();
        }
    }

    public function get_stream_from($radio_id='',$url_for=''){
        $query =$this->db->get_where('radio_url', array('radio_id' => $radio_id,'url_for'=>$url_for),1);
        if($query->num_rows() >0){
            return $query->row()->source;
        }else{
            return "";
        }
    }

    public function get_stream_label($radio_id='',$url_for=''){
        $query =$this->db->get_where('radio_url', array('radio_id' => $radio_id,'url_for'=>$url_for),1);
        if($query->num_rows() >0){
            return $query->row()->label;
        }else{
            return "";
        }
    }

    public function get_stream_key($radio_id='',$url_for=''){
        $query =$this->db->get_where('radio_url', array('radio_id' => $radio_id,'url_for'=>$url_for),1);
        if($query->num_rows() >0){
            return $query->row()->stream_key;
        }else{
            return "";
        }
    }


    public function get_stream_url($radio_id='',$url_for=''){
        $query = $this->db->get_where('radio_url', array('radio_id' => $radio_id,'url_for'=>$url_for),1);
        if($query->num_rows() > 0){
            return $query->row()->url;
        }else{
            return "";
        }
    }

    public function get_featured_tv_status() {
        $status             =   FALSE;
        $rows               =   $this->db->get_where('radio',array('featured'=>'1','publish'=>'1'))->num_rows();
        $radio_publish    =   $this->db->get_where('config' , array('title' =>'radio_publish'))->row()->value;
        if($radio_publish =='1' && ($rows > 0))
            $status     =   TRUE;
        return $status;
    }

    public function get_featured_radio($limit=10,$start=0) {
        $this->db->where('featured','1');
        $this->db->where('publish','1');
        $this->db->limit($limit,$start);
        return $this->db->get('radio')->result_array();
    }

    public function get_tv_status() {
        $status             =   FALSE;
        $rows               =   $this->db->get_where('radio',array('publish'=>'1'))->num_rows();
        $radio_publish    =   $this->db->get_where('config' , array('title' =>'radio_publish'))->row()->value;
        if($radio_publish =='1' && ($rows > 0))
            $status     =   TRUE;
        return $status;
    }

    public function get_radio($start=0, $limit=10) {
        $this->db->where('publish','1');
        $this->db->limit($limit,$start);
        return $this->db->get('radio')->result_array();
    }

    public function get_all_radio() {
        $this->db->where('publish','1');
        //$this->db->limit($limit,$start);
        return $this->db->get('radio')->result_array();
    }

    public function get_radio_details_by_slug($slug)
    {
        return $this->db->get_where('radio', array('slug' => $slug))->row();
    }

    public function get_slug_by_radio_id($radio_id='')
    {
        $query  =   $this->db->get_where('radio' , array('radio_id' => $radio_id));
        $res    =   $query->result_array();
        foreach($res as $row)           
            return $row['slug'];
    }
    public function get_radio_category($radio_category_id='') {
        $result = "not found";
        $this->db->where('radio_category_id',$radio_category_id);
        $query = $this->db->get('radio_category');
        if($query->num_rows() > 0)
            $result = $query->row()->radio_category;
        return $result;
    }
    public function get_radio_title_by_id($radio_id='') {
        $result = "not found";
        $this->db->where('radio_id',$radio_id);
        $query = $this->db->get('radio');
        if($query->num_rows() > 0)
            $result = $query->row()->tv_name;
        return $result;
    }

    public function get_radio_by_category_id($radio_category_id='') {
        $this->db->where('publish','1');
        $this->db->where('radio_category_id',$radio_category_id);
        return $this->db->get('radio')->result_array();
    }

    public function get_all_radio_category() {
        $this->db->where('status','1');
        return $this->db->get('radio_category')->result_array();
    }
}


