<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('template_front');
        $this->load->library('session');
    }

    public function index()
    {
        $data['listMenu']   = $this->db->order_by('menu_nama', 'asc')->get('v_menu')->result();
        $data['listSlider'] = $this->db->order_by('slider_id', 'asc')->get('resto_slider')->result();
        $this->template_front->display('front/home_v', $data);
    }

    public function handle_qr()
    {
        $no_meja = $this->input->get('no_meja');

        if ($no_meja) {
            $this->session->set_userdata('no_meja', $no_meja);
        }

        redirect('home');
    }
}
/* Location: ./application/controller/Home.php */
