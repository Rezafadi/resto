<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Meja extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->cek_auth_admin();
        $this->load->library('template');
        $this->load->model('admin/meja_m');
    }

    public function index()
    {
        $this->template->display('admin/master/meja_v');
    }

    public function data_list()
    {
        $List = $this->meja_m->get_datatables();
        $data = array();
        $no   = $_POST['start'];

        foreach ($List as $r) {
            $no++;
            $row     = array();
            $meja_id = $r->meja_id;

            // Link tersebut dapat di ubah sesuai kebutuhan
            $qr_link = site_url('home/handle_qr?no_meja=' . $meja_id);
            $qr_code_url = "https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=" . urlencode($qr_link);
            // Add QR code image with download link
            $qr_code = '<img src="' . $qr_code_url . '" alt="QR Code" style="width: 50px; height: 50px;">';
            $download_link = '<a href="' . $qr_code_url . '" download="QR_meja_' . $meja_id . '.png">
            <i class="fa fa-download"></i> Download
          </a>';

            $row[]   = '<a title="Edit Data" href="javascript:void(0)" onclick="edit_data(' . "'" . $meja_id . "'" . ')">
                            <i class="icon-pencil"></i>
                        </a>
                        <a onclick="hapusData(' . $meja_id . ')" title="Delete Data">
                            <i class="icon-close"></i>
                        </a>';
            $row[]  = $meja_id;
            $row[]  = $r->meja_nama;
            $row[] = $qr_code;
            $row[] = $download_link;
            $data[] = $row;
        }

        $output = array(
            "draw"            => $_POST['draw'],
            "recordsTotal"    => $this->meja_m->count_all(),
            "recordsFiltered" => $this->meja_m->count_filtered(),
            "data"            => $data,
        );

        echo json_encode($output);
    }


    public function savedata()
    {
        $this->meja_m->insert_data();
    }

    public function get_data($id)
    {
        $data = $this->meja_m->select_by_id($id)->row();
        echo json_encode($data);
    }

    public function updatedata()
    {
        $this->meja_m->update_data();
    }

    public function deletedata($id)
    {
        $this->meja_m->delete_data($id);
    }
}
/* Location: ./application/controller/admin/Meja.php */
