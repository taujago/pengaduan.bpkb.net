<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Template_answer extends CI_Controller{

    public $message;
    private $tipe;

    function __construct(){
        parent::__construct();
        backHandle();
        $c = $this->uri->rsegment(1);
        $this->load->model("$c"."_model",$c);
    }

    function gettipe(){
      return $this->tipe = $this->session->userdata('tipe');
    }

    function index(){
      $check = $this->userauth->checkmenu();
      $c = $this->uri->rsegment(1);
      $menu = $this->userauth->generate_menu($this->gettipe());
      $data = array(
        "menus" => $menu,
        "user" =>$this->userauth->getdatauser(),
        "title" =>strtoupper(str_replace("_"," ",$c)),
        "btn" =>$check

      );
      $this->template->load("main_template", "page/page_template_answer", $data);
    }

    function dataajax(){
       echo $this->template_answer->dataajax();
    }

    function detail(){
      $this->userauth->checkmenu();
      methodpage();
      $id = $this->input->post("id");
      $data = $this->template_answer->detail($id);
      echo json_encode($data);
    }

    function save(){
      $this->userauth->checkmenu();
      methodpage();
      $data = $this->fungsi->accept_data(array_keys($_POST));
      echo $this->template_answer->save($data);
    }

    function delete(){
      $this->userauth->checkmenu();
      methodpage();
      $id = $this->input->post("id");
      $data = $this->template_answer->delete($id);
    }

    function answer(){
      $data = $this->fungsi->accept_data(array_keys($_POST));
      echo $this->template_answer->save($data);
    }
}
