<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
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


class Admin extends CI_Controller {   
    
    function __construct() {
        parent::__construct();
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');

        $this->load->model('common_model');
        $this->load->model('email_model');
        $this->load->database();
        //cache controling
        $this->output->set_header('Last-Modified: ' . gmdate("D, d M Y H:i:s") . ' GMT');('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
        $this->output->set_header('Pragma: no-cache');
        $this->output->set_header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");        
    }
    
    //default index function, redirects to login/dashboard 
    public function index(){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url() . 'login', 'refresh');
        if ($this->session->userdata('admin_is_login') == 1)
            redirect(base_url() . 'admin/dashboard', 'refresh');
    }
    
    //dashboard
    function dashboard(){
        
		// active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '1');
        /* end menu active/inactive section*/
        $data['page_name']             = 'dashboard';
        $data['page_title']            = 'Admin Dashboard';
        $this->load->view('admin/index', $data);		
			
    }


    //  country
    function country($param1 = '', $param2 = ''){
        // start menu active/inactive section
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '2');
        // end menu active/inactive section
        
        if ($param1 == 'add') {
            $data['name']           = $this->input->post('name');
            $data['description']    = $this->input->post('description');
            $data['slug']           = url_title($this->input->post('name'), 'dash', TRUE);
            $data['publication']    = $this->input->post('publication');          
            
            $this->db->insert('country', $data);
            $insert_id = $this->db->insert_id();
            if($this->input->post('image_link')!=''){ 
                $image_source           =   $this->input->post('image_link');
                $save_to                =   'uploads/country/'.$insert_id.'.png';           
                $this->common_model->grab_image($image_source,$save_to);
            }
            if(isset($_FILES['image']) && $_FILES['image']['name']!=''){
                move_uploaded_file($_FILES['image']['tmp_name'], 'uploads/country/'.$insert_id.'.png');
            }
            $this->session->set_flashdata('success', 'Country added successed');
            redirect($this->agent->referrer());
        }            
        if ($param1 == 'update') {
            $data['name']           = $this->input->post('name');
            $data['description']    = $this->input->post('description');
            $data['slug']           = url_title($this->input->post('name'), 'dash', TRUE);
            $data['publication']    = $this->input->post('publication');

            $this->db->where('country_id', $param2);
            $this->db->update('country', $data);
            if($this->input->post('image_link')!=''){
                $image_source           =   $this->input->post('image_link');
                $save_to                =   'uploads/country/'.$param2.'.png';           
                $this->common_model->grab_image($image_source,$save_to);
            }
            if(isset($_FILES['image']) && $_FILES['image']['name']!=''){
                move_uploaded_file($_FILES['image']['tmp_name'], 'uploads/country/'.$param2.'.png');
            }
            $this->session->set_flashdata('success', 'Country update successed.');
            redirect($this->agent->referrer());
        }        
        $data['page_name']      = 'country_manage';
        $data['page_title']     = 'Country Management';
        $data['countries']    = $this->db->get('country')->result_array(); 
        $this->load->view('admin/index', $data);
    }

    // genre
    function genre($param1 = '', $param2 = ''){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '3');
        
        if ($param1 == 'add') {
            $data['name']           = $this->input->post('name');
            $data['description']    = $this->input->post('description');
            $data['slug']           = url_title($this->input->post('name'), 'dash', TRUE);
            $data['featured']       = $this->input->post('featured');          
            $data['publication']    = $this->input->post('publication');         
            
            $this->db->insert('genre', $data);
            $insert_id = $this->db->insert_id();
            if($this->input->post('image_link')!=''){ 
                $image_source           =   $this->input->post('image_link');
                $save_to                =   'uploads/genre/'.$insert_id.'.png';           
                $this->common_model->grab_image($image_source,$save_to);
            }
            if(isset($_FILES['image']) && $_FILES['image']['name']!=''){
                move_uploaded_file($_FILES['image']['tmp_name'], 'uploads/genre/'.$insert_id.'.png');
            }
            $this->session->set_flashdata('success', 'Genre added successed');
            redirect($this->agent->referrer());
        }            
        if ($param1 == 'update') {
            $data['name']           = $this->input->post('name');
            $data['description']    = $this->input->post('description');
            $data['slug']           = url_title($this->input->post('name'), 'dash', TRUE);
            $data['featured']       = $this->input->post('featured');
            $data['publication']    = $this->input->post('publication');

            $this->db->where('genre_id', $param2);
            $this->db->update('genre', $data);
            if($this->input->post('image_link')!=''){
                $image_source           =   $this->input->post('image_link');
                $save_to                =   'uploads/genre/'.$param2.'.png';           
                $this->common_model->grab_image($image_source,$save_to);
            }
            if(isset($_FILES['image']) && $_FILES['image']['name']!=''){
                move_uploaded_file($_FILES['image']['tmp_name'], 'uploads/genre/'.$param2.'.png');
            }
            $this->session->set_flashdata('success', 'Genre update successed.');
            redirect($this->agent->referrer());
        }        
        $data['page_name']          = 'genre_manage';
        $data['page_title']         = 'Genre Management';
        $data['genres']             = $this->db->get('genre')->result_array(); 
        $this->load->view('admin/index', $data);
    }

    function slider_setting($param1 = '', $param2 = ''){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '5');
        if ($param1 == 'update') {
            $slider_type  = $this->input->post('slider_type');
            if($slider_type=='movie'){
                $data['value']    =   $slider_type;
                $this->db->where('title' , 'slider_type');
                $this->db->update('config' , $data);
                $data['value'] =   $this->input->post('total_movie_in_slider');
                $this->db->where('title' , 'total_movie_in_slider');
                $this->db->update('config' , $data);
                
                $data['value'] =   $this->input->post('slide_per_page');
                $this->db->where('title' , 'slide_per_page');
                $this->db->update('config' , $data);
                $this->session->set_flashdata('success', 'Slider setting update successed');
                redirect($this->agent->referrer());
            }else if($slider_type=='image'){
                $data['value']= 'image';
                $this->db->where('title' , 'slider_type');
                $this->db->update('config' , $data);
                $this->session->set_flashdata('success', 'Slider setting update successed');
                redirect($this->agent->referrer());
            }else if($slider_type=='tv'){
                $data['value']= 'tv';
                $this->db->where('title' , 'slider_type');
                $this->db->update('config' , $data);
                $this->session->set_flashdata('success', 'Slider setting update successed');
                redirect($this->agent->referrer());
            }else if($slider_type=='disable'){
                $data['value']= 'disable';
                $this->db->where('title' , 'slider_type');
                $this->db->update('config' , $data);
                $this->session->set_flashdata('success', 'Slider setting update successed');
                redirect($this->agent->referrer());
            }            
        }
        $data['page_name']      = 'slider_setting';
        $data['page_title']     = 'Slider Setting';
        $this->load->view('admin/index', $data);
    }

    // slider
    function slider($param1 = '', $param2 = ''){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '4'); 
        
        if ($param1 == 'add') {
            $data['title']              =   $this->input->post('title');
            $data['description']        =   $this->input->post('description');
            $data['order']              =   $this->input->post('order');
            $data['action_type']        =   $this->input->post('action_type');
            $data['action_btn_text']    =   $this->input->post('action_btn_text');
            $data['image_link']         =   base_url().'uploads/no_image.jpg';

            if($data['action_type'] == 'movie'):
                $data['action_id']        =   $this->input->post('movie_id');
            elseif($data['action_type'] == 'tvseries'):
                $data['action_id']        =   $this->input->post('tvseries_id');
            elseif($data['action_type'] == 'tv'):
                $data['action_id']        =   $this->input->post('tv_id');
            elseif($data['action_type'] == 'external_browser' || $data['action_type'] == 'external_browser'):
                $data['action_url']       =   $this->input->post('action_url');
            endif;


            if($this->input->post('image_link')!=''){                
                $data['image_link']     =   $this->input->post('image_link');
            } 

            $data['slug']               =   url_title($this->input->post('title'), 'dash', TRUE);
            $data['publication']        =   $this->input->post('publication');          
            
            $this->db->insert('slider', $data);
            $insert_id = $this->db->insert_id();
            if(isset($_FILES['image']) && $_FILES['image']['name']!=''){
                move_uploaded_file($_FILES['image']['tmp_name'], 'uploads/sliders/slider-'.$insert_id.'.jpg');
                $data['image_link']     =       base_url().'uploads/sliders/slider-'.$insert_id.'.jpg';
            }
            $this->db->where('slider_id', $insert_id);
            $this->db->update('slider', $data);
            
            $this->session->set_flashdata('success', 'Slider added successed');
            redirect($this->agent->referrer());
        }
           
        if ($param1 == 'update') {
            $data['title']              =   $this->input->post('title');
            $data['description']        =   $this->input->post('description');
            $data['order']              =   $this->input->post('order');
            $data['action_type']        =   $this->input->post('action_type');
            $data['action_btn_text']    =   $this->input->post('action_btn_text');

            if($data['action_type'] == 'movie'):
                $data['action_id']        =   $this->input->post('movie_id');
            elseif($data['action_type'] == 'tvseries'):
                $data['action_id']        =   $this->input->post('tvseries_id');
            elseif($data['action_type'] == 'tv'):
                $data['action_id']        =   $this->input->post('tv_id');
            elseif($data['action_type'] == 'external_browser' || $data['action_type'] == 'external_browser'):
                $data['action_url']       =   $this->input->post('action_url');
            endif;

            
            if($this->input->post('image_link')!=''){                
                $data['image_link']  = $this->input->post('image_link');
            }

            if(isset($_FILES['image']) && $_FILES['image']['name']!=''){
                move_uploaded_file($_FILES['image']['tmp_name'], 'uploads/sliders/slider-'.$param2.'.jpg');
                $data['image_link']     =       base_url().'uploads/sliders/slider-'.$param2.'.jpg';
            }
            $data['slug']               = url_title($this->input->post('title'), 'dash', TRUE);
            $data['publication']        = $this->input->post('publication');

            $this->db->where('slider_id', $param2);
            $this->db->update('slider', $data);
            $this->session->set_flashdata('success', 'Slider update successed.');
            redirect($this->agent->referrer());
        }        
        $data['page_name']      = 'slider_manage';
        $data['page_title']     = 'Slider Management';
        $this->db->order_by('order',"DESC");
        $data['sliders']        = $this->db->get('slider')->result_array(); 
        $this->load->view('admin/index', $data);
    }
    // add videos or movies 
    function videos_add(){
        // start menu active/inactive section
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '6');
        // end menu active/inactive section
        $data['page_name']      = 'videos_add';
        $data['page_title']     = 'Videos Add'; 
        $this->load->view('admin/index', $data);
    }

    // edit videos or movies 
    function videos_edit($param1='',$param2=''){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '6');
        $data['param1']         = $param1;
        $data['param2']         = $param2;
        $data['page_name']      = 'videos_edit';
        $data['page_title']     = 'Videos Edit => <strong>'.$this->common_model->get_title_by_videos_id($param1).'</strong>';
        $this->load->view('admin/index', $data);
    }

    // add,edit videos or movies 
    function videos($param1 = '', $param2 = ''){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '8'); 
        if ($param1 == 'add') {
            $data['imdbid']                 = $this->input->post('imdbid');          
            $data['title']                  = $this->input->post('title');
            $data['seo_title']              = $this->input->post('seo_title');
            $data['description']            = $this->input->post('description');
            $data['is_paid']                = $this->input->post('is_paid');           
            $data['trailler_youtube_source']            = $this->input->post('trailler_youtube_source');           
            $actors                         = $this->input->post('actor');            
            $directors                      = $this->input->post('director');            
            $writers                        = $this->input->post('writer');            
            $countries                      = $this->input->post('country');            
            $genres                         = $this->input->post('genre');
            $video_types                    = $this->input->post('video_type');
            if($actors !='' && $actors !=NULL){
                $data['stars']              = implode(',',$actors);
            }
            if($directors !='' && $directors !=NULL){
                $data['director']           = implode(',',$directors);
            }
            if($writers !='' && $writers !=NULL){
                $data['writer']             = implode(',',$writers);
            }
            if($countries !='' && $countries !=NULL){
                $data['country']            = implode(',',$countries);
            }
            if($genres !='' && $genres !=NULL){
                $data['genre']              = implode(',',$genres);
            }

            $data['imdb_rating']        = $this->input->post('rating');
            $data['release']            = $this->input->post('release');
            
            
            $data['runtime']            = $this->input->post('runtime');
            $data['video_quality']      = $this->input->post('video_quality');
            $data['publication']        = '0';
            if(isset($_POST['publication'])) {
                $data['publication']    = '1';
            }
            
            $data['enable_download']    = '0';
            if(isset($_POST['enable_download'])) {
                $data['enable_download']    = '1';
            }
            $data['focus_keyword']      = $this->input->post('focus_keyword');
            $data['meta_description']   = $this->input->post('meta_description');
            $data['tags']               = $this->input->post('tags');       
                        
            $this->db->insert('videos', $data);
            $insert_id = $this->db->insert_id();
            $slug                       = url_title($this->input->post('slug'), 'dash', TRUE);
            $slug_num                   = $this->common_model->slug_num('videos',$slug);
            if($slug_num > 0){
                $slug= $slug.'-'.$insert_id;
            }
            $data_update['slug']        = $slug;            
            if(isset($_FILES['thumbnail']) && $_FILES['thumbnail']['name']!=''){
                move_uploaded_file($_FILES['thumbnail']['tmp_name'], 'uploads/video_thumb/'.$insert_id.'.jpg');                
            }

            if(isset($_FILES['poster_file']) && $_FILES['poster_file']['name']!=''){
                move_uploaded_file($_FILES['poster_file']['tmp_name'], 'uploads/poster_image/'.$insert_id.'.jpg');                                
            }

            if($this->input->post('thumb_link')!=''){ 
                $image_source           =   $this->input->post('thumb_link');
                $save_to                =   'uploads/video_thumb/'.$insert_id.'.jpg';           
                $this->common_model->grab_image($image_source,$save_to);
            }

            if($this->input->post('poster_link')!=''){ 
                $image_source       =   $this->input->post('poster_link');
                $save_to            =   'uploads/poster_image/'.$insert_id.'.jpg';           
                $this->common_model->grab_image($image_source,$save_to);
            }

            $this->db->where('videos_id', $insert_id);
            $this->db->update('videos', $data_update);
            
            // email newslater
            if(isset($_POST['email_notify'])) {
                $this->load->model('email_model');
                $this->email_model->create_newslater_cron($insert_id);
            }
            // push notification
            if(isset($_POST['push_notify'])) {
                $this->load->model('notify_model');
                $this->notify_model->send_movie_notification($insert_id);
            }           
            $this->session->set_flashdata('success', 'Video added successed');
            redirect(base_url() . 'admin/file_and_download/'.$insert_id, 'refresh');
        }
        else if ($param1 == 'update') {
            $data['imdbid']                 = $this->input->post('imdbid');          
            $data['title']                  = $this->input->post('title');
            $data['seo_title']              = $this->input->post('seo_title');
            $data['description']            = $this->input->post('description');
            $data['is_paid']                = $this->input->post('is_paid');
            $data['trailler_youtube_source']            = $this->input->post('trailler_youtube_source');           
            $actors                         = $this->input->post('actor');            
            $directors                      = $this->input->post('director');            
            $writers                        = $this->input->post('writer');            
            $countries                      = $this->input->post('country');            
            $genres                         = $this->input->post('genre');
            $video_types                    = $this->input->post('video_type');
            if($actors !='' && $actors !=NULL){
                $data['stars']              = implode(',',$actors);
            }
            if($directors !='' && $directors !=NULL){
                $data['director']           = implode(',',$directors);
            }
            if($writers !='' && $writers !=NULL){
                $data['writer']             = implode(',',$writers);
            }
            if($countries !='' && $countries !=NULL){
                $data['country']            = implode(',',$countries);
            }
            if($genres !='' && $genres !=NULL){
                $data['genre']              = implode(',',$genres);
            }            
            
            $data['imdb_rating']        = $this->input->post('rating');
            $data['release']            = $this->input->post('release');            
            $data['runtime']            = $this->input->post('runtime');
            $data['video_quality']      = $this->input->post('video_quality');
            $publication                = $this->input->post('publication');
            if($publication =='on'){
                $data['publication'] = '1';
            }else{
                $data['publication'] = '0';
            }

            $enable_download                = $this->input->post('enable_download');
            if($enable_download =='on'){
                $data['enable_download'] = '1';
            }else{
                $data['enable_download'] = '0';
            }
                       
            $data['focus_keyword']      = $this->input->post('focus_keyword');
            $data['meta_description']   = $this->input->post('meta_description');
            $data['tags']               = $this->input->post('tags');
            $this->db->where('videos_id', $param2);
            $this->db->update('videos', $data);
            $this->db->where('videos_id', $param2);

            $slug                       = url_title($this->input->post('slug'), 'dash', TRUE);
            $slug_num                   = $this->common_model->slug_num('videos',$slug);
            if($slug_num > 1){
                $slug= $slug.'-'.$param2;
            }
            $data_update['slug']               = $slug;            
            if(isset($_FILES['thumbnail']) && $_FILES['thumbnail']['name']!=''){
                move_uploaded_file($_FILES['thumbnail']['tmp_name'], 'uploads/video_thumb/'.$param2.'.jpg');                
            }

            if(isset($_FILES['poster_file']) && $_FILES['poster_file']['name']!=''){
                move_uploaded_file($_FILES['poster_file']['tmp_name'], 'uploads/poster_image/'.$param2.'.jpg');                                
            }

            if($this->input->post('thumb_link')!=''){ 
                $image_source =$this->input->post('thumb_link');
                $save_to = 'uploads/video_thumb/'.$param2.'.jpg';           
                $this->common_model->grab_image($image_source,$save_to);
            }

            if($this->input->post('poster_link')!=''){ 
                $image_source =$this->input->post('poster_link');
                $save_to = 'uploads/poster_image/'.$param2.'.jpg';           
                $this->common_model->grab_image($image_source,$save_to);
            }

            $this->db->where('videos_id', $param2);
            $this->db->update('videos', $data_update);
            // email newslater
            if(isset($_POST['email_notify'])) {
                $this->load->model('email_model');
                $this->email_model->create_newslater_cron($param2);
            }
            // push notification
            if(isset($_POST['push_notify'])) {
                $this->load->model('notify_model');
                $this->notify_model->send_movie_notification($param2);
            }
            $this->session->set_flashdata('success', 'Video updated successed');
            redirect($this->agent->referrer());
        }
        // filter
        $title          = $this->input->get('title');
        $release        = $this->input->get('release');
        $publication    = $this->input->get('publication');
        $filter = array();
        $filter['is_tvseries '] = 0;
        $search_string = '';
        if($title !="" && $title !=NULL){
            $filter['title '] = $title;
            $search_string.= 'title='.$title.'&';
            $data['title'] = $title;
        }
        if($release !="" && $release !=NULL){
            $filter['release'] = $release;
            $search_string.= 'release='.$release.'&';
            $data['release'] = $release;
        }
        if($publication !="" && $publication !=NULL){
            $filter['publication'] = $publication;
            $search_string.= '&&publication='.$publication;
            $data['publication'] = $publication;            

        }
        $total_rows = $this->common_model->get_videos_num_rows($filter);
        // page
        $config                     = $this->common_model->pagination();
        $config["base_url"]         = base_url() . "admin/videos?".$search_string;
        $config["total_rows"]       = $total_rows;
        $config["per_page"]         = 10;
        $config["uri_segment"]      = 3;          
        //$config['use_page_numbers'] = TRUE;
        $config['page_query_string'] = TRUE; 
        $this->pagination->initialize($config);
        $data['last_row_num']=$this->uri->segment(3);
        $page = $this->input->get('per_page');//($this->uri->segment(3)) ? $this->uri->segment(3) : 0;   
        $data["videos"] = $this->common_model->get_videos($filter,$config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        $data['total_rows']=$config["total_rows"];
        $data['page_name']      = 'videos_manage';
        $data['page_title']     = 'Videos Management';             
        $this->load->view('admin/index', $data);
    }



    // add videos or movies 
    function tvseries_add(){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '29');
        $data['page_name']      = 'tvseries_add';
        $data['page_title']     = 'TV-series Add'; 
        $this->load->view('admin/index', $data);
    }

    // edit videos or movies 
    function tvseries_edit($param1='',$param2=''){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '29');
        $data['param1']         = $param1;
        $data['param2']         = $param2;
        $data['page_name']      = 'tvseries_edit';
        $data['page_title']     = 'TV-series Edit';
        $this->load->view('admin/index', $data);
    }

     // add,edit videos or movies 
    function tvseries($param1 = '', $param2 = ''){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '30');            
        
        if ($param1 == 'add') {
            $data['imdbid']             = $this->input->post('imdbid');          
            $data['title']              = $this->input->post('title');
            $data['seo_title']          = $this->input->post('seo_title');
            $data['description']        = $this->input->post('description');
            $data['is_paid']            = $this->input->post('is_paid');
            $data['trailler_youtube_source']        = $this->input->post('trailler_youtube_source');
            $actors                     = $this->input->post('actor');            
            $directors                  = $this->input->post('director');            
            $writers                    = $this->input->post('writer');            
            $countries                  = $this->input->post('country');            
            $genres                     = $this->input->post('genre');
            $video_types                = $this->input->post('video_type');
            if($actors !='' && $actors !=NULL){
                $data['stars']              = implode(',',$actors);
            }
            if($directors !='' && $directors !=NULL){
                $data['director']           = implode(',',$directors);
            }
            if($writers !='' && $writers !=NULL){
                $data['writer']             = implode(',',$writers);
            }
            if($countries !='' && $countries !=NULL){
                $data['country']            = implode(',',$countries);
            }
            if($genres !='' && $genres !=NULL){
                $data['genre']              = implode(',',$genres);
            }  
            $data['imdb_rating']        = $this->input->post('rating');
            $data['release']            = $this->input->post('release');
            $data['is_tvseries']        = '1';
            $data['runtime']            = $this->input->post('runtime');
            $data['video_quality']      = $this->input->post('video_quality');
            $data['publication']        = '0';
            if(isset($_POST['publication'])) {
                $data['publication']    = '1';
            }
            
            $enable_download                = $this->input->post('enable_download');
            if($enable_download =='on'){
                $data['enable_download'] = '1';
            }else{
                $data['enable_download'] = '0';
            }
            
            $data['focus_keyword']      = $this->input->post('focus_keyword');
            $data['meta_description']   = $this->input->post('meta_description');
            $data['tags']               = $this->input->post('tags');       
                        
            $this->db->insert('videos', $data);
            $insert_id = $this->db->insert_id();
            $slug                       = url_title($this->input->post('slug'), 'dash', TRUE);
            $slug_num                   = $this->common_model->slug_num('videos',$slug);
            if($slug_num > 0){
                $slug= $slug.'-'.$insert_id;
            }
            $data_update['slug']               = $slug;            
            if(isset($_FILES['thumbnail']) && $_FILES['thumbnail']['name']!=''){
                move_uploaded_file($_FILES['thumbnail']['tmp_name'], 'uploads/video_thumb/'.$insert_id.'.jpg');                
            }

            if(isset($_FILES['poster_file']) && $_FILES['poster_file']['name']!=''){
                move_uploaded_file($_FILES['poster_file']['tmp_name'], 'uploads/poster_image/'.$insert_id.'.jpg');                                
            }

            if($this->input->post('thumb_link')!=''){ 
                $image_source =$this->input->post('thumb_link');
                $save_to = 'uploads/video_thumb/'.$insert_id.'.jpg';           
                $this->common_model->grab_image($image_source,$save_to);
                // $cron_data['type']       = "image";       
                // $cron_data['action']     = "download";       
                // $cron_data['image_url']  = $image_source;       
                // $cron_data['save_to']    = $save_to;
                // $this->db->insert('cron',$cron_data);
            }

            if($this->input->post('poster_link')!=''){ 
                $image_source =$this->input->post('poster_link');
                $save_to = 'uploads/poster_image/'.$insert_id.'.jpg';           
                $this->common_model->grab_image($image_source,$save_to);
                // $cron_data['type']       = "image";       
                // $cron_data['action']     = "download";       
                // $cron_data['image_url']  = $image_source;       
                // $cron_data['save_to']    = $save_to;
                // $this->db->insert('cron',$cron_data);
            }

            $this->db->where('videos_id', $insert_id);
            $this->db->update('videos', $data_update);
            // email newslater
            if(isset($_POST['email_notify'])) {
                $this->load->model('email_model');
                $this->email_model->create_newslater_cron($insert_id);
            }
            // push notification
            if(isset($_POST['push_notify'])) {
                $this->load->model('notify_model');
                $this->notify_model->send_movie_notification($insert_id);
            }
            $this->session->set_flashdata('success', 'Tv Series added successed');
            redirect(base_url() . 'admin/seasons_manage/'.$insert_id, 'refresh');
        }
        else if ($param1 == 'update') {
            $data['imdbid']             = $this->input->post('imdbid');          
            $data['title']              = $this->input->post('title');
            $data['seo_title']          = $this->input->post('seo_title');
            $data['description']        = $this->input->post('description');
            $data['is_paid']            = $this->input->post('is_paid');
            $data['trailler_youtube_source']        = $this->input->post('trailler_youtube_source');
            $actors                     = $this->input->post('actor');            
            $directors                  = $this->input->post('director');            
            $writers                    = $this->input->post('writer');            
            $countries                  = $this->input->post('country');            
            $genres                     = $this->input->post('genre');
            $video_types                = $this->input->post('video_type');
            if($actors !='' && $actors !=NULL){
                $data['stars']              = implode(',',$actors);
            }
            if($directors !='' && $directors !=NULL){
                $data['director']           = implode(',',$directors);
            }
            if($writers !='' && $writers !=NULL){
                $data['writer']             = implode(',',$writers);
            }
            if($countries !='' && $countries !=NULL){
                $data['country']            = implode(',',$countries);
            }
            if($genres !='' && $genres !=NULL){
                $data['genre']              = implode(',',$genres);
            }
            $data['imdb_rating']        = $this->input->post('rating');
            $data['release']            = $this->input->post('release');
            $data['is_tvseries']        = '1';
            $data['runtime']            = $this->input->post('runtime');
            $data['video_quality']      = $this->input->post('video_quality');
            $publication = $this->input->post('publication');
            if($publication =='on'){
                $data['publication'] = '1';
            }else{
                $data['publication'] = '0';
            }
            $enable_download                = $this->input->post('enable_download');
            if($enable_download =='on'){
                $data['enable_download'] = '1';
            }else{
                $data['enable_download'] = '0';
            }            
            $data['focus_keyword']      = $this->input->post('focus_keyword');
            $data['meta_description']   = $this->input->post('meta_description');
            $data['tags']               = $this->input->post('tags');
            //var_dump($data);
            $this->db->where('videos_id', $param2);
            $this->db->update('videos', $data);
            $this->db->where('videos_id', $param2);

            $slug                       = url_title($this->input->post('slug'), 'dash', TRUE);
            $slug_num                   = $this->common_model->slug_num('videos',$slug);
            if($slug_num > 1){
                $slug= $slug.'-'.$param2;
            }
            $data_update['slug']               = $slug;            
            if(isset($_FILES['thumbnail']) && $_FILES['thumbnail']['name']!=''){
                move_uploaded_file($_FILES['thumbnail']['tmp_name'], 'uploads/video_thumb/'.$param2.'.jpg');                
            }

            if(isset($_FILES['poster_file']) && $_FILES['poster_file']['name']!=''){
                move_uploaded_file($_FILES['poster_file']['tmp_name'], 'uploads/poster_image/'.$param2.'.jpg');                                
            }

            if($this->input->post('thumb_link')!=''){ 
                $image_source =$this->input->post('thumb_link');
                $save_to = 'uploads/video_thumb/'.$param2.'.jpg';           
                //$this->common_model->grab_image($image_source,$save_to);
                $cron_data['type']       = "image";       
                $cron_data['action']     = "download";       
                $cron_data['image_url']  = $image_source;       
                $cron_data['save_to']    = $save_to;
                $this->db->insert('cron',$cron_data);
            }

            if($this->input->post('poster_link')!=''){ 
                $image_source =$this->input->post('poster_link');
                $save_to = 'uploads/poster_image/'.$param2.'.jpg';           
                $this->common_model->grab_image($image_source,$save_to);
                // $cron_data['type']       = "image";       
                // $cron_data['action']     = "download";       
                // $cron_data['image_url']  = $image_source;       
                // $cron_data['save_to']    = $save_to;
                // $this->db->insert('cron',$cron_data);
            }

            $this->db->where('videos_id', $param2);
            $this->db->update('videos', $data_update);
            // email newslater
            if(isset($_POST['email_notify'])) {
                $this->load->model('email_model');
                $this->email_model->create_newslater_cron($param2);
            }
            // push notification
            if(isset($_POST['push_notify'])) {
                $this->load->model('notify_model');
                $this->notify_model->send_movie_notification($param2);
            }

            $this->session->set_flashdata('success', 'TV Series updated successed');
            redirect($this->agent->referrer());
        }
        // filter
        $title          = $this->input->get('title');
        $release        = $this->input->get('release');
        $publication    = $this->input->get('publication');
        $filter = array();
        $filter['is_tvseries '] = 1;
        $search_string = '';
        if($title !="" && $title !=NULL){
            $filter['title '] = $title;
            $search_string.= 'title='.$title.'&';
            $data['title'] = $title;
        }
        if($release !="" && $release !=NULL){
            $filter['release'] = $release;
            $search_string.= 'release='.$release.'&';
            $data['release'] = $release;
        }
        if($publication !="" && $publication !=NULL){
            $filter['publication'] = $publication;
            $search_string.= '&&publication='.$publication;
            $data['publication'] = $publication;            

        }
        $total_rows = $this->common_model->get_videos_num_rows($filter);
        //var_dump($total_rows,$filter);
        // page
        //$config                         =   array();
        $config                         =   $this->common_model->pagination();
        $config["base_url"]             =   base_url() . "admin/tvseries?".$search_string;
        $config["total_rows"]           =   $total_rows;
        $config["per_page"]             =   10;
        $config["uri_segment"]          =   3;
         
        //$config['use_page_numbers'] = TRUE;
        $config['page_query_string']    =  TRUE;      

        $this->pagination->initialize($config);
        $data['last_row_num']           =   $this->uri->segment(3);
        $page                           =   $this->input->get('per_page');//($this->uri->segment(3)) ? $this->uri->segment(3) : 0;   
        $data["videos"]                 =   $this->common_model->get_videos($filter,10, $page);
        $data["links"]                  =   $this->pagination->create_links();
        //var_dump($data["links"]);
        $data['total_rows']             =   $total_rows;
        $data['page_name']              =   'tvseries_manage';
        $data['page_title']             =   'Videos Management';             
        $this->load->view('admin/index', $data);
    }

    function seasons_manage($param1='',$param2=''){
        //$this->common_model->clear_cache();
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '30');
        /* end menu active/inactive section*/

        /*if($param2 =='' || $param2 ==NULL){
            redirect(base_url() . 'error', 'refresh');
        }*/
        //var_dump($param1,$param2);
        if ($param1 == 'add') {            
        $data['videos_id']              = $this->input->post('videos_id');
        $data['seasons_name']           = $this->input->post('seasons_name');            
        $data['order']                  = $this->input->post('order');            
        
        $this->db->insert('seasons', $data);
        $this->session->set_flashdata('success', 'Seasons added successed');
        redirect($this->agent->referrer());
        }
        if ($param1 == 'update') {           
            
            $data['videos_id']          = $this->input->post('videos_id');
            $data['seasons_name']       = $this->input->post('seasons_name');
            $data['order']                  = $this->input->post('order'); 
            
            $this->db->where('seasons_id', $param2);
            $this->db->update('seasons', $data);
            $this->session->set_flashdata('success', 'Seasons update successed.');
            redirect($this->agent->referrer());
        }
        if ($param1 == 'change_order') {
            $videos_id           = $this->input->post('videos_id');
            $seasons_ids         = $this->input->post('seasons_id');
            $orders              = $this->input->post('order');
            $i=0;
            for($i=0; $i<sizeof($orders); $i++):
                $data['order'] = $orders[$i];
                $this->db->where('seasons_id', $seasons_ids[$i]);
                $this->db->update('seasons', $data);
            endfor;
            $this->session->set_flashdata('success', 'Order changed.');
            redirect(base_url() . 'admin/seasons_manage/'.$videos_id, 'refresh');
        }
        $data['param1']             = $param1;
        $data['param2']             = $param2;
        $data['slug']               = $this->common_model->get_slug_by_videos_id($param1);
        $data['page_name']          = 'seasons_manage';
        $data['page_title']         = $this->common_model->get_title_by_videos_id($param1);
        $this->load->view('admin/index', $data);
    }

    function episodes_manage($param1='',$param2=''){
        //$this->common_model->clear_cache();
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');
        /* start menu active/inactive section*/
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '30');
        /* end menu active/inactive section*/
        if ($param1 == 'change_order'):
            $videos_id           = $this->input->post('videos_id');
            $episodes_ids        = $this->input->post('episodes_id');
            $orders              = $this->input->post('order');
            $i=0;
            for($i=0; $i<sizeof($orders); $i++):
                $data['order'] = $orders[$i];
                $this->db->where('episodes_id', $episodes_ids[$i]);
                $this->db->update('episodes', $data);
            endfor;
            $this->session->set_flashdata('success', trans('update_success'));
            redirect($this->agent->referrer());
        elseif ($param1 == 'edit'):
            $data['param1']         = $param1;
            $data['param2']         = $param2;
            $data['page_name']      = 'episode_edit';
            $data['page_title']     = trans('edit_episode').' for '.$this->common_model->get_title_by_videos_id($param1);
            $data['episode_info']   = $this->common_model->get_single_episode_details_by_id($param2);
            $this->load->view('admin/index', $data);
        else:
            $data['param1']         = $param1;
            $data['param2']         = $param2;
            $data['slug']           = $this->common_model->get_slug_by_videos_id($param1);
            $data['page_name']      = 'episodes_manage';
            $data['page_title']     = trans('episodes_for').' '.$this->common_model->get_title_by_videos_id($param1).' '.$this->common_model->get__seasons_name_by_id($param2);
            $this->load->view('admin/index', $data);
        endif;
    }

    function episodes_download($param1='',$param2=''){
        //$this->common_model->clear_cache();
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');
        /* start menu active/inactive section*/
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '30');
        /* end menu active/inactive section*/
        if ($param1 == 'edit'):
            $data['param1']         = $param1;
            $data['param2']         = $param2;
            $data['page_name']      = 'episode_edit';
            $data['page_title']     = trans('edit_episode').' for '.$this->common_model->get_title_by_videos_id($param1);
            $data['episode_info']   = $this->common_model->get_single_episode_details_by_id($param2);
            $this->load->view('admin/index', $data);
        else:
            $data['param1']         = $param1;
            $data['param2']         = $param2;
            $data['slug']           = $this->common_model->get_slug_by_videos_id($param1);
            $data['page_name']      = 'episode_download';
            $data['page_title']     = "Download | ".$this->common_model->get_title_by_videos_id($param1).' '.$this->common_model->get__seasons_name_by_id($param2);
            $this->load->view('admin/index', $data);
        endif;
    }

    function file_and_download($param1 = '', $param2 = ''){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');
        /* start menu active/inactive section*/
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '8');
        /* end menu active/inactive section*/
        if ($param1 == 'update') {
            $video_id = $param2;
            $file_type= 'upload';
            $video_file_type    = $this->input->post('video_file_type');
            $video_file         = $this->input->post('video_file');
            $link_name          = $this->input->post('link_name');
            $link               = $this->input->post('link');            
            $this->db->where('videos_id', $video_id);
            $this->db->delete('video_file');
            for($i=0;$i<sizeof($video_file_type);$i++){                
                $file_data['videos_id']     = $video_id;
                $file_data['file_source']   = $video_file_type[$i];
                $file_data['source_type']   = 'link';
                if($video_file_type[$i]     == 'upload'){
                   $file_data['source_type'] = $this->common_model->get_extension($video_file[$i]);
                   copy('uploads/temp/'.$video_file[$i], 'uploads/videos/'.$video_file[$i]);
                }
                $file_data['file_url'] = $video_file[$i];
                $this->db->insert('video_file', $file_data);
                //var_dump($file_data);
            }
            $this->db->where('videos_id', $video_id);
            $this->db->delete('download_link');
            for($i=0;$i<sizeof($link);$i++){
                $download_data['videos_id'] = $video_id;
                $download_data['link_name'] = $link_name[$i];
                $download_data['link']      = $link[$i];
            }
        }
        if ($param1 == 'change_order'):
            $videos_id           = $this->input->post('videos_id');
            $video_file_ids      = $this->input->post('video_file_id');
            $orders              = $this->input->post('order');
            $i=0;
            for($i=0; $i<sizeof($orders); $i++):
                $data['order'] = $orders[$i];
                $this->db->where('video_file_id', $video_file_ids[$i]);
                $this->db->update('video_file', $data);
            endfor;
            $this->session->set_flashdata('success', trans('update_success'));
            redirect($this->agent->referrer());
        endif;
        if ($param1 == 'edit'):
            $data['param1']         = $param1;
            $data['param2']         = $param2;
            $data['page_name']      = 'video_file_edit';
            $data['page_title']     = trans('edit_video_file');
            $data['video_file_info']= $this->common_model->get_single_video_file_details_by_id($param2);
            $this->load->view('admin/index', $data);
        else:
            $data['param1']         = $param1;
            $data['param2']         = $param2;
            $data['slug']           = $this->common_model->get_slug_by_videos_id($param1);
            $data['page_name']      = 'file_and_download';
            $data['page_title']     = trans('file_and_download').' | '.$this->common_model->get_title_by_videos_id($param1);
            $this->load->view('admin/index', $data);
        endif;
    }

    public function movie_upload(){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');

        $videos_id                  = $this->input->post('videos_id');
        $label                      = $this->input->post('label');
        $order                      = $this->input->post('order');
        $source                     = $this->input->post('source');
        // validation rule
        $this->form_validation->set_rules('videos_id', trans('video_id'), 'trim|required');
        $this->form_validation->set_rules('label', trans('label'), 'trim|required');
        $this->form_validation->set_rules('source', trans('source'), 'trim|required');

        //  data
        $data['videos_id']      = $videos_id;
        $data['label']          = $label;
        $data['order']          = $order;
        $data['stream_key']     = $this->generate_random_string();
        $insert_status          = FALSE;
        //var_dump($data);

        if($source == 'upload'):
            if($this->form_validation->run() == FALSE):
                //var_dump(validation_errors());
                $this->session->set_flashdata('error', strip_tags(json_encode(validation_errors())));
            else:
                //upload configuration
                $NewFileName                = $videos_id.'-'.uniqid(); //new file name
                $config['upload_path']      = 'uploads/videos/';
                $config['allowed_types']    = 'mp4|webm|wmv|mkv|m3u8';
                $config['file_name']        = $NewFileName;
                $config['max_size']         = 0;
                //$this->load->library('upload', $config);
                $this->upload->initialize($config);
                //upload file to directory
                if($this->upload->do_upload('videofile')):
                    $uploadData             = $this->upload->data();                    
                    $file_name              = $uploadData['file_name'];
                    $file_ext               = $uploadData['file_ext'];
                    $file_ext               = str_replace('.','',$file_ext); 

                    $data['file_source']    = $file_ext;
                    $data['source_type']    = 'upload';                    
                    $data['file_url']       = base_url().'uploads/videos/'.$file_name;
                    
                    $this->db->insert('video_file', $data);
                    $insert_id              = $this->db->insert_id();
                    $insert_status          = TRUE;
                    $this->session->set_flashdata('success', trans('video_add_success'));
                    //var_dump($data);
                else:
                    $this->session->set_flashdata('error', strip_tags(json_encode($this->upload->display_errors())));
                    //var_dump($this->upload->display_errors());                    
                endif;
            endif;
        else:            
            $data['file_source']       = $source;
            $data['file_url']          = $this->input->post('url');
            $data['source_type']       = 'link';
            $this->form_validation->set_rules('url', trans('url'), 'trim|required');
            if($this->form_validation->run() == FALSE):
                $this->session->set_flashdata('error', strip_tags(json_encode(validation_errors())));
            else:
                $this->db->insert('video_file', $data);
                $insert_id              = $this->db->insert_id();
                $insert_status          = TRUE;
                $this->session->set_flashdata('success', trans('video_add_success'));
            endif;
        endif;
        redirect($this->agent->referrer());
    }
    public function movie_file_update($video_file_id=""){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');

        $videos_id                  = $this->input->post('videos_id');
        $label                      = $this->input->post('label');
        $order                      = $this->input->post('order');
        $source                     = $this->input->post('source');
        // validation rule
        $this->form_validation->set_rules('videos_id', trans('video_id'), 'trim|required');
        $this->form_validation->set_rules('label', trans('episode_name'), 'trim|required');
        $this->form_validation->set_rules('source', trans('source'), 'trim|required');

        //  data
        $data['videos_id']      = $videos_id;
        $data['label']          = $label;
        $data['order']          = $order;

        if($source == 'upload'):
            if($this->form_validation->run() == FALSE):
                $this->session->set_flashdata('error', strip_tags(json_encode(validation_errors())));
            else:
                //upload configuration
                $NewFileName                = $videos_id.'-'.uniqid(); //new file name
                $config['upload_path']      = 'uploads/videos/';
                $config['allowed_types']    = 'mp4|webm|mkv|wmv|m3u8';
                $config['file_name']        = $NewFileName;
                $config['max_size']         = 0;
                //$this->load->library('upload', $config);
                $this->upload->initialize($config);
                //upload file to directory
                if($this->upload->do_upload('videofile')):
                    $uploadData             = $this->upload->data();                    
                    $file_name              = $uploadData['file_name'];
                    $file_ext               = $uploadData['file_ext'];
                    $file_ext               = str_replace('.','',$file_ext); 

                    $data['file_source']    = $file_ext;
                    $data['source_type']    = 'upload';                    
                    $data['file_url']       = base_url().'uploads/videos/'.$file_name;
                    
                    
                    $this->db->where('video_file_id',$video_file_id);
                    $this->db->update('video_file', $data);
                    $this->session->set_flashdata('success', trans('video_update_success'));
                else:
                    //var_dump($this->upload->display_errors());
                    $this->session->set_flashdata('error', strip_tags(json_encode($this->upload->display_errors())));
                    
                endif;
            endif;
        else:            
            $data['file_source']       = $source;
            $data['file_url']          = $this->input->post('url');
            $data['source_type']       = 'link';
            $this->form_validation->set_rules('url', trans('url'), 'trim|required');
            if($this->form_validation->run() == FALSE):
                $this->session->set_flashdata('error', strip_tags(json_encode(validation_errors())));
            else:
                $this->db->where('video_file_id',$video_file_id);
                $this->db->update('video_file', $data);
                $this->session->set_flashdata('success', trans('video_update_success'));
            endif;
        endif;
        redirect($this->agent->referrer());
    }

    
    
    // videos or movies types
    function video_quality($param1 = '', $param2 = ''){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '24');        
        if ($param1 == 'add') {            
            $data['quality']                = $this->input->post('quality');
            $data['description']            = $this->input->post('description');
            $this->db->insert('quality', $data);
            $this->session->set_flashdata('success', 'Video quality added successed');
            redirect(base_url() . 'admin/video_quality/', 'refresh');
        }
        if ($param1 == 'update') {
            $data['quality']                = $this->input->post('quality');
            $data['description']            = $this->input->post('description');
            $this->db->where('quality_id', $param2);
            $this->db->update('quality', $data);
            $this->session->set_flashdata('success', 'Video quality update successed.');
            redirect(base_url() . 'admin/video_quality/', 'refresh');
        }
        $data['page_name']      = 'video_quality_manage';
        $data['page_title']     = 'Videos quality Management';
        $data['quality']        = $this->db->get('quality')->result_array();             
        $this->load->view('admin/index', $data);
    }

    // live tv
    function manage_live_tv($param1 = '', $param2 = ''){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '26');
        if ($param1 == 'new') {
            // active menu session
            $this->session->unset_userdata('active_menu');
            $this->session->set_userdata('active_menu', '35');
            $data['page_name']      = 'live_tv_add';
            $data['page_title']     = 'Add New TV Channel';
            $this->load->view('admin/index', $data);
        }        
        else if ($param1 == 'edit') {
            $data['page_name']      =   'live_tv_edit';
            $data['page_title']     =   'Edit TV Channel';
            $data['param2']         =   $param2;
            $data['live_tvs']       = $this->db->get_where('live_tv' , array('live_tv_id' => $param2) )->result_array(); 
            $this->load->view('admin/index', $data);
        }        
        else if ($param1 == 'add') {
            $data['tv_name']            = $this->input->post('tv_name');
            $data['seo_title']          = $this->input->post('seo_title');
            $data['slug']               = $this->common_model->generate_slug('live_tv',$this->input->post('tv_name'));
            $data['stream_from']        = $this->input->post('stream_from');
            $data['stream_label']       = $this->input->post('stream_label');
            $data['stream_url']         = $this->input->post('stream_url');   
            $data['description']        = $this->input->post('description');   
            $data['focus_keyword']      = $this->input->post('focus_keyword');   
            $data['meta_description']   = $this->input->post('meta_description');
            $data['is_paid']            = $this->input->post('is_paid');   
            $data['tags']               = $this->input->post('tags');
            $data['live_tv_category_id']= $this->input->post('live_tv_category_id');
            $data['country_id']= $this->input->post('country');
            
            $publish = $this->input->post('publish');
            $featured = $this->input->post('featured');
            if($publish =='on'){
                $data['publish'] = '1';
            }else{
                $data['publish'] = '0';
            }

            if($featured =='on'){
                $data['featured'] = '1';
            }else{
                $data['featured'] = '0';
            }

            $this->db->insert('live_tv', $data);
            $insert_id = $this->db->insert_id();
            if(isset($_FILES['thumbnail']) && $_FILES['thumbnail']['name']!=''){
                $extention = '.'.$this->common_model->get_extension($_FILES['poster']['name']);
                $file_name = $data['slug'].$extention;
                $file_path = 'uploads/tv_image/sm/'.$file_name;                
                move_uploaded_file($_FILES['thumbnail']['tmp_name'], $file_path);
                $data_update['thumbnail'] = $file_name;
                $this->db->where('live_tv_id', $insert_id);
                $this->db->update('live_tv', $data_update);
            }

            if(isset($_FILES['poster']) && $_FILES['poster']['name']!=''){
                $extention = '.'.$this->common_model->get_extension($_FILES['poster']['name']);
                $file_name = $data['slug'].$extention;
                $file_path = 'uploads/tv_image/'.$file_name;                
                move_uploaded_file($_FILES['poster']['tmp_name'], $file_path);
                $data_update['poster'] = $file_name;
                $this->db->where('live_tv_id', $insert_id);
                $this->db->update('live_tv', $data_update);
            }
            $data1['source']        = $this->input->post('stream_from1');
            $data1['label']         = $this->input->post('stream_label1');
            $data1['url']           = $this->input->post('stream_url1');
            $data1['quality']       = 'SD';
            $data1['stream_key']    = $this->generate_random_string();
            $data1['live_tv_id']    = $insert_id;
            $data1['url_for']       = 'opt1';
            $this->db->insert('live_tv_url', $data1);

            $data2['source']        = $this->input->post('stream_from2');
            $data2['label']         = $this->input->post('stream_label2');
            $data2['url']           = $this->input->post('stream_url2');
            $data2['quality']       = 'LQ';
            $data2['stream_key']    = $this->generate_random_string();
            $data2['live_tv_id']    = $insert_id;
            $data2['url_for']       = 'opt2';
            $this->db->insert('live_tv_url', $data2);

            $this->session->set_flashdata('success', 'TV added successed');
            redirect(base_url() . 'admin/manage_live_tv/', 'refresh');
        }
        else if ($param1 == 'update') {
            $data['tv_name']            = $this->input->post('tv_name');
            $data['seo_title']          = $this->input->post('seo_title');
            $data['slug']               = $this->common_model->regenerate_slug('live_tv',$param2,$this->input->post('tv_name'));
            $data['stream_from']        = $this->input->post('stream_from');
            $data['stream_label']       = $this->input->post('stream_label');
            $data['stream_url']         = $this->input->post('stream_url');   
            $data['description']        = $this->input->post('description');   
            $data['focus_keyword']      = $this->input->post('focus_keyword');   
            $data['meta_description']   = $this->input->post('meta_description');
            $data['is_paid']            = $this->input->post('is_paid');               
            $data['tags']               = $this->input->post('tags');
            $data['live_tv_category_id']= $this->input->post('live_tv_category_id');
            $data['country_id']= $this->input->post('country');
            
            $publish = $this->input->post('publish');
            $featured = $this->input->post('featured');
            if($publish =='on'){
                $data['publish'] = '1';
            }else{
                $data['publish'] = '0';
            }

            if($featured =='on'){
                $data['featured'] = '1';
            }else{
                $data['featured'] = '0';
            }

            $this->db->where('live_tv_id', $param2);
            $this->db->update('live_tv', $data);
            if(isset($_FILES['thumbnail']) && $_FILES['thumbnail']['name']!=''){
                $extention = '.'.$this->common_model->get_extension($_FILES['poster']['name']);
                $file_name = $data['slug'].$extention;
                $file_path = 'uploads/tv_image/sm/'.$file_name;                
                move_uploaded_file($_FILES['thumbnail']['tmp_name'], $file_path);
                $data_update['thumbnail'] = $file_name;
                $this->db->where('live_tv_id', $param2);
                $this->db->update('live_tv', $data_update);
            }

            if(isset($_FILES['poster']) && $_FILES['poster']['name']!=''){
                $extention = '.'.$this->common_model->get_extension($_FILES['poster']['name']);
                $file_name = $data['slug'].$extention;
                $file_path = 'uploads/tv_image/'.$file_name;                
                move_uploaded_file($_FILES['poster']['tmp_name'], $file_path);
                $data_update['poster'] = $file_name;
                $this->db->where('live_tv_id', $param2);
                $this->db->update('live_tv', $data_update);
            }
            
            $this->db->where('live_tv_id', $param2);
            $this->db->delete('live_tv_url');
            $data1['source']        = $this->input->post('stream_from1');
            $data1['label']         = $this->input->post('stream_label1');
            $data1['url']           = $this->input->post('stream_url1');
            $data1['quality']       = 'SD';
            $data1['stream_key']    = $this->generate_random_string();
            $data1['live_tv_id']    = $param2;
            $data1['url_for']       = 'opt1';
            $this->db->insert('live_tv_url', $data1);

            $data2['source']        = $this->input->post('stream_from2');
            $data2['label']         = $this->input->post('stream_label2');
            $data2['url']           = $this->input->post('stream_url2');
            $data2['quality']       = 'LQ';
            $data2['stream_key']    = $this->generate_random_string();
            $data2['live_tv_id']    = $param2;
            $data2['url_for']       = 'opt2';
            $this->db->insert('live_tv_url', $data2);


            $this->session->set_flashdata('success', 'TV added successed');
            redirect(base_url() . 'admin/manage_live_tv/edit/'.$param2, 'refresh');
        }else{
            $total_rows             = $this->live_tv_model->num_live_tv();
            $config                 = $this->common_model->pagination();
            $config["base_url"]     = base_url() . "admin/manage_live_tv/";
            $config["total_rows"]   = $total_rows;
            $config["per_page"]     = 10;
            $config["uri_segment"]  = 3;  
            //$config['use_page_numbers'] = TRUE;
            $config['page_query_string'] = TRUE;    

            $this->pagination->initialize($config);
            $data['last_row_num']   =   $this->uri->segment(3);
            $page                   =   $this->input->get('per_page');//($this->uri->segment(3)) ? $this->uri->segment(3) : 0;   
            $data["tvs"]            =   $this->live_tv_model->get_live_tvs($config["per_page"], $page);
            $data["links"]          =   $this->pagination->create_links();
            $data['total_rows']     =   $config["total_rows"];
            $data['page_name']      =   'live_tv_manage';
            $data['page_title']     =   'Live TV Management';             
            $this->load->view('admin/index', $data);
        }
    }

    // live tv category
    function live_tv_category($param1 = '', $param2 = ''){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '39');        
        if ($param1 == 'add') {            
            $data['live_tv_category']             = $this->input->post('live_tv_category');
            $data['live_tv_category_desc']        = $this->input->post('live_tv_category_desc');      
            
            $this->db->insert('live_tv_category', $data);

            $this->session->set_flashdata('success', 'Category added successed');
            redirect(base_url() . 'admin/live_tv_category/', 'refresh');
        }
        if ($param1 == 'update') {
            $data['live_tv_category']             = $this->input->post('live_tv_category');
            $data['live_tv_category_desc']        = $this->input->post('live_tv_category_desc');           
            $this->db->where('live_tv_category_id', $param2);
            $this->db->update('live_tv_category', $data);
            $this->session->set_flashdata('success', 'Category update successed.');
            redirect(base_url() . 'admin/live_tv_category/', 'refresh');
        }
        
        $data['page_name']      = 'live_tv_category_manage';
        $data['page_title']     = 'Category Management';
        $data['live_tv_categories']    = $this->db->get('live_tv_category')->result_array();             
        $this->load->view('admin/index', $data);
    }

    // add,edit videos or movies 
    function tv_program_guide($param1 = '', $param2 = ''){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', 139); 
        if ($param1 == 'add') {
            $data['live_tv_id']     = $this->input->post('live_tv_id');          
            $data['title']          = $this->input->post('title');
            $data['date']           = date("Y-m-d", strtotime($this->input->post('date')));
            $data['time']           = date("H:i:s", strtotime($this->input->post('time')));
            $data['type']           = $this->input->post('type');
            $data['status']         = $this->input->post('status');
            $video_url              = $this->input->post('video_url');
            if($video_url !='' && $video_url != NULL):
               $data['video_url']         = $video_url;
           endif;
           $this->db->insert('live_tv_program_guide',$data);
           $this->session->set_flashdata('success', 'Program guide successfully added.');
           redirect($this->agent->referrer());
        }
        else if ($param1 == 'update') {
            $data['live_tv_id']     = $this->input->post('live_tv_id');          
            $data['title']          = $this->input->post('title');
            $data['date']           = date("Y-m-d", strtotime($this->input->post('date')));
            $data['time']           = date("H:i:s", strtotime($this->input->post('time')));
            $data['type']           = $this->input->post('type');
            $data['status']         = $this->input->post('status');
            $video_url              = $this->input->post('video_url');
            if($video_url !='' && $video_url != NULL):
               $data['video_url']         = $video_url;
           endif;
            $this->db->where('live_tv_program_guide_id', $param2);
            $this->db->update('live_tv_program_guide', $data);
            $this->session->set_flashdata('success', 'Program guide successfully updated.');
            redirect($this->agent->referrer());
        }
        // filter
        $date               =   $this->input->get('date');
        $live_tv_id         =   $this->input->get('live_tv_id');
        $type               =   $this->input->get('type');
        $filter             =   array();
        $search_string      =   '';
        if($date !="" && $date !=NULL){
            $filter['date '] = $date;
            $search_string.= 'date='.$date.'&';
            $data['date'] = $date;
        }
        if($live_tv_id !="" && $live_tv_id !=NULL){
            $filter['live_tv_id'] = $live_tv_id;
            $search_string.= 'live_tv_id='.$live_tv_id.'&';
            $data['live_tv_id'] = $live_tv_id;
        }
        if($type !="" && $type !=NULL){
            $filter['type'] = $type;
            $search_string.= '&&type='.$type;
            $data['type'] = $type;            

        }
        $total_rows = $this->common_model->get_program_guide_num_rows($filter);
        // page
        $config                     = $this->common_model->pagination();
        $config["base_url"]         = base_url() . "admin/tv_program_guide?".$search_string;
        $config["total_rows"]       = $total_rows;
        $config["per_page"]         = 10;
        $config["uri_segment"]      = 3;          
        //$config['use_page_numbers'] = TRUE;
        $config['page_query_string'] = TRUE; 
        $this->pagination->initialize($config);
        $data['last_row_num']   =   $this->uri->segment(3);
        $page                   =   $this->input->get('per_page');//($this->uri->segment(3)) ? $this->uri->segment(3) : 0;   
        $data["program_guides"]  =   $this->common_model->get_program_guide($filter,$config["per_page"], $page);
        $data["links"]          =   $this->pagination->create_links();
        $data['total_rows']     =   $config["total_rows"];
        $data['page_name']      =   'tv_program_guide_manage';
        $data['page_title']     =   'TV Program Guide Management';             
        $data['all_channels']   =   $this->db->get('live_tv')->result_array();             
        $this->load->view('admin/index', $data);
    }

     // live tv
    function manage_radio($param1 = '', $param2 = ''){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '526');
        if ($param1 == 'new') {
            // active menu session
            $this->session->unset_userdata('active_menu');
            $this->session->set_userdata('active_menu', '535');
            $data['page_name']      = 'radio_add';
            $data['page_title']     = 'Add New Radio';
            $this->load->view('admin/index', $data);
        }        
        else if ($param1 == 'edit') {
            $data['page_name']      =   'radio_edit';
            $data['page_title']     =   'Edit Radio';
            $data['param2']         =   $param2;
            $data['radios']       = $this->db->get_where('radio' , array('radio_id' => $param2) )->result_array(); 
            $this->load->view('admin/index', $data);
        }        
        else if ($param1 == 'add') {
            $data['radio_name']            = $this->input->post('radio_name');
            $data['seo_title']          = $this->input->post('seo_title');
            $data['slug']               = $this->common_model->generate_slug('radio',$this->input->post('radio_name'));
            $data['stream_from']        = 'hls';
            $data['stream_label']       = 'HD';
            $data['stream_url']         = $this->input->post('stream_url');   
            $data['description']        = $this->input->post('description');   
            $data['focus_keyword']      = $this->input->post('focus_keyword');   
            $data['meta_description']   = $this->input->post('meta_description');
            $data['is_paid']            = $this->input->post('is_paid');   
            $data['tags']               = $this->input->post('tags');
            $data['radio_category_id']  = $this->input->post('radio_category_id');
            $publish = $this->input->post('publish');
            $featured = $this->input->post('featured');
            if($publish =='on'){
                $data['publish'] = '1';
            }else{
                $data['publish'] = '0';
            }

            if($featured =='on'){
                $data['featured'] = '1';
            }else{
                $data['featured'] = '0';
            }

            $this->db->insert('radio', $data);
            $insert_id = $this->db->insert_id();
            if(isset($_FILES['thumbnail']) && $_FILES['thumbnail']['name']!=''){
                $extention = '.'.$this->common_model->get_extension($_FILES['poster']['name']);
                $file_name = $data['slug'].$extention;
                $file_path = 'uploads/radio_image/sm/'.$file_name;                
                move_uploaded_file($_FILES['thumbnail']['tmp_name'], $file_path);
                $data_update['thumbnail'] = $file_name;
                $this->db->where('radio_id', $insert_id);
                $this->db->update('radio', $data_update);
            }

            if(isset($_FILES['poster']) && $_FILES['poster']['name']!=''){
                $extention = '.'.$this->common_model->get_extension($_FILES['poster']['name']);
                $file_name = $data['slug'].$extention;
                $file_path = 'uploads/radio_image/'.$file_name;                
                move_uploaded_file($_FILES['poster']['tmp_name'], $file_path);
                $data_update['poster'] = $file_name;
                $this->db->where('radio_id', $insert_id);
                $this->db->update('radio', $data_update);
            }
            $this->session->set_flashdata('success', 'TV added successed');
            redirect(base_url() . 'admin/manage_radio/', 'refresh');
        }
        else if ($param1 == 'update') {
            $data['radio_name']            = $this->input->post('radio_name');
            $data['seo_title']          = $this->input->post('seo_title');
            $data['slug']               = $this->common_model->regenerate_slug('radio',$param2,$this->input->post('radio_name'));
            $data['stream_from']        = $this->input->post('stream_from');
            $data['stream_label']       = $this->input->post('stream_label');
            $data['stream_url']         = $this->input->post('stream_url');   
            $data['description']        = $this->input->post('description');   
            $data['focus_keyword']      = $this->input->post('focus_keyword');   
            $data['meta_description']   = $this->input->post('meta_description');
            $data['is_paid']            = $this->input->post('is_paid');   
            $data['tags']               = $this->input->post('tags');
            $data['radio_category_id']= $this->input->post('radio_category_id');
            $publish = $this->input->post('publish');
            $featured = $this->input->post('featured');
            if($publish =='on'){
                $data['publish'] = '1';
            }else{
                $data['publish'] = '0';
            }

            if($featured =='on'){
                $data['featured'] = '1';
            }else{
                $data['featured'] = '0';
            }

            $this->db->where('radio_id', $param2);
            $this->db->update('radio', $data);
            if(isset($_FILES['thumbnail']) && $_FILES['thumbnail']['name']!=''){
                $extention = '.'.$this->common_model->get_extension($_FILES['poster']['name']);
                $file_name = $data['slug'].$extention;
                $file_path = 'uploads/radio_image/sm/'.$file_name;                
                move_uploaded_file($_FILES['thumbnail']['tmp_name'], $file_path);
                $data_update['thumbnail'] = $file_name;
                $this->db->where('radio_id', $param2);
                $this->db->update('radio', $data_update);
            }

            if(isset($_FILES['poster']) && $_FILES['poster']['name']!=''){
                $extention = '.'.$this->common_model->get_extension($_FILES['poster']['name']);
                $file_name = $data['slug'].$extention;
                $file_path = 'uploads/radio_image/'.$file_name;                
                move_uploaded_file($_FILES['poster']['tmp_name'], $file_path);
                $data_update['poster'] = $file_name;
                $this->db->where('radio_id', $param2);
                $this->db->update('radio', $data_update);
            }


            $this->session->set_flashdata('success', 'Radio added successed');
            redirect(base_url() . 'admin/manage_radio/edit/'.$param2, 'refresh');
        }else{
            $total_rows             = $this->radio_model->num_radio();
            $config                 = $this->common_model->pagination();
            $config["base_url"]     = base_url() . "admin/manage_radio/";
            $config["total_rows"]   = $total_rows;
            $config["per_page"]     = 10;
            $config["uri_segment"]  = 3;  
            //$config['use_page_numbers'] = TRUE;
            $config['page_query_string'] = TRUE;    

            $this->pagination->initialize($config);
            $data['last_row_num']   =   $this->uri->segment(3);
            $page                   =   $this->input->get('per_page');//($this->uri->segment(3)) ? $this->uri->segment(3) : 0;   
            $data["radios"]         =   $this->radio_model->get_radios($config["per_page"], $page);
            $data["links"]          =   $this->pagination->create_links();
            $data['total_rows']     =   $config["total_rows"];
            $data['page_name']      =   'radio_manage';
            $data['page_title']     =   'Radio Management';             
            $this->load->view('admin/index', $data);
        }
    }

    // live tv category
    function radio_category($param1 = '', $param2 = ''){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '539');        
        if ($param1 == 'add') {            
            $data['radio_category']             = $this->input->post('radio_category');
            $data['radio_category_desc']        = $this->input->post('radio_category_desc');      
            
            $this->db->insert('radio_category', $data);

            $this->session->set_flashdata('success', 'Category added successed');
            redirect(base_url() . 'admin/radio_category/', 'refresh');
        }
        if ($param1 == 'update') {
            $data['radio_category']             = $this->input->post('radio_category');
            $data['radio_category_desc']        = $this->input->post('radio_category_desc');           
            $this->db->where('radio_category_id', $param2);
            $this->db->update('radio_category', $data);
            $this->session->set_flashdata('success', 'Category update successed.');
            redirect(base_url() . 'admin/radio_category/', 'refresh');
        }
        
        $data['page_name']      = 'radio_category_manage';
        $data['page_title']     = 'Category Management';
        $data['radio_categories']    = $this->db->get('radio_category')->result_array();             
        $this->load->view('admin/index', $data);
    }

     // event
    function manage_event($param1 = '', $param2 = ''){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '626');
        if ($param1 == 'new') {
            // active menu session
            $this->session->unset_userdata('active_menu');
            $this->session->set_userdata('active_menu', '635');
            $data['page_name']      = 'event_add';
            $data['page_title']     = 'Add New event';
            $this->load->view('admin/index', $data);
        }        
        else if ($param1 == 'edit') {
            $data['page_name']      =   'event_edit';
            $data['page_title']     =   'Edit event';
            $data['param2']         =   $param2;
            $data['events']       = $this->db->get_where('event' , array('event_id' => $param2) )->result_array(); 
            $this->load->view('admin/index', $data);
        }        
        else if ($param1 == 'add') {
            $data['event_name']            = $this->input->post('event_name');
            $data['seo_title']          = $this->input->post('seo_title');
            $data['slug']               = $this->common_model->generate_slug('event',$this->input->post('event_name'));
            $data['stream_from']        = 'hls';
            $data['stream_label']       = 'HD';
            $data['stream_url']         = $this->input->post('stream_url');   
            $data['description']        = $this->input->post('description');   
            $data['focus_keyword']      = $this->input->post('focus_keyword');   
            $data['meta_description']   = $this->input->post('meta_description');
            $data['is_paid']            = $this->input->post('is_paid');   
            $data['price']              = $this->input->post('price');   
            $data['tags']               = $this->input->post('tags');
            //$data['event_category_id']  = $this->input->post('event_category_id');
            $publish = $this->input->post('publish');
            $featured = $this->input->post('featured');
            if($publish =='on'){
                $data['publish'] = '1';
            }else{
                $data['publish'] = '0';
            }

            if($featured =='on'){
                $data['featured'] = '1';
            }else{
                $data['featured'] = '0';
            }

            $this->db->insert('event', $data);
            $insert_id = $this->db->insert_id();
            if(isset($_FILES['thumbnail']) && $_FILES['thumbnail']['name']!=''){
                $extention = '.'.$this->common_model->get_extension($_FILES['poster']['name']);
                $file_name = $data['slug'].$extention;
                $file_path = 'uploads/event_image/sm/'.$file_name;                
                move_uploaded_file($_FILES['thumbnail']['tmp_name'], $file_path);
                $data_update['thumbnail'] = $file_name;
                $this->db->where('event_id', $insert_id);
                $this->db->update('event', $data_update);
            }

            if(isset($_FILES['poster']) && $_FILES['poster']['name']!=''){
                $extention = '.'.$this->common_model->get_extension($_FILES['poster']['name']);
                $file_name = $data['slug'].$extention;
                $file_path = 'uploads/event_image/'.$file_name;                
                move_uploaded_file($_FILES['poster']['tmp_name'], $file_path);
                $data_update['poster'] = $file_name;
                $this->db->where('event_id', $insert_id);
                $this->db->update('event', $data_update);
            }
            $this->session->set_flashdata('success', 'TV added successed');
            redirect(base_url() . 'admin/manage_event/', 'refresh');
        }
        else if ($param1 == 'update') {
            $data['event_name']            = $this->input->post('event_name');
            $data['seo_title']          = $this->input->post('seo_title');
            $data['slug']               = $this->common_model->regenerate_slug('event',$param2,$this->input->post('event_name'));
            $data['stream_from']        = 'hls';
            $data['stream_label']       = 'HD';
            $data['stream_url']         = $this->input->post('stream_url');   
            $data['description']        = $this->input->post('description');   
            $data['focus_keyword']      = $this->input->post('focus_keyword');   
            $data['meta_description']   = $this->input->post('meta_description');
            $data['is_paid']            = $this->input->post('is_paid');
            $data['price']              = $this->input->post('price');   
            $data['tags']               = $this->input->post('tags');
            //$data['event_category_id']= $this->input->post('event_category_id');
            $publish = $this->input->post('publish');
            $featured = $this->input->post('featured');
            if($publish =='on'){
                $data['publish'] = '1';
            }else{
                $data['publish'] = '0';
            }

            if($featured =='on'){
                $data['featured'] = '1';
            }else{
                $data['featured'] = '0';
            }

            $this->db->where('event_id', $param2);
            $this->db->update('event', $data);
            if(isset($_FILES['thumbnail']) && $_FILES['thumbnail']['name']!=''){
                $extention = '.'.$this->common_model->get_extension($_FILES['poster']['name']);
                $file_name = $data['slug'].$extention;
                $file_path = 'uploads/event_image/sm/'.$file_name;                
                move_uploaded_file($_FILES['thumbnail']['tmp_name'], $file_path);
                $data_update['thumbnail'] = $file_name;
                $this->db->where('event_id', $param2);
                $this->db->update('event', $data_update);
            }

            if(isset($_FILES['poster']) && $_FILES['poster']['name']!=''){
                $extention = '.'.$this->common_model->get_extension($_FILES['poster']['name']);
                $file_name = $data['slug'].$extention;
                $file_path = 'uploads/event_image/'.$file_name;                
                move_uploaded_file($_FILES['poster']['tmp_name'], $file_path);
                $data_update['poster'] = $file_name;
                $this->db->where('event_id', $param2);
                $this->db->update('event', $data_update);
            }


            $this->session->set_flashdata('success', 'event added successed');
            redirect(base_url() . 'admin/manage_event/edit/'.$param2, 'refresh');
        }else{
            $total_rows             = $this->event_model->num_event();
            $config                 = $this->common_model->pagination();
            $config["base_url"]     = base_url() . "admin/manage_event/";
            $config["total_rows"]   = $total_rows;
            $config["per_page"]     = 10;
            $config["uri_segment"]  = 3;  
            //$config['use_page_numbers'] = TRUE;
            $config['page_query_string'] = TRUE;    

            $this->pagination->initialize($config);
            $data['last_row_num']   =   $this->uri->segment(3);
            $page                   =   $this->input->get('per_page');//($this->uri->segment(3)) ? $this->uri->segment(3) : 0;   
            $data["events"]         =   $this->event_model->get_events($config["per_page"], $page);
            $data["links"]          =   $this->pagination->create_links();
            $data['total_rows']     =   $config["total_rows"];
            $data['page_name']      =   'event_manage';
            $data['page_title']     =   'Event Management';             
            $this->load->view('admin/index', $data);
        }
    }


    // videos or movies types
    function comments($param1 = '', $param2 = ''){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '31'); 
        if ($param1 == 'update_movie') {
            $data['comment']             = $this->input->post('comment');
            $data['publication']        = $this->input->post('publication');                        
            $this->db->where('comments_id', $param2);
            $this->db->update('comments', $data);
            $this->session->set_flashdata('success', 'Comments update successed.');
            redirect(base_url() . 'admin/comments/', 'refresh');
        }else if ($param1 == 'update_post') {
            $data['comment']             = $this->input->post('comment');
            $data['publication']        = $this->input->post('publication');                        
            $this->db->where('post_comments_id', $param2);
            $this->db->update('post_comments', $data);
            $this->session->set_flashdata('success', 'Comments update successed.');
            redirect(base_url() . 'admin/comments/', 'refresh');
        }else if($param1 == 'post_comments'){
            $this->session->unset_userdata('active_menu');
            $this->session->set_userdata('active_menu', '33');
            if($param2 != '' && $param2!=NULL ){
                $data['type']      = $param2;
            }
            else{
                $data['type']      = '';
            }     
        
            $data['page_name']      = 'post_comments_manage';
            $data['page_title']     = 'Post Comments Management';             
            $this->load->view('admin/index', $data);
        }else{
            if($param1 != '' && $param1!=NULL ){
                $data['type']      = $param1;
            }
            else{
                $data['type']      = '';
            }     
        
            $data['page_name']      = 'comments_manage';
            $data['page_title']     = 'Movie/TV-Series Comments Management';             
            $this->load->view('admin/index', $data);
        }
    }

    function comments_setting($param1 = '', $param2 = ''){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '32');
        if ($param1 == 'update') {
            $data['value'] = $this->input->post('comments_method');
            $this->db->where('title' , 'comments_method');
            $this->db->update('config' , $data);

            $data['value'] = $this->input->post('comments_approval');
            $this->db->where('title' , 'comments_approval');
            $this->db->update('config' , $data);

            $data['value'] = $this->input->post('facebook_comment_appid');
            $this->db->where('title' , 'facebook_comment_appid');
            $this->db->update('config' , $data);

            $this->session->set_flashdata('success', 'Comments setting update successed');
            redirect($this->agent->referrer());
                       
        }
            $data['page_name']      = 'comments_setting';
            $data['page_title']     = 'Comments Setting';
            $this->load->view('admin/index', $data);
        }

    // users
    function manage_user($param1 = '', $param2 = ''){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '15');        
        if ($param1 == 'add') {
            $data['name']           = $this->input->post('name');
            // $data['username']       = $this->input->post('username');
            $data['password']       = md5($this->input->post('password'));
            $data['email']          = $this->input->post('email');
            $data['role']           = $this->input->post('role');           
            //$data['status']         = $this->input->post('status');           
            
            $this->db->insert('user', $data);
            $this->session->set_flashdata('success', 'User added successed');
            redirect(base_url() . 'admin/manage_user/', 'refresh');
        }
        if ($param1 == 'update') {
            $data['name']           = $this->input->post('name');
            if($this->input->post('password')!='' || $this->input->post('password')!=NULL){
                $data['password']   = md5($this->input->post('password'));
            }            
            $data['email']          = $this->input->post('email');
            $data['role']           = $this->input->post('role');
            //$data['status']         = $this->input->post('status');
            $this->db->where('user_id', $param2);
            $this->db->update('user', $data);
            $this->session->set_flashdata('success', 'User update successed.');
            redirect(base_url() . 'admin/manage_user/', 'refresh');
        }       

        if ($param1 == 'delete') {
            $response = array();
            $user_id           = $this->input->post('user_id');
            $this->db->where('user_id', $user_id);
            $run = $this->db->delete('user');
            if($run){
				$response['status']  = 'success';
				$response['message'] = 'Product Deleted Successfully ...';
			}
			else {
				$response['status']  = 'error';
				$response['message'] = 'Unable to delete product ...';
			}
				echo json_encode($response);
        }
        $name           = $this->input->get('name');
        $search_string = '';
        if($name !="" && $name !=NULL){
            $filter['name '] = $name;
            $search_string.= 'name='.$name;
            $data['name'] = $name;
        }
        $total_rows     = $this->common_model->get_user_num_rows($name);
        // page
        $config                     = $this->common_model->pagination();
        $config["base_url"]         = base_url() . "admin/manage_user?".$search_string;
        $config["total_rows"]       = $total_rows;
        $config["per_page"]         = 15;
        $config["uri_segment"]      = 3;          
        //$config['use_page_numbers'] = TRUE;
        $config['page_query_string']= TRUE; 
        $this->pagination->initialize($config);
        $data['last_row_num']       =  $this->uri->segment(3);
        $page                       = ($this->input->get('per_page') !="" || $this->input->get('per_page') !=NULL) ? $this->input->get('per_page') : 0;//($this->uri->segment(3)) ? $this->uri->segment(3) : 0;   
        $data["users"]              = $this->common_model->get_users($name,$config["per_page"], $page);
        $data["links"]              = $this->pagination->create_links();
        $data['total_rows']         = $config["total_rows"];
        $data['page_name']          = 'user_manage';
        $data['page_title']         = 'User Management';             
        $this->load->view('admin/index', $data);
    }

    // users
    function manage_star($param1 = '', $param2 = ''){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '25'); 
        
        if ($param1 == 'add') {
            $star_name                      = trim($this->input->post('star_name'));
            if($this->db->get_where('star',array('star_name'=>$star_name))->num_rows() > 0){
                $this->session->set_flashdata('error', 'Star Already exist.');
                redirect($this->agent->referrer());
            }else{
                $data['star_name']              = $star_name;
                $data['slug']                   = $this->common_model->get_seo_url($star_name);
                $data['star_type']              = $this->input->post('star_type');
                $data['star_desc']              = $this->input->post('star_desc');   
                $this->db->insert('star', $data);
                $insert_id = $this->db->insert_id();
                if(isset($_FILES['photo']) && $_FILES['photo']['name']!=''){
                    move_uploaded_file($_FILES['photo']['tmp_name'], 'uploads/star_image/'.$insert_id.'.jpg');
                }
            }
            $this->session->set_flashdata('success', 'Star add successed.'); 
            redirect($this->agent->referrer());
        }
        if ($param1 == 'update') {
            $star_name                      = trim($this->input->post('star_name'));
            if($this->db->get_where('star',array('star_name'=>$star_name))->num_rows() > 1){
                $this->session->set_flashdata('error', 'Duplicate Star exist.');
                redirect(base_url() . 'admin/manage_star/', 'refresh');
            }else{
                $data['star_name']              = $star_name;
                $data['slug']                   = $this->common_model->get_seo_url($star_name);
                $data['star_type']              = $this->input->post('star_type');
                $data['star_desc']              = $this->input->post('star_desc');
                $this->db->where('star_id', $param2);
                $this->db->update('star', $data);
                if(isset($_FILES['photo']) && $_FILES['photo']['name']!=''){
                    move_uploaded_file($_FILES['photo']['tmp_name'], 'uploads/star_image/'.$param2.'.jpg');
                }
                $this->session->set_flashdata('success', 'Star update successed.'); 
                redirect($this->agent->referrer());
            }            
        }
        $config = $this->common_model->pagination();
        $config["base_url"] = base_url() . "admin/manage_star";
        $config["total_rows"] = $this->db->get_where('star', array('status'=>'1'))->num_rows();
        $config["per_page"] = 20;
        $config["uri_segment"] = 3;     

        $this->pagination->initialize($config);
        $data['last_row_num']=$this->uri->segment(3);
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;   
        $data["stars"] = $this->common_model->get_stars($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
        $data['total_rows']=$config["total_rows"];
        $data['page_name']      = 'star_manage';
        $data['page_title']     = 'Star Management';
        $this->load->view('admin/index', $data);
    }

    // system setting
    function system_setting($param1 = '', $param2 = ''){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '16');
            /* end menu active/inactive section*/
        if ($param1 == 'update') { 

             $data['value'] = $this->input->post('purchase_code');
             $this->db->where('title' , 'purchase_code');
             $this->db->update('config' , $data);

             $data['value'] = $this->input->post('mobile_apps_api_secret_key');
             $this->db->where('title' , 'mobile_apps_api_secret_key');
             $this->db->update('config' , $data);

             $data['value'] = "grid";
             if($this->input->post('app_menu') == "vertical")
                $data['value'] = "vertical";
             $this->db->where('title' , 'app_menu');
             $this->db->update('config' , $data);

             $data['value'] = "true";
             if($this->input->post('app_program_guide_enable') == "false")
                $data['value'] = "false";
             $this->db->where('title' , 'app_program_guide_enable');
             $this->db->update('config' , $data);

             $data['value'] = "false";
             if($this->input->post('app_mandatory_login') == "true")
                $data['value'] = "true";
             $this->db->where('title' , 'app_mandatory_login');
             $this->db->update('config' , $data);

             $data['value'] = "false";
             if($this->input->post('genre_visible') == "true")
                $data['value'] = "true";
             $this->db->where('title' , 'genre_visible');
             $this->db->update('config' , $data);

             $data['value'] = "false";
             if($this->input->post('country_visible') == "true")
                $data['value'] = "true";
             $this->db->where('title' , 'country_visible');
             $this->db->update('config' , $data);


             $data['value'] = $this->input->post('site_name');
             $this->db->where('title' , 'site_name');
             $this->db->update('config' , $data);
             
             $data['value'] = $this->input->post('system_email');
             $this->db->where('title' , 'system_email');
             $this->db->update('config' , $data);
             
             $data['value'] = $this->input->post('business_address');
             $this->db->where('title' , 'business_address');
             $this->db->update('config' , $data);

             $data['value'] = $this->input->post('business_phone');
             $this->db->where('title' , 'business_phone');
             $this->db->update('config' , $data);

             $data['value'] = $this->input->post('contact_email');
             $this->db->where('title' , 'contact_email');
             $this->db->update('config' , $data);

             $data['value'] = $this->input->post('terms');
             $this->db->where('title' , 'terms');
             $this->db->update('config' , $data);

             $data['value'] = $this->input->post('video_file_order');
            $this->db->where('title' , 'video_file_order');
            $this->db->update('config' , $data);

            $data['value'] = $this->input->post('season_order');
            $this->db->where('title' , 'season_order');
            $this->db->update('config' , $data);

            $data['value'] = $this->input->post('episode_order');
            $this->db->where('title' , 'episode_order');
            $this->db->update('config' , $data);        

             $this->session->set_flashdata('success', 'Setting update successed.');           
             redirect($this->agent->referrer());
        }
        $data['page_name']      = 'system_setting';
        $data['page_title']     = 'System Setting';
        $this->load->view('admin/index', $data);
    }

    // android setting
    function android_setting($param1 = '', $param2 = ''){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '18');
            /* end menu active/inactive section*/
        if ($param1 == 'update') { 

             $data['value'] = $this->input->post('apk_version_name');
             $this->db->where('title' , 'apk_version_name');
             $this->db->update('config' , $data);

             $data['value'] = $this->input->post('apk_version_code');
             $this->db->where('title' , 'apk_version_code');
             $this->db->update('config' , $data);

             $data['value'] = $this->input->post('apk_whats_new');
             $this->db->where('title' , 'apk_whats_new');
             $this->db->update('config' , $data);

             $data['value'] = $this->input->post('latest_apk_url');
             $this->db->where('title' , 'latest_apk_url');
             $this->db->update('config' , $data);

            $apk_update_is_skipable = $this->input->post('apk_update_is_skipable');
            if($apk_update_is_skipable =='on'):
                $data['value'] = '1';
                $this->db->where('title' , 'apk_update_is_skipable');
                 $this->db->update('config' , $data);
            else:
                $data['value'] = '0';
                 $this->db->where('title' , 'apk_update_is_skipable');
                 $this->db->update('config' , $data);
            endif;                        

            $this->session->set_flashdata('success', 'Setting update successed.');           
            redirect($this->agent->referrer());
        }
        $data['page_name']      = 'android_setting';
        $data['page_title']     = 'Android Setting';
        $this->load->view('admin/index', $data);
    }

    // API setting
    function api_setting($param1 = '', $param2 = ''){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '162');
            /* end menu active/inactive section*/
        if ($param1 == 'update_legacy_api') {
             $data['value'] = $this->input->post('mobile_apps_api_secret_key');
             $this->db->where('title' , 'mobile_apps_api_secret_key');
             $this->db->update('config' , $data);
             $this->session->set_flashdata('success', 'Setting update successed.');           
             redirect($this->agent->referrer());
        }
        if($param1 == 'create_key'):
            $this->form_validation->set_rules('label', 'Label', 'required|min_length[4]');
            if ($this->form_validation->run() == FALSE):
                $this->session->set_flashdata('error',strip_tags(json_encode(validation_errors())));
            else:
                $data['label'] = $this->input->post('label');
                $data['key']            = $this->generate_random_string(16);
                $data['level']          = 1;
                $data['date_created']   = time();
                $this->db->insert('keys',$data);
                $this->session->set_flashdata('success', 'Key create successed.');
            endif;
            redirect($this->agent->referrer());
        endif;
        if($param1 == 'update_key'):
            if($param2 !='' && $param2 !=NULL):
                $data['label'] = $this->input->post('label');
                $this->form_validation->set_rules('label', 'Label', 'required|min_length[4]'); 
                if ($this->form_validation->run() == FALSE):
                    $this->session->set_flashdata('error',strip_tags(json_encode(validation_errors())));
                else:               
                    $query = $this->db->get_where('keys',array('id'=>$param2));
                    if($query->num_rows() > 0):
                        $this->db->where('id',$param2);
                        $this->db->update('keys',$data);
                        $this->session->set_flashdata('success', 'Label update successed.');
                    else:
                       $this->session->set_flashdata('error', 'Invalid ID.');
                    endif;
                endif;
            else:
                $this->session->set_flashdata('error', 'ID Is required.'); 
            endif;
            redirect($this->agent->referrer());
        endif;


        if($param1 == 'delete_key'):
            if($param2 !='' && $param2 !=NULL):
                if($this->db->get_where('keys',array('id'=>$param2))->num_rows() > 0):
                    $this->db->where('id',$param2);
                    $this->db->delete('keys');
                    $this->session->set_flashdata('success', 'Key delete successed.');
                else:
                    $this->session->set_flashdata('error', 'ID not found.');
                endif; 
            else:
                $this->session->set_flashdata('error', 'ID Is required.'); 
            endif;
            redirect($this->agent->referrer());
        endif;

        if($param1 == 'create_authentication'):
            $this->form_validation->set_rules('username', 'Username', 'required|min_length[4]|is_unique[rest_logins.username]');
            if ($this->form_validation->run() == FALSE):
                $this->session->set_flashdata('error',strip_tags(json_encode(validation_errors())));
            else:
                $data['username'] = $this->input->post('username');
                $data['password']      = $this->generate_random_password(16);
                $this->db->insert('rest_logins',$data);
                $this->session->set_flashdata('success', 'Authentication create successed.');
            endif;
            redirect($this->agent->referrer());
        endif;

        if($param1 == 'update_authentication'):
            if($param2 !='' && $param2 !=NULL):
                $data['username'] = $this->input->post('username');
                $data['password'] = $this->input->post('password');
                $this->form_validation->set_rules('username', 'Username', 'required|min_length[4]');
                $this->form_validation->set_rules('password', 'Password', 'required|min_length[4]'); 
                if ($this->form_validation->run() == FALSE):
                    $this->session->set_flashdata('error',strip_tags(json_encode(validation_errors())));
                else:               
                    $query = $this->db->get_where('rest_logins',array('id !='=>$param2,'username'=>$data['username']));
                    if($query->num_rows() > 0):
                        $this->session->set_flashdata('error', 'Username already exist.Please choose another username.');
                    else:
                        $query = $this->db->get_where('rest_logins',array('id'=>$param2));
                        if($query->num_rows() > 0):
                            $this->db->where('id',$param2);
                            $this->db->update('rest_logins',$data);
                            $this->session->set_flashdata('success', 'Label update successed.');
                        else:
                           $this->session->set_flashdata('error', 'Invalid ID.');
                        endif;
                        $this->db->update('rest_logins',$data);
                        $this->session->set_flashdata('success', 'Authentication update successed.');
                    endif;
                endif;
            else:
                $this->session->set_flashdata('error', 'ID Is required.'); 
            endif;
            redirect($this->agent->referrer());
        endif;

        if($param1 == 'delete_authentication'):
            if($param2 !='' && $param2 !=NULL):
                if($this->db->get_where('rest_logins',array('id'=>$param2))->num_rows() > 0):
                    $this->db->where('id',$param2);
                    $this->db->delete('rest_logins');
                    $this->session->set_flashdata('success', 'Authentication delete successed.');
                else:
                    $this->session->set_flashdata('error', 'ID not found.');
                endif; 
            else:
                $this->session->set_flashdata('error', 'ID Is required.'); 
            endif;
            redirect($this->agent->referrer());
        endif;

        $data['page_name']      = 'api_setting';
        $data['page_title']     = 'API Setting';
        $data['key']           = $this->db->get('keys')->first_row();
        $data['rest_logins']    = $this->db->get('rest_logins')->result_array();
        $this->load->view('admin/index', $data);
    }


    function update($param1 = '', $param2 = ''){
        /* start menu active/inactive section*/
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '161');
        /* end menu active/inactive section*/
        $data['page_name']      = 'update';
        $data['page_title']     = 'System updater';
        $this->load->view('admin/index', $data);
    }

    function regenerate_mobile_secret_key(){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');
        $data['value'] = $this->generate_random_string(24);
        $this->db->where('title' , 'mobile_apps_api_secret_key');
        $this->db->update('config' , $data);
        $this->session->set_flashdata('success', 'New key create and save successed.');
        redirect($this->agent->referrer());
    }
    function regenerate_cron_key(){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');
        $data['value'] = $this->generate_random_string(24);
        $this->db->where('title' , 'cron_key');
        $this->db->update('config' , $data);
        $this->session->set_flashdata('success', 'New key create and save successed.');
        redirect($this->agent->referrer());
    }

    
    // general setting
    function email_setting($param1 = '', $param2 = ''){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '17');
        /* end menu active/inactive section*/

        if ($param1 == 'update') {
            $protocol = $this->input->post('protocol');            
            if($protocol=='smtp')
            {
                $data['value'] = $this->input->post('protocol');
                $this->db->where('title' , 'protocol');
                $this->db->update('config' , $data);

                $data['value'] = $this->input->post('smtp_host');
                $this->db->where('title' , 'smtp_host');
                $this->db->update('config' , $data);

                $data['value'] = $this->input->post('smtp_user');
                $this->db->where('title' , 'smtp_user');
                $this->db->update('config' , $data);


                $data['value'] = $this->input->post('smtp_pass');
                $this->db->where('title' , 'smtp_pass');
                $this->db->update('config' , $data);

                $data['value'] = $this->input->post('smtp_port');
                $this->db->where('title' , 'smtp_port');
                $this->db->update('config' , $data);

                $data['value'] = $this->input->post('smtp_crypto');
                $this->db->where('title' , 'smtp_crypto');
                $this->db->update('config' , $data); 
            }
            else if($protocol=='sendmail')
            {
                $data['value'] = $this->input->post('protocol');
                $this->db->where('title' , 'protocol');
                $this->db->update('config' , $data);

                $data['value'] = $this->input->post('mailpath');
                $this->db->where('title' , 'mailpath');
                $this->db->update('config' , $data);
            }else{
                $data['value'] = $this->input->post('protocol');
                $this->db->where('title' , 'protocol');
                $this->db->update('config' , $data);
            }

             $data['value'] = $this->input->post('contact_email');
             $this->db->where('title' , 'contact_email');
             $this->db->update('config' , $data);

             $this->session->set_flashdata('success', 'Setting update successed.');           
             redirect($this->agent->referrer());
        }
        $data['page_name']      = 'email_setting';
        $data['page_title']     = 'Email Setting';
        $this->load->view('admin/index', $data);
    }

    function push_notification_setting($param1 = '', $param2 = ''){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '36');
        /* end menu active/inactive section*/

        if ($param1 == 'update') {
            $data['value'] = $this->input->post('push_notification_enable');
            $this->db->where('title' , 'push_notification_enable');
            $this->db->update('config' , $data);

            $data['value'] = $this->input->post('onesignal_appid');
            $this->db->where('title' , 'onesignal_appid');
            $this->db->update('config' , $data);

            $data['value'] = $this->input->post('onesignal_api_keys');
            $this->db->where('title' , 'onesignal_api_keys');
            $this->db->update('config' , $data);

            $this->session->set_flashdata('success', 'Push notification setting update successed');
            redirect($this->agent->referrer());
        }
        $data['page_name']      = 'push_notification_setting';
        $data['page_title']     = 'Push notification setting(OneSignal)';
        $this->load->view('admin/index', $data);
    }

    function send_web_notification($param1 = '', $param2 = ''){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '371');
        /* end menu active/inactive section*/

        if ($param1 == 'send') {
            $data['message']            = $this->input->post("message");
            $data['url']                = $this->input->post("url");
            $data['headings']           = $this->input->post("headings");
            $data['icon']               = $this->input->post("icon");         
            $data['img']                = $this->input->post("img");
            $this->load->model('notify_model');
            $this->notify_model->send_web_notification($data);
            $this->session->set_flashdata('success', 'Push notification sent success');
            redirect($this->agent->referrer());
        }
        $data['page_name']      = 'send_web_notification';
        $data['page_title']     = 'Send Web Notification(OneSignal)';
        $this->load->view('admin/index', $data);
    }

    function send_movie_tvseries_notification($param1 = '', $param2 = ''){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '370');
        /* end menu active/inactive section*/

        if ($param1 == 'send'):
            $videos_id                  = $this->input->post("videos_id");
            if(!empty($videos_id) && $videos_id !='' && $videos_id !=NULL && is_numeric($videos_id)):
                $verify                 = $this->common_model->verify_movie_tvseries_id($videos_id);
                if($verify):
                    $data['message']    = $this->input->post("message");
                    $data['headings']   = $this->input->post("headings");
                    $data['icon']       = $this->input->post("icon");         
                    $data['img']        = $this->input->post("img");
                    $data['id']         = $videos_id;
                    $this->load->model('notify_model');
                    $this->notify_model->send_movie_tvseries_notification($data);
                    $this->session->set_flashdata('success', 'Push notification sent success');                    
                else:
                $this->session->set_flashdata('error', 'Movie ID not found.');
                endif;
            else:
                $this->session->set_flashdata('error', 'Invalid movie ID');
            endif;
            redirect($this->agent->referrer());
        endif;
        $data['page_name']      = 'send_movie_tvseries_notification';
        $data['page_title']     = 'Send Movie/TV-Series Notification(OneSignal)';
        $this->load->view('admin/index', $data);
    }

    function send_live_tv_notification($param1 = '', $param2 = ''){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '37');
        /* end menu active/inactive section*/

        if ($param1 == 'send'):
            $live_tv_id                  = $this->input->post("live_tv_id");
            if(!empty($live_tv_id) && $live_tv_id !='' && $live_tv_id !=NULL && is_numeric($live_tv_id)):
                $verify                 = $this->common_model->verify_live_tv_id($live_tv_id);
                if($verify):
                    $data['message']    = $this->input->post("message");
                    $data['headings']   = $this->input->post("headings");
                    $data['icon']       = $this->input->post("icon");         
                    $data['img']        = $this->input->post("img");
                    $data['id']         = $live_tv_id;
                    $this->load->model('notify_model');
                    $this->notify_model->send_live_tv_notification($data);
                    $this->session->set_flashdata('success', 'Push notification sent success');                    
                else:
                $this->session->set_flashdata('error', 'Movie ID not found.');
                endif;
            else:
                $this->session->set_flashdata('error', 'Invalid movie ID');
            endif;
            redirect($this->agent->referrer());
        endif;
        $data['page_name']      = 'send_live_tv_notification';
        $data['page_title']     = 'Send Live TV Notification(OneSignal)';
        $this->load->view('admin/index', $data);
    }



    function send_movie_notification($type='',$videos_id = '',$param2=''){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '37');
        /* end menu active/inactive section*/
        if(!empty($videos_id) && $videos_id !='' && $videos_id !=NULL && is_numeric($videos_id)):
            $verify                 = $this->common_model->verify_movie_tvseries_id($videos_id);
            if($verify):
                if($type == 'email'):
                    $this->load->model('email_model');
                    $this->email_model->create_newslater_cron($videos_id);
                    $this->session->set_flashdata('success', 'Newsletter Sent Successfully.');
                else:
                    $this->load->model('notify_model');

                    $this->notify_model->send_movie_notification($videos_id);
                    $this->session->set_flashdata('success', 'Notification Sent Successfully.');
                endif;
            else:
                $this->session->set_flashdata('error', 'Movie ID not found.');
            endif;
        else:
            $this->session->set_flashdata('error', 'Invalid movie ID');
        endif;
        redirect($this->agent->referrer());
    }

    function send_custom_movie_notification(){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');
            // active menu session
            $this->session->unset_userdata('active_menu');
            $this->session->set_userdata('active_menu', '37');
            /* end menu active/inactive section*/
        $videos_id = $this->input->post('videos_id');       
        if(!empty($videos_id) && $videos_id !='' && $videos_id !=NULL && is_numeric($videos_id)):
            $verify                 = $this->common_model->verify_movie_tvseries_id($videos_id);
            if($verify):
                $data['videos_id']  = $videos_id;
                $data['headings']   = $this->input->post('headings');
                $data['message']    = $this->input->post('message');
                $this->load->model('notify_model');
                if($this->notify_model->send_custom_movie_notification($data)):
                    $this->session->set_flashdata('success', 'Notification Send Successfully.');
                else:
                    $this->session->set_flashdata('error', 'Something went wrong.');
                endif;
            else:
                $this->session->set_flashdata('error', 'Movie ID not found.');
            endif;
        else:
            $this->session->set_flashdata('error', 'Invalid movie ID');
        endif;
        redirect($this->agent->referrer());
    }    

    function test_mail(){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');
        $email  =    $this->input->post('email');
        if($email !=''){
            $this->load->model('email_model');
            if($this->email_model->test_mail($email)){
                $this->session->set_flashdata('success', 'Mail Configuration is perfect');
                $this->session->set_flashdata('send_success', 'Mail Configuration is perfect.Please check your mail to confirm');
                redirect(base_url() . 'admin/email_setting/', 'refresh');
            }else{
                $this->session->set_flashdata('send_error', 'Mail Configuration is perfect');
                redirect(base_url() . 'admin/email_setting/', 'refresh');
            }            
        }
        
        $this->session->set_flashdata('error', 'Please enter a valid email.');
        redirect(base_url() . 'admin/email_setting/', 'refresh');        
    }

	// database backup and restore management
    function backup_restore($operation = '', $type = ''){

        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '23');
        
        if ($operation == 'create') {           
            $this->common_model->create_backup();
            $this->session->set_flashdata('success', 'Backup created..');
            redirect($this->agent->referrer());
        }
        if ($operation == 'download') {
            $this->load->helper('download');
            $file = FCPATH.'db_backup/'.$type;
            force_download($file,NULL);
        }
        if ($operation == 'delete') {
            $this->load->helper('file');
            $path_to_file = 'db_backup/'.$type;
            if(unlink($path_to_file)) {
                $this->session->set_flashdata('success', 'Deleted');
                redirect($this->agent->referrer());
            }
            else {
                $this->session->set_flashdata('error', 'File not found..');
                redirect($this->agent->referrer());
            }
        }
        if ($operation == 'restore') {
            $this->common_model->restore_backup();
            $this->session->set_flashdata('backup_message', 'Backup Restored');
            redirect($this->agent->referrer());
        }
        
            $data['page_info']  = 'Create backup / restore from backup';
            $data['page_name']  = 'backup_restore';
            $data['page_title'] = 'Manage Backup and Restore';
            $this->load->view('admin/index', $data);
    }

    function view_modal($page_name = '' , $param2 = '' , $param3 = '', $param4 = ''){
        $account_type       =   $this->session->userdata('login_type');
        $data['param2']     =   $param2;
        $data['param3']     =   $param3;
        $data['param4']     =   $param4;
        $this->load->view('admin/'.$page_name.'.php' ,$data);
    }
    //profile
	function manage_profile(){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '12');
        $data['page_name']      = 'manage_profile';
        $data['page_title']     = 'Update profile information';
        $data['profile_info']   = $this->db->get_where('user', array(
        'user_id' => $this->session->userdata('user_id')))->result_array();
        $this->load->view('admin/index', $data);
    }

    // profile
    function profile($param1 = '', $param2 = '', $param3 = ''){
        // active menu session
            $this->session->unset_userdata('active_menu');
            $this->session->set_userdata('active_menu', '12');
            /* end menu active/inactive section*/
            $user_id=$this->session->userdata('user_id');
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url() . 'login', 'refresh');
        if ($param1 == 'update') {
            $data['name']  = $this->input->post('name');
            $data['email'] = $this->input->post('email');
            
            $this->db->where('user_id', $user_id);
            $this->db->update('user', $data);
            $this->common_model->clear_cache();
            move_uploaded_file($_FILES['photo']['tmp_name'], 'uploads/user_image/' .$user_id.'.jpg');
            $this->common_model->clear_cache();
            $this->session->set_flashdata('success', 'Profile information updated.');
            redirect($this->agent->referrer());
        }
        if ($param1 == 'change_password'){
            $password               = md5($this->input->post('password'));
            $new_password           = md5($this->input->post('new_password'));
            $retype_new_password    = md5($this->input->post('retype_new_password'));
            
            $current_password       = $this->db->get_where('user', array(
                'user_id' => $this->session->userdata('user_id')
            ))->row()->password;
            
            if ($current_password == $password && $new_password == $retype_new_password) {
                $this->db->where('user_id', $this->session->userdata('user_id'));
                $this->db->update('user', array(
                    'password' => $new_password
                ));
                $this->session->set_flashdata('success', 'Password changed.');
            }
            elseif ($current_password !=$password ){
                $this->session->set_flashdata('error', 'Old password not correct.');

            } else {
                $this->session->set_flashdata('error', 'Password not match.');
            }
            redirect($this->agent->referrer());
        }
    }

    //universal delete function
    function delete_record(){
        $response           = array();
        $row_id             = $this->input->post('row_id');
        $table_name         = $this->input->post('table_name');
        $table_row_id       =$table_name.'_id';
        $this->db->where($table_row_id , $row_id);
        $query=$this->db->delete($table_name);
        if($query==true){
        $response['status']  = 'success';
        $response['message'] = 'Deleted successfully !';
        }
        else{
        $response['status']  = 'error';
        $response['message'] = 'Unable to delete record ...';
        }        
        echo json_encode($response);
    }

    //complete import function
    function complete_import(){
        $response                   = array();        
        $id                         =   trim($_POST["tmdb_id"]);
        $from                       =   $_POST["to"];
        $this->load->model('tmdb_model');
        if($from=='tv'){
            $result = $this->tmdb_model->import_tvseries_info($id);
        }else{
            $result = $this->tmdb_model->import_movie_info($id);
        }
        if($result):
            $response['status']         = 'success';
            $response['message']        = 'Imported Successfully.';
        else:
            $response['error']         = 'success';
            $response['message']        = 'Imported failed.'; 
            endif;      
        echo json_encode($response);        
    }  

    //imdb import
    function import_movie(){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');
        $response                   = array();        
        $id                         = trim($_POST["id"]);
        $from                       = $_POST["from"];
        // $id = 741067;
        // $from ='movie';
        $response['submitted_data'] = $_POST;
        $this->load->model('tmdb_model');
        if($from=='tv'){
            //$data = $this->tmdb_model->get_tvshow_actor_info($id);
            $data = $this->tmdb_model->get_tvseries_info($id);            
        }else{
            //$data = $this->tmdb_model->get_movie_actor_info($id);
            $data = $this->tmdb_model->get_movie_info($id);            
        }
        //var_dump($data);      
        if(isset($data['status']) && $data['status']=='success'){
            $response['imdb_status']    = 'success';
            $response['imdbid']         = $data['imdbid'];
            $response['title']          = $data['title'];
            $response['plot']           = $data['plot'];
            $response['runtime']        = $data['runtime'];
            $response['actor']          = $this->common_model->get_star_ids_for_movie_import('actor',$data['actor']);
            $response['director']       = $this->common_model->get_star_ids_for_movie_import('director',$data['director']);
            $response['writer']         = $this->common_model->get_star_ids_for_movie_import('writer',$data['writer']);
            $response['country']        = $this->country_model->get_country_ids($data['country']);
            $response['genre']          = $this->genre_model->get_genre_ids($data['genre']);
            $response['rating']         = $data['rating'];
            $response['release']        = $data['release'];
            $response['thumbnail']      = $data['thumbnail'];
            $response['poster']         = $data['poster'];
            $response['poster']         = $data['poster'];
            $response['trailler_youtube_source']         = $data['trailler_youtube_source'];
            $response['response']       = 'yes';
        }
        else{
            $response['imdb_status']    = 'fail';
            $response['title']          = '';
            $response['plot']           = '';
            $response['runtime']        = '';
            $response['actor']          = '';
            $response['director']       = '';
            $response['writer']         = '';
            $response['country']        = '';
            $response['genre']          = '';
            $response['rating']         = '';
            $response['release']        = '';
            $response['thumbnail']      = '';
            $response['poster']         = '';
            $response['response']       = 'no';
        }
        echo json_encode($response);
    }

    function fetch_actor_from_tmdb(){
        $response                   = array();        
        $id                         =   trim($_POST["id"]);
        $from                       =   $_POST["from"];
        $response['submitted_data'] = $_POST;
        $this->load->model('tmdb_model');
        if($from=='tv'){
            $data = $this->tmdb_model->get_tvshow_actor_info($id);
        }else{
            $data = $this->tmdb_model->get_movie_actor_info($id);
        }
        $this->session->set_flashdata('success', $data.' Stars imported from TMDB..');
        redirect($this->agent->referrer());
    }

    function download_link(){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');

        $this->form_validation->set_rules('videos_id', 'videos_id', 'required');
        $this->form_validation->set_rules('link_title', 'Link Title', 'required|min_length[2]');
        $this->form_validation->set_rules('file_size', 'File Size', 'required|min_length[2]');
        $this->form_validation->set_rules('resolution', 'Resolution', 'required|min_length[2]');
        $this->form_validation->set_rules('in_app_download', 'Download Type', 'required');
        $this->form_validation->set_rules('download_url', 'Download URL', 'required');
        if ($this->form_validation->run() == FALSE):
            $this->session->set_flashdata('error',strip_tags(json_encode(validation_errors())));
        else:
            $data['videos_id']          = $this->input->post("videos_id");            
            $data['link_title']         = $this->input->post("link_title");
            $data['file_size']          = $this->input->post("file_size");
            $data['resolution']         = $this->input->post("resolution");
            $data['download_url']       = $this->input->post("download_url");
            $data['in_app_download']    = $this->input->post("in_app_download");
            $this->db->insert('download_link',$data);
            $this->session->set_flashdata('success', 'Key create successed.');
        endif;
        redirect($this->agent->referrer());    
    }

    function episode_download_link(){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');

        $this->form_validation->set_rules('videos_id', 'videos_id', 'required');
        $this->form_validation->set_rules('season_id', 'season_id', 'required');
        $this->form_validation->set_rules('link_title', 'Link Title', 'required|min_length[2]');
        $this->form_validation->set_rules('file_size', 'File Size', 'required|min_length[2]');
        $this->form_validation->set_rules('resolution', 'Resolution', 'required|min_length[2]');
        $this->form_validation->set_rules('in_app_download', 'Download Type', 'required');
        $this->form_validation->set_rules('download_url', 'Download URL', 'required');
        if ($this->form_validation->run() == FALSE):
            $this->session->set_flashdata('error',strip_tags(json_encode(validation_errors())));
        else:
            $data['videos_id']          = $this->input->post("videos_id");            
            $data['season_id']          = $this->input->post("season_id");            
            $data['link_title']         = $this->input->post("link_title");
            $data['file_size']          = $this->input->post("file_size");
            $data['resolution']         = $this->input->post("resolution");
            $data['download_url']       = $this->input->post("download_url");
            $data['in_app_download']    = $this->input->post("in_app_download");
            $this->db->insert('episode_download_link',$data);
            $this->session->set_flashdata('success', 'Key create successed.');
        endif;
        redirect($this->agent->referrer());    
    }
    function video_file(){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');
        $response = array();
        $file_data['videos_id']         = $_POST["videos_id"];            
        $file_data['file_source']       = $_POST["type"];
        $file_data['file_url']          = $_POST["url"];
        $file_data['source_type']       = 'link';
        $file_data['stream_key']        = $this->generate_random_string();
        $this->db->insert('video_file', $file_data);
        $response['row_id']             = $this->db->insert_id();
        $response['post_status']        = "success";
        $response['type']               = $_POST["type"];
        $response['url']                = $_POST["url"];         
        $response['watch_url']          = base_url('watch/').$this->common_model->get_slug_by_videos_id($_POST["videos_id"]).'.html?key='.$file_data['stream_key'];         
        echo json_encode($response);    
    }

    function episodes_url(){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');
        $response = array();
        $image_url = base_url('uploads/default_image/episode.jpg');
        $file_data['videos_id']         = $_POST["videos_id"];
        $file_data['seasons_id']        = $_POST["seasons_id"];
        $file_data['episodes_name']     = $_POST["episodes_name"];            
        $file_data['file_source']       = $_POST["type"];
        $file_data['file_url']          = $_POST["url"];
        $file_data['stream_key']             = $this->generate_random_string();
        $file_data['source_type']       = 'link';
        $this->db->insert('episodes', $file_data);
        $insert_id = $this->db->insert_id();
        if(isset($_FILES["thumbnail"]) && $_FILES["thumbnail"]["error"]== UPLOAD_ERR_OK):
            $image_url = base_url('uploads/episodes/'.$insert_id.'.jpg');
            move_uploaded_file($_FILES['thumbnail']['tmp_name'], 'uploads/episodes/'.$insert_id.'.jpg');
        endif;
        $response['row_id']             = $insert_id;
        $response['status']             = "success";
        $response['type']               = $_POST["type"];
        $response['url']                = $_POST["url"];         
        $response['episodes_name']      = $_POST["episodes_name"];
        $response['video_info'] = '<tr id="row_'.$insert_id.'"><td><img src="'.$image_url.'" width="80"></td><td><strong>'.$response['episodes_name'].'</strong><td><strong>Upload</strong></td><td>'.$response['url'].'</td><td><a href="#" onclick="javascript:location.reload();">Reload Page</a></td></tr>';

        echo json_encode($response);    
    }
    //movie importer

    function movie_importer(){
		if ($this->session->userdata('admin_is_login') != 1)
			redirect(base_url(), 'refresh');
			// active menu session
		$this->session->unset_userdata('active_menu');
		$this->session->set_userdata('active_menu', '7');
		/* end menu active/inactive section*/
		$data['page_name']  = 'movie_importer';
		$data['page_title'] = 'Movie Search & Import';
        if(!empty($this->input->post('title')) && $this->input->post('title') !=NULL):
            $this->load->model('tmdb_model');
            $search_data    = $this->tmdb_model->search($this->input->post('title'),$this->input->post('to'));
            if(isset($search_data['error_message'])):
                $data['error_message'] = $search_data['error_message'];
            else:
                $data['movies'] = $search_data;
            endif;
            $data['title']  = $this->input->post('title');
            $data['to']     = $this->input->post('to');
        endif;
		$this->load->view('admin/index', $data);
	}
    //movie scraper

    function movie_scrapper_manage(){
            // active menu session
            $this->session->unset_userdata('active_menu');
            $this->session->set_userdata('active_menu', '77');
            /* end menu active/inactive section*/
            $data['page_name']  = 'movie_scrapper';
            $data['page_title'] = 'Movie Scrapper';
            $this->load->view('admin/index', $data);
    }
		
	public function movie_scrapper() {
		$message            =   '';
        $list               =   trim($this->input->post('movie_list'));
        $publication        =   trim($this->input->post('publication'));
		$fetch_trailer      =   trim($this->input->post('fetch_trailer'));
		if($list =='' || $list==NULL):
            $message        =   '<div class="alert alert-warning"><strong>Note:</strong> Enter a least one movie title..</div>';
            $this->session->set_flashdata('message', $message);
            redirect($this->agent->referrer());
        endif;
        $explode            = explode(',', $list); 
        foreach($explode as $movieName):  
            $url = 'http://ovoo.spagreen.net/movie-scrapper/get_movie_info_title.php?title='.urlencode($movieName);
            $curl               =   curl_init($url);
            curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($curl, CURLOPT_TIMEOUT, 30);
            curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1);
            curl_setopt( $curl, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows; U; Windows NT 5.1; rv:1.7.3) Gecko/20041001 Firefox/0.10.1" );
            $data      =   curl_exec($curl);
            curl_close($curl);
            $data = json_decode($data, true);
    		if(isset($data['Title'])):
                    $imdbid                         = $data['imdbID'];
                    $title                          = $data['Title'];
                    $type                           = $data['Type'];
                    $imdb_data['imdbid']            = $imdbid;
                    $imdb_data['title']             = $title;
                    $imdb_data['description']       = $data['Plot'];
                    $imdb_data['runtime']           = $data['Runtime'];
                    $imdb_data['stars']             = $this->common_model->get_star_ids('actor',$data['Actors']);
                    $imdb_data['director']          = $this->common_model->get_star_ids('director',$data['Director']);
                    $imdb_data['writer']            = $this->common_model->get_star_ids('writer',$data['Writer']);
                    $imdb_data['country']           = $this->country_model->get_country_ids($data['Country']);
                    $imdb_data['genre']             = $this->genre_model->get_genre_ids($data['Genre']);
                    $imdb_data['imdb_rating']       = $data['imdbRating'];
                    $imdb_data['release']           = date("Y-m-d",strtotime($data['Released']));
                    $imdb_data['enable_download']   = '0';
                    $poster                         = $data['Poster'];
                    if($type=='series'):
                        $imdb_data['is_tvseries']   = '1';                    
                    endif;

                    if(isset($fetch_trailer) && $publication =='1'):
                        $imdb_data['trailer']       = '1';                    
                    else:
                        $imdb_data['trailer']       = '0';
                    endif;
                    if(isset($publication) &&  $publication =='1'):
                        $imdb_data['publication']   = '1';                    
                    else:
                        $imdb_data['publication']   = '0';
                    endif;
    				$result_row     =   count($this->db->get_where('videos', array('imdbid' =>$imdbid))->result_array());
    			
    			if($result_row == 0):
    				$this->db->insert('videos', $imdb_data);
                    $insert_id = $this->db->insert_id();
                    //save poster
                    $save_to = 'uploads/video_thumb/'.$insert_id.'.jpg';           
                    $this->common_model->grab_image($poster,$save_to);
    				
    				$slug                       = url_title($title, 'dash', TRUE);
    				$slug_num                   = $this->common_model->slug_num('videos',$slug);
    				if($slug_num > 0){
    				$slug= $slug.'-'.$insert_id;
    				}
    				$slug_data['slug']          = $slug;
    				$this->db->where('videos_id', $insert_id);
    				$this->db->update('videos', $slug_data);
    				$message    .= '<div class="alert alert-success"><strong>'.$movieName.' </strong> Successfully added on your system.</div>';
    			elseif($result_row > 0):
    				$message    .= '<div class="alert alert-warning"><strong>'.$movieName.' </strong> already exist on your system.</div>';
    			endif;			
    		else:
                $message    .= '<div class="alert alert-warning"><strong>'.$movieName.' </strong>not found.</div>';

            endif;
        endforeach;
    	$this->session->set_flashdata('message', $message);
    	redirect($this->agent->referrer());
	}


    function cron_setting($param1 = '', $param2 = ''){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '78');

        if($param1=='update'):
            $data['value'] = $this->input->post('cron_key');
            $this->db->where('title' , 'cron_key');
            $this->db->update('config' , $data);
             // db backup on/off
             $backup_schedule = $this->input->post('backup_schedule');
             if($backup_schedule =='1'):
                $data['value'] = '1';
                $this->db->where('title' , 'backup_schedule');
                $this->db->update('config' , $data);
            elseif($backup_schedule =='7'):
                $data['value'] = '7';
                $this->db->where('title' , 'backup_schedule');
                $this->db->update('config' , $data);
            else:
                $data['value'] = '30';
                $this->db->where('title' , 'backup_schedule');
                $this->db->update('config' , $data);
            endif;

             $db_backup = $this->input->post('db_backup');
            if($db_backup =='on'):
                $data['value'] = '1';
                $this->db->where('title' , 'db_backup');
                 $this->db->update('config' , $data);
            else:
                $data['value'] = '0';
                 $this->db->where('title' , 'db_backup');
                 $this->db->update('config' , $data);
            endif;
            $this->session->set_flashdata('success', 'Cron Setting changed.');
            redirect($this->agent->referrer());
        endif;
        $data['page_name']  = 'manage_cron';
        $data['page_title'] = 'Cron Setting';
        $this->load->view('admin/index', $data);
    }

    function mobile_ads_setting($param1 = '', $param2 = ''){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '79');

        if($param1=='update'): 
            $mobile_ads_enable = $this->input->post('mobile_ads_enable');
            if($mobile_ads_enable =='on'):
                $data['value'] = '1';
                $this->db->where('title' , 'mobile_ads_enable');
                 $this->db->update('config' , $data);
            else:
                $data['value'] = '0';
                 $this->db->where('title' , 'mobile_ads_enable');
                 $this->db->update('config' , $data);
            endif;

            $data['value'] = $this->input->post('mobile_ads_network');
            $this->db->where('title' , 'mobile_ads_network');
            $this->db->update('config' , $data);

            $data['value'] = $this->input->post('admob_app_id');
            $this->db->where('title' , 'admob_app_id');
            $this->db->update('config' , $data);

            $data['value'] = $this->input->post('admob_publisher_id');
            $this->db->where('title' , 'admob_publisher_id');
            $this->db->update('config' , $data);

            $data['value'] = $this->input->post('admob_banner_ads_id');
            $this->db->where('title' , 'admob_banner_ads_id');
            $this->db->update('config' , $data);

            $data['value'] = $this->input->post('admob_interstitial_ads_id');
            $this->db->where('title' , 'admob_interstitial_ads_id');
            $this->db->update('config' , $data);

            $data['value'] = $this->input->post('admob_native_ads_id');
            $this->db->where('title' , 'admob_native_ads_id');
            $this->db->update('config' , $data);

            $data['value'] = $this->input->post('fan_native_ads_placement_id');
            $this->db->where('title' , 'fan_native_ads_placement_id');
            $this->db->update('config' , $data);


            $data['value'] = $this->input->post('fan_banner_ads_placement_id');
            $this->db->where('title' , 'fan_banner_ads_placement_id');
            $this->db->update('config' , $data);

            $data['value'] = $this->input->post('fan_interstitial_ads_placement_id');
            $this->db->where('title' , 'fan_interstitial_ads_placement_id');
            $this->db->update('config' , $data);

            $data['value'] = $this->input->post('fan_native_ads_placement_id');
            $this->db->where('title' , 'fan_native_ads_placement_id');
            $this->db->update('config' , $data);

            $data['value'] = $this->input->post('startapp_app_id');
            $this->db->where('title' , 'startapp_app_id');
            $this->db->update('config' , $data);

            $this->session->set_flashdata('success', 'Ads Setting changed.');
            redirect($this->agent->referrer());
        endif;
        $data['page_name']  = 'mobile_ads_setting';
        $data['page_title'] = 'Mobile Ads Setting';
        $this->load->view('admin/index', $data);
    }


    function ima_ads_setting($param1 = '', $param2 = ''){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '80');

        if($param1=='update'): 
            $preroll_ads_enable = $this->input->post('preroll_ads_enable');
            if($preroll_ads_enable =='on'):
                $data['value'] = '1';
                $this->db->where('title' , 'preroll_ads_enable');
                 $this->db->update('config' , $data);
            else:
                $data['value'] = '0';
                 $this->db->where('title' , 'preroll_ads_enable');
                 $this->db->update('config' , $data);
            endif;

            $data['value'] = $this->input->post('preroll_ads_video');
            $this->db->where('title' , 'preroll_ads_video');
            $this->db->update('config' , $data);

            $this->session->set_flashdata('success', 'IMA Ads Setting changed.');
            redirect($this->agent->referrer());
        endif;
        $data['page_name']  = 'ima_ads_setting';
        $data['page_title'] = 'IMA Ads Setting';
        $this->load->view('admin/index', $data);
    }

    // subtitles
    function subtitle($param1 = '', $param2 = ''){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');

        $video_file_id      = $this->input->post('video_file_id');
        $videos_id          = $this->input->post('videos_id');
        $language           = $this->input->post('language');
        $srclang            = $this->common_model->get_srclang($language);
        $kind               = $this->input->post('kind');
        $vtt_file           = $this->input->post('vtt_file');
        $vtt_url            = $this->input->post('vtt_url');
        $is_subtitle        = FALSE;

        if(isset($_FILES['vtt_file']) && $_FILES['vtt_file']['name']!=''){
            $ext = $this->common_model->get_extension($_FILES['vtt_file']['name']);
            if($ext =='vtt')
                $is_subtitle        = TRUE;
            $subtitle_path = 'uploads/subtitles/'.$videos_id.'_'.$video_file_id.'_'.$this->generate_random_string().'.vtt';
            move_uploaded_file($_FILES['vtt_file']['tmp_name'], $subtitle_path);
            $data['src'] = base_url().$subtitle_path;                               
        }else if(isset($vtt_url) && $vtt_url !=''){
            $data['src'] = $vtt_url;
            $is_subtitle        = TRUE;
        }
        if($is_subtitle){          
            $data['video_file_id']      = $video_file_id;
            $data['videos_id']          = $videos_id;
            $data['language']           = $language;
            $data['kind']               = $kind;
            $data['srclang']            = $srclang;
            $this->db->insert('subtitle', $data);
            $this->session->set_flashdata('success', 'Subtitle Added Successfully.');
            redirect(base_url() . 'admin/file_and_download/'.$videos_id, 'refresh'); 
        }else{
            $this->session->set_flashdata('error', 'Fail.Only .vtt is supported.');
            redirect(base_url() . 'admin/file_and_download/'.$videos_id, 'refresh'); 
        }
    }

    // tvseries subtitles
    function tvseries_subtitle($param1 = '', $param2 = ''){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');

        $episodes_id                = $this->input->post('episodes_id');
        $videos_id                  = $this->input->post('videos_id');
        $seasons_id                 = $this->input->post('seasons_id');
        $language                   = $this->input->post('language');
        $srclang                    = $this->common_model->get_srclang($language);
        $kind                       = $this->input->post('kind');
        $vtt_file                   = $this->input->post('vtt_file');
        $vtt_url                    = $this->input->post('vtt_url');
        $is_subtitle                = FALSE;

        if(isset($_FILES['vtt_file']) && $_FILES['vtt_file']['name']!=''){
            $ext = $this->common_model->get_extension($_FILES['vtt_file']['name']);
            if($ext =='vtt')
                $is_subtitle        = TRUE;
            $subtitle_path          = 'uploads/subtitles/'.$videos_id.'_'.$episodes_id.'_'.$this->generate_random_string().'.vtt';
            move_uploaded_file($_FILES['vtt_file']['tmp_name'], $subtitle_path);
            $data['src']            = base_url().$subtitle_path;                               
        }else if(isset($vtt_url) && $vtt_url !=''){
            $data['src']            = $vtt_url;
            $is_subtitle            = TRUE;
        }
        if($is_subtitle){          
            $data['episodes_id']    = $episodes_id;
            $data['videos_id']      = $videos_id;
            $data['language']       = $language;
            $data['kind']           = $kind;
            $data['srclang']        = $srclang;
            $this->db->insert('tvseries_subtitle', $data);
            $this->session->set_flashdata('success', trans('add_success'));
            redirect(base_url() . 'admin/episodes_manage/'.$videos_id.'/'.$seasons_id, 'refresh'); 
        }else{
            $this->session->set_flashdata('error', trans('vtt_support_only'));      
            redirect(base_url() . 'admin/episodes_manage/'.$videos_id.'/'.$seasons_id, 'refresh'); 
        }
    }


    public function video_upload(){
        $response = array();
        $videos_id             = $_POST["videos_id"];
        if(isset($_FILES["FileInput"]) && $_FILES["FileInput"]["error"]== UPLOAD_ERR_OK)
            {
                ############ Edit settings ##############
                $UploadDirectory    = 'uploads/videos/'; //specify upload directory ends with / (slash)                
                //check if this is an ajax request
                if (!isset($_SERVER['HTTP_X_REQUESTED_WITH'])){
                    $response['status'] = 'error';
                    $response['errors'] = 'Not ajax requiest';                    
                }            
                
                //Is file size is less than allowed size.
                if ($_FILES["FileInput"]["size"] > 50000000000242880) {
                    $response['status'] = 'error';
                    $response['errors'] = 'File size is too big!';
                }
                
                //allowed file type Server side check
                switch(strtolower($_FILES['FileInput']['type']))
                {
                    case 'video/avi':
                    case 'video/msvideo':
                    case 'video/x-msvideo':
                    case 'video/mp4':
                    case 'video/mpeg':
                    case 'video/x-matroska':
                    case 'video/x-mkv':
                    case 'video/mkv':
                    case 'application/x-mpegurl':
                    case 'video/x-flv':
                    case 'video/webm':
                        break;
                    default:
                        $response['status'] = 'error';
                        $response['errors'] = 'Unsupported File!';
                }                
                $File_Name          = strtolower($_FILES['FileInput']['name']);
                $File_Ext           = substr($File_Name, strrpos($File_Name, '.')); //get file extention
                $Random_Number      = rand(0, 9999999999); //Random number to be added to name.
                $NewFileName        = $videos_id.'_'.$Random_Number.$File_Ext; //new file name
                
                if(move_uploaded_file($_FILES['FileInput']['tmp_name'], $UploadDirectory.$NewFileName ))
                {
                    $data['videos_id']      = $videos_id;
                    $data['file_source']    = $this->common_model->get_extension($NewFileName);
                    $data['source_type']    = 'upload';
                    $data['stream_key']     = $this->generate_random_string();
                    $data['file_url']       = base_url().'uploads/videos/'.$NewFileName;
                    $this->db->insert('video_file', $data);
                    $insert_id              = $this->db->insert_id();
                    $response['status']     = 'success';
                    $response['video_info'] = '<tr id="row_'.$insert_id.'">
                                                <td>#</td>
                                                <td>Server</td>
                                                <td>'.base_url().'uploads/videos/'.$NewFileName.'</td>
                                                <td></td>
                                                <td>
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-white btn-sm dropdown-toggle waves-effect waves-light" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></button>
                                                        <ul class="dropdown-menu" role="menu">
                                                            
                                                            <li><a class="dropdown-item" title="Delete" href="#" onclick="delete_row('."'video_file',".$insert_id.')" class="delete">Delete</a> </li>

                                                        </ul>
                                                    </div>
                                                </td>
                                            </tr>';
                }else{
                    $response['status'] = 'error';
                    $response['errors'] = 'error uploading File!';
                }                
            }
            else
            {
                $response['status'] = 'error';
                $response['errors'] = 'Something wrong with upload! Is "upload_max_filesize" set correctly?';
            }
        echo json_encode($response);
    }

     public function episodes_upload(){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');
        $videos_id                  = $this->input->post('videos_id');
        $seasons_id                 = $this->input->post('seasons_id');
        $episodes_name              = $this->input->post('episodes_name');
        $order                      = $this->input->post('order');
        $source                     = $this->input->post('source');
        // validation rule
        $this->form_validation->set_rules('videos_id', trans('video_id'), 'trim|required');
        $this->form_validation->set_rules('seasons_id', trans('seasons_id'), 'trim|required');
        $this->form_validation->set_rules('episodes_name', trans('episode_name'), 'trim|required');
        $this->form_validation->set_rules('source', trans('source'), 'trim|required');

        //  data
        $data['videos_id']      = $videos_id;
        $data['seasons_id']     = $seasons_id;
        $data['episodes_name']  = $episodes_name;
        $data['order']          = $order;
        $datetime               = date("Y-m-d H:i:s");
        $data['date_added']     = $datetime;
        $data2['last_ep_added'] = $datetime;
        $data['stream_key']     = $this->generate_random_string();
        $insert_status          = FALSE;

        if($source == 'upload'):
            if($this->form_validation->run() == FALSE):
                $this->session->set_flashdata('error', validation_errors());
            else:
                //upload configuration
                $NewFileName                = $videos_id.'-'.$seasons_id.'-'.uniqid(); //new file name
                $config['upload_path']      = 'uploads/videos/';
                $config['allowed_types']    = 'mp4|webm|mkv|wmv|m3u8';
                $config['file_name']        = $NewFileName;
                $config['max_size']         = 0;
                //$this->load->library('upload', $config);
                $this->upload->initialize($config);
                //upload file to directory
                if($this->upload->do_upload('videofile')):
                    $uploadData             = $this->upload->data();                    
                    $file_name              = $uploadData['file_name'];
                    $file_ext               = $uploadData['file_ext'];
                    $file_ext               = str_replace('.','',$file_ext); 

                    $data['file_source']    = $file_ext;
                    $data['source_type']    = 'upload';                    
                    $data['file_url']       = base_url().'uploads/videos/'.$file_name;
                    
                    $this->db->insert('episodes', $data);
                    $insert_id              = $this->db->insert_id();
                    $insert_status          = TRUE;
                    // update episode update time
                    $this->db->where('videos_id',$videos_id);
                    $this->db->update('videos',$data2);
                    $this->session->set_flashdata('success', trans('episode_add_success'));
                else:
                    $this->session->set_flashdata('error', $this->upload->display_errors());
                    
                endif;
            endif;
        else:            
            $data['file_source']       = $source;
            $data['file_url']          = $this->input->post('url');
            $data['source_type']       = 'link';
            $this->form_validation->set_rules('url', trans('url'), 'trim|required');
            if($this->form_validation->run() == FALSE):
                $this->session->set_flashdata('error', validation_errors());
            else:
                $this->db->insert('episodes', $data);
                $insert_id              = $this->db->insert_id();
                $insert_status          = TRUE;
                // update episode update time
                $this->db->where('videos_id',$videos_id);
                $this->db->update('videos',$data2);
                $this->session->set_flashdata('success', trans('episode_add_success'));
            endif;
        endif;
        // upload thumbnail
        if (!empty($_FILES['thumbnail']['name'])):
            if($insert_status):                
                $image_name                 = $insert_id.'.jpg';
                $config['upload_path']      = 'uploads/episodes/';
                $config['allowed_types']    = 'jpg|png|jpeg';
                $config['file_name']        = $image_name;
                $config['max_size']         = 0;
                //$this->load->library('upload', $config);
                $this->upload->initialize($config);
                //upload file to directory
                if(!$this->upload->do_upload('thumbnail')):
                    $this->session->set_flashdata('error', $this->upload->display_errors());
                endif;
            endif;
        endif;
        redirect($this->agent->referrer());
    }
    public function episodes_update($episodes_id=""){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');
        $videos_id                  = $this->input->post('videos_id');
        $seasons_id                 = $this->input->post('seasons_id');
        $episodes_name              = $this->input->post('episodes_name');
        $order                      = $this->input->post('order');
        $source                     = $this->input->post('source');
        // validation rule
        $this->form_validation->set_rules('videos_id', trans('video_id'), 'trim|required');
        $this->form_validation->set_rules('seasons_id', trans('seasons_id'), 'trim|required');
        $this->form_validation->set_rules('episodes_name', trans('episode_name'), 'trim|required');
        $this->form_validation->set_rules('source', trans('source'), 'trim|required');

        //  data
        $data['videos_id']      = $videos_id;
        $data['seasons_id']     = $seasons_id;
        $data['episodes_name']  = $episodes_name;
        $data['order']          = $order;

        if($source == 'upload'):
            if($this->form_validation->run() == FALSE):
                $this->session->set_flashdata('error', validation_errors());
            else:
                //upload configuration
                $NewFileName                = $videos_id.'-'.$seasons_id.'-'.uniqid(); //new file name
                $config['upload_path']      = 'uploads/videos/';
                $config['allowed_types']    = 'mp4|webm|mkv|wmv|m3u8';
                $config['file_name']        = $NewFileName;
                $config['max_size']         = 0;
                //$this->load->library('upload', $config);
                $this->upload->initialize($config);
                //upload file to directory
                if($this->upload->do_upload('videofile')):
                    $uploadData             = $this->upload->data();                    
                    $file_name              = $uploadData['file_name'];
                    $file_ext               = $uploadData['file_ext'];
                    $file_ext               = str_replace('.','',$file_ext); 

                    $data['file_source']    = $file_ext;
                    $data['source_type']    = 'upload';                    
                    $data['file_url']       = base_url().'uploads/videos/'.$file_name;

                    $this->db->where('episodes_id',$episodes_id);                    
                    $this->db->update('episodes', $data);
                    $this->session->set_flashdata('success', trans('episode_update_success'));
                else:
                    $this->session->set_flashdata('error', $this->upload->display_errors());
                    
                endif;
            endif;
        else:            
            $data['file_source']       = $source;
            $data['file_url']          = $this->input->post('url');
            $data['source_type']       = 'link';
            $this->form_validation->set_rules('url', trans('url'), 'trim|required');
            if($this->form_validation->run() == FALSE):
                $this->session->set_flashdata('error', validation_errors());
            else:
                $this->db->where('episodes_id',$episodes_id);                    
                $this->db->update('episodes', $data);
                $this->session->set_flashdata('success', trans('episode_update_success'));
            endif;
        endif;
        // upload thumbnail
        if (!empty($_FILES['thumbnail']['name'])):                
            $image_name                 = $episodes_id.'.jpg';
            $config['upload_path']      = 'uploads/episodes/';
            $config['allowed_types']    = 'jpg|png|jpeg';
            $config['file_name']        = $image_name;
            $config['max_size']         = 0;
            $config['overwrite']        = TRUE;
            $this->upload->initialize($config);
            //upload file to directory
            if(!$this->upload->do_upload('thumbnail')):
                $this->session->set_flashdata('error', $this->upload->display_errors());
            endif;
        endif;
        redirect($this->agent->referrer());
    }

    public function load_stars(){
        $q                          = $this->input->get('q');
        $users_arr                  = [];
        $this->db->limit(50);
        $this->db->like('star_name',$q,'both');
        $stars                      = $this->db->get('star')->result_array();
        foreach( $stars as $star){
            $userid         = $star['star_id'];
            $name           = $star['star_name'];
            $users_arr[]    = ["id" => $userid, "text" => $name];
        }
        echo json_encode($users_arr);
    }

    public function load_movie(){
        $q                          = $this->input->get('q');
        $users_arr                  = [];
        $this->db->limit(50);
        $this->db->where('is_tvseries !=','1');
        $this->db->like('title',$q,'both');
        $stars                      = $this->db->get('videos')->result_array();
        foreach( $stars as $star){
            $videos_id         = $star['videos_id'];
            $title           = $star['title'];
            $users_arr[]    = ["id" => $videos_id, "text" => $title];
        }
        echo json_encode($users_arr);
    }

    public function load_tvseries(){
        $q                          = $this->input->get('q');
        $users_arr                  = [];
        $this->db->limit(50);
        $this->db->where('is_tvseries','1');
        $this->db->like('title',$q,'both');
        $stars                      = $this->db->get('videos')->result_array();
        foreach( $stars as $star){
            $videos_id         = $star['videos_id'];
            $title           = $star['title'];
            $users_arr[]    = ["id" => $videos_id, "text" => $title];
        }
        echo json_encode($users_arr);
    }

    public function load_tv_channel(){
        $q                          = $this->input->get('q');
        $users_arr                  = [];
        $this->db->limit(50);
        $this->db->where('is_tvseries','1');
        $this->db->like('title',$q,'both');
        $stars                      = $this->db->get('videos')->result_array();
        foreach( $stars as $star){
            $videos_id         = $star['videos_id'];
            $title           = $star['title'];
            $users_arr[]    = ["id" => $videos_id, "text" => $title];
        }
        echo json_encode($users_arr);
    }


    public function get_movie_by_search_title(){
        $q                          = $this->input->get('q');
        $movies                     = [];
        $this->db->limit(50);
        $this->db->like('title',$q,'both');
        $videos                      = $this->db->get('videos')->result_array();
        foreach( $videos as $video){
            $videos_id          = $video['videos_id'];
            $title              = $video['title'];
            $movies[]           = ["id" => $videos_id, "text" => $title];
        }
        echo json_encode($movies);
    }

    public function get_live_tv_by_search_title(){
        $q                          = $this->input->get('q');
        $movies                     = [];
        $this->db->limit(50);
        $this->db->like('tv_name',$q,'both');
        $live_tvs                      = $this->db->get('live_tv')->result_array();
        foreach( $live_tvs as $live_tv){
            $live_tv_id          = $live_tv['live_tv_id'];
            $title              = $live_tv['tv_name'];
            $movies[]           = ["id" => $live_tv_id, "text" => $title];
        }
        echo json_encode($movies);
    }


    function generate_random_string($length=12) {
      $str                  = "";
        $characters         = array_merge(range('a','z'), range('0','9'));
        $max                = count($characters) - 1;
        for ($i = 0; $i < $length; $i++) {
            $rand = mt_rand(0, $max);
            $str .= $characters[$rand];
        }
        return $str;
    }

    function generate_random_password($length=12) {
      $str                  = "";
        $characters         = array_merge(range('a','z'), range('0','9'),range('~','|'));
        $max                = count($characters) - 1;
        for ($i = 0; $i < $length; $i++) {
            $rand = mt_rand(0, $max);
            $str .= $characters[$rand];
        }
        return $str;
    }

    function regenerate_stream_key($length=12) {
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');
        $video_files = $this->db->get('video_file')->result_array();
        foreach ($video_files as $video_file):
            $data['stream_key'] = $this->generate_random_string();
            $this->db->where('video_file_id',$video_file['video_file_id']);
            $this->db->update('video_file', $data);
        endforeach;
        $episodes = $this->db->get('episodes')->result_array();
        foreach ($episodes as $episode):
            $data['stream_key'] = $this->generate_random_string();
            $this->db->where('episodes_id',$episode['episodes_id']);
            $this->db->update('episodes', $data);
        endforeach;
        redirect(base_url() . 'admin/dashboard', 'refresh');
    }
    function terms(){
        $data['page_title']     = 'Terms & Conditions';
        $data['sliders']        = $this->db->get('slider')->result_array(); 
        $this->load->view('admin/terms', $data);
    }

    public function get_single_movie_details_by_id(){
        $response                       = array();
        $id                             = $this->input->post('videos_id');
        $this->db->where('videos_id', $id);
        $movie                          =   $this->db->get('videos')->row();        
        $response['videos_id']          = $movie->videos_id;
        $response['title']              = $movie->title;
        $response['description']        = strip_tags($movie->description);
        $response['thumbnail_url']      = $this->common_model->get_video_thumb_url($movie->videos_id);
        $response['poster_url']         = $this->common_model->get_video_poster_url($movie->videos_id);
        echo json_encode($response);
    }
    public function get_single_tv_details_by_id(){
        $response                       = array();
        $id                             = $this->input->post('live_tv_id');
        $this->db->where('live_tv_id', $id);
        $tv                             =   $this->db->get('live_tv')->row();        
        $response['live_tv_id']         = $tv->live_tv_id;
        $response['title']              = $tv->tv_name;
        $response['description']        = strip_tags($tv->description);        
        $response['thumbnail_url']      = $this->live_tv_model->get_tv_thumbnail($tv->thumbnail);
        $response['poster_url']         = $this->live_tv_model->get_tv_poster($tv->poster);    
        echo json_encode($response);
    }

    public function api_test(){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');
        $key = $this->db->get_where('keys')->first_row()->key;
        echo "<h3>This is REST API</h3>";
        echo "<p> use postman for testing API <a href='https://www.postman.com/downloads/'>Download Postman</a></p>";
        echo "<p>Use this URL for testing: <a target='_blank' href='".base_url('rest-api/v130/test?API-KEY=').$key."'>".base_url('rest-api/v130/test?API-KEY=').$key."</a>";
        echo "<p>Add this key to header: 'API-KEY' &amp; value: ".$key;
    }

    function upgate_api_key($param1=''){
        if ($this->session->userdata('admin_is_login') != 1)
            redirect(base_url(), 'refresh');
        if($param1 !="" && $param1 !=NULL):
            $query = $this->db->get_where('keys',array('id'=>$param1));
            if($query->num_rows() >0):
                $data['key'] = $this->generate_random_string(24);
                $this->db->where("id",$param1);
                $this->db->update('keys',$data);
                $this->session->set_flashdata('success', 'New key create and save successed.');
            endif;
        endif;
        redirect($this->agent->referrer());
    }

    // movie request
    function request_manage($param1 = '', $param2 = ''){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '4001');
        if ($param1 == 'update') {
            $data['name']           = $this->input->post('name');
            $data['movie_name']     = $this->input->post('movie_name');
            $data['email']          = $this->input->post('email');
            $data['status']         = $this->input->post('status');

            $this->db->where('request_id', $param2);
            $this->db->update('request', $data);
            $this->session->set_flashdata('success', 'User update successed.');
            redirect(base_url() . 'admin/request_manage/', 'refresh');
        }
        $total_rows     = $this->db->get('request')->num_rows();
        // page
        $config                     = $this->common_model->pagination();
        $config["base_url"]         = base_url() . "admin/request_manage";
        $config["total_rows"]       = $total_rows;
        $config["per_page"]         = 15;
        $config["uri_segment"]      = 3;
        //$config['use_page_numbers'] = TRUE;
        $config['page_query_string']= TRUE;
        $this->pagination->initialize($config);
        $data['last_row_num']       =  $this->uri->segment(3);
        $page                       = ($this->input->get('per_page') !="" || $this->input->get('per_page') !=NULL) ? $this->input->get('per_page') : 0;//($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $data["requests"]              = $this->common_model->get_request($config["per_page"], $page);
        $data["links"]              = $this->pagination->create_links();
        $data['total_rows']         = $config["total_rows"];
        $data['page_name']          = 'request_manage';
        $data['page_title']         = 'Request Manage';
        $this->load->view('admin/index', $data);
    }

    // movie request
    function report_manage($param1 = '', $param2 = ''){
        // active menu session
        $this->session->unset_userdata('active_menu');
        $this->session->set_userdata('active_menu', '4002');
        if ($param1 == 'update') {
            $data['issue']           = $this->input->post('issue');
            $data['status']         = $this->input->post('status');

            $this->db->where('report_id', $param2);
            $this->db->update('report', $data);
            $this->session->set_flashdata('success', 'User update successed.');
            redirect(base_url() . 'admin/report_manage/', 'refresh');
        }
        $total_rows     = $this->db->get('report')->num_rows();
        // page
        $config                     = $this->common_model->pagination();
        $config["base_url"]         = base_url() . "admin/report_manage";
        $config["total_rows"]       = $total_rows;
        $config["per_page"]         = 15;
        $config["uri_segment"]      = 3;
        //$config['use_page_numbers'] = TRUE;
        $config['page_query_string']= TRUE;
        $this->pagination->initialize($config);
        $data['last_row_num']       =  $this->uri->segment(3);
        $page                       = ($this->input->get('per_page') !="" || $this->input->get('per_page') !=NULL) ? $this->input->get('per_page') : 0;//($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $data["reports"]              = $this->common_model->get_report($config["per_page"], $page);
        $data["links"]              = $this->pagination->create_links();
        $data['total_rows']         = $config["total_rows"];
        $data['page_name']          = 'report_manage';
        $data['page_title']         = 'Report Manage';
        $this->load->view('admin/index', $data);
    }
    
}
