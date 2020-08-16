<?php

/*
|--------------------------------------------------------------------------
| Controller
|--------------------------------------------------------------------------
|
*/


$ui->assign('_application_menu', 'invoices');
$ui->assign('_st', $_L['Invoice']);
$ui->assign('_title', $_L['Accounts'] . '- ' . $config['CompanyName']);

$invoice_ids = $_GET['ids'];
$invoice_datas = array();
$i = 0;
foreach ($invoice_ids as $id) {
    $d = ORM::for_table('sys_invoices')->find_one($id);
    if ($d) {
        //find all activity for this user
        $items = ORM::for_table('sys_invoiceitems')->where('invoiceid', $id)->order_by_asc('id')->find_many();

        $trs_c = ORM::for_table('sys_transactions')->where('iid', $id)->count();

        $trs = ORM::for_table('sys_transactions')->where('iid', $id)->order_by_desc('id')->find_many();

        //find the user
        $a = ORM::for_table('crm_accounts')->find_one($d['userid']);

        $i_credit = $d['credit'];
        $i_due = '0.00';
        $i_total = $d['total'];
        if ($d['credit'] != '0.00') {
            $i_due = $i_total - $i_credit;
        } else {
            $i_due =  $d['total'];
        }

        // $i_due = number_format($i_due,2,$config['dec_point'],$config['thousands_sep']);

        $cf = ORM::for_table('crm_customfields')->where('showinvoice', 'Yes')->order_by_asc('id')->find_many();

        if ($a->cid != '' || $a->cid != 0) {
            $company = Company::find($a->cid);
        } else {
            $company = false;
        }
    }

    $temp_data = (object) array(
        'd' => $d,
        'items' => $items,
        'trs_c' => $trs_c,
        'trs' => $trs,
        'a' => $a,
        'i_credit' => $i_credit,
        'i_due' => $i_due,
        'i_total' => $i_total,
        'company' => $company
    );
    $invoice_datas[$i] = $temp_data;
    $i++;
}


require 'system/lib/invoices/multi-render.php';
