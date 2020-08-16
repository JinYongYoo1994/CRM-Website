{extends file="$layouts_admin"}


{block name="content"}
    <div class="row">
        <div class="col-lg-12">
            
            <div class="btn-group  pull-right" role="group" aria-label="...">
                <a href="{$_url}multiiview/print/{$total_invoice_ids}" target="_blank" class="btn btn-inverse  btn-sm"><i class="fa fa-print"></i> {$_L['Print All']}</a>
            </div>
        </div>
        
    </div>
    {foreach $multi_datas as $multi_data}
        <div class="row">
            
            <div class="col-lg-12"  id="application_ajaxrender">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>{$_L['Invoice']} - {$multi_data->d['invoicenum']}{if $multi_data->d['cn'] neq ''} {$multi_data->d['cn']} {else} {$multi_data->d['id']} {/if} </h5>
                        <input type="hidden" name="iid" value="{$multi_data->d['id']}" id="iid">
                    </div>
                    <div class="ibox-content">

                        <div class="invoice">
                            <header class="clearfix">
                                <div class="row">
                                    <div class="col-sm-6 mt-md">
                                        <h2 class="h2 mt-none mb-sm text-dark text-bold">{$_L['INVOICE']}</h2>
                                        <h4 class="h4 m-none text-dark text-bold">#{$multi_data->d['invoicenum']}{if $multi_data->d['cn'] neq ''} {$multi_data->d['cn']} {else} {$multi_data->d['id']} {/if}</h4>
                                        {if $multi_data->d['status'] eq 'Unpaid'}
                                            <h3 class="alert alert-danger">{$_L['Unpaid']}</h3>
                                        {elseif $multi_data->d['status'] eq 'Paid'}
                                            <h3 class="alert alert-success">{$_L['Paid']}</h3>
                                        {elseif $multi_data->d['status'] eq 'Partially Paid'}
                                            <h3 class="alert alert-info">{$_L['Partially Paid']}</h3>
                                        {else}
                                            <h3 class="alert alert-info">{$multi_data->d['status']}</h3>
                                        {/if}

                                        {if isset($multi_data->d['title']) && $multi_data->d['title'] != ''}
                                            <h4>{$multi_data->d['title']}</h4>
                                            <hr>
                                        {/if}

                                        {if $config['invoice_receipt_number'] eq '1' && $multi_data->d['receipt_number'] neq ''}
                                            <h4>{$_L['Receipt Number']}: {$multi_data->d['receipt_number']}</h4>
                                            <hr>
                                        {/if}


                                    </div>
                                    <div class="col-sm-6 text-right mt-md mb-md">

                                        <div class="ib">
                                            <img src="{$app_url}storage/system/{$config['logo_default']}" alt="Logo" style="margin-bottom: 15px;">
                                        </div>

                                        <address class="ib mr-xlg">
                                            <strong>{$config['CompanyName']}</strong>
                                            <br>
                                            {$config['caddress']}

                                            {if isset($config['vat_number']) && ($config['vat_number'] != '')}

                                                {if $config['tax_system'] == 'India'}

                                                    <br>
                                                    <strong>GSTIN:</strong> {$config['vat_number']}

                                                {else}

                                                    <br>
                                                    <strong>{$_L['Vat number']}:</strong> {$config['vat_number']}

                                                {/if}

                                            {/if}


                                        </address>

                                    </div>
                                </div>
                            </header>
                            <div class="bill-info">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="bill-to">
                                            <p class="h5 mb-xs text-dark text-semibold"><strong>{$_L['Invoiced To']}:</strong></p>
                                            <address>
                                                {if $multi_data->a['company'] neq ''}
                                                    {$multi_data->a['company']}
                                                    <br>
                                                    {if $company && $config['show_business_number'] eq '1' }
                                                        {if $company->business_number neq ''}
                                                            {$config['label_business_number']}: {$company->business_number}
                                                            <br>
                                                        {/if}
                                                    {/if}

                                                    {$_L['ATTN']}: {$multi_data->d['account']}
                                                    <br>
                                                {else}
                                                    {$multi_data->d['account']}
                                                    <br>
                                                {/if}

    {*                                            {$multi_data->a['address']} <br>*}
    {*                                            {$multi_data->a['city']} <br>*}
    {*                                            {$multi_data->a['state']} - {$a['zip']} <br>*}
    {*                                            {$multi_data->a['country']}*}

                                                {getContactFormattedAddress($config,$multi_data->a)}

                                                <br>
                                                <strong>{$_L['Phone']}:</strong> {$multi_data->a['phone']}

                                                {if $config['fax_field'] neq '0' && $multi_data->a['fax'] neq ''}
                                                    <br>
                                                    <strong>{$_L['Fax']}:</strong> {$multi_data->a['fax']}
                                                {/if}

                                                <br>
                                                <strong>{$_L['Email']}:</strong> {$multi_data->a['email']}

                                                {if $config['tax_system'] == 'India'}

                                                    <br>
                                                    <strong>GSTIN:</strong> {$multi_data->a['business_number']}

                                                {/if}


                                                {foreach $multi_data->cf as $cfs}
                                                    {if $cfs['showinvoice'] == 'No'}
                                                        {continue}
                                                    {/if}
                                                    <br>
                                                    <strong>{$cfs['fieldname']}: </strong> {get_custom_field_value($cfs['id'],$multi_data->a['id'])}
                                                {/foreach}

                                                {$x_html}
                                            </address>





                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="bill-data text-right">
                                            <p class="mb-none">
                                                <span class="text-dark">{$_L['Invoice Date']}:</span>
                                                <span class="value">{date( $config['df'], strtotime($multi_data->d['date']))}</span>
                                            </p>
                                            <p class="mb-none">
                                                <span class="text-dark">{$_L['Due Date']}:</span>
                                                <span class="value">{date( $config['df'], strtotime($multi_data->d['duedate']))}</span>
                                            </p>
                                            <h2> {$_L['Invoice Total']}: {formatCurrency($multi_data->d['total'],$multi_data->d['currency_iso_code'])} </h2>
                                            {if ($multi_data->d['credit']) neq '0.00'}
                                                <h2> {$_L['Total Paid']}:  <span class="amount" data-a-sign="{$data_a_sign}" data-a-dec="{$data_a_dec}" data-a-sep="{$data_a_sep}" data-p-sign="{$data_p_sign}">{$multi_data->d['credit']}</span> </h2>
                                                {*<h2> {$_L['Amount Due']}: {$config['currency_code']} {number_format($i_due,2,$config['dec_point'],$config['thousands_sep'])} </h2>*}
                                                <h2> {$_L['Amount Due']}: <span class="amount" data-a-sign="{$data_a_sign}" data-a-dec="{$data_a_dec}" data-a-sep="{$data_a_sep}" data-p-sign="{$data_p_sign}">{$multi_data->i_due}</span> </h2>
                                            {/if}
                                        </div>
                                    </div>
                                </div>
                            </div>




                            {$extraHtml}





                            {if $quote}

                                <h4>{$_L['Quote']}: {$quote->id}</h4>

                                <div class="row">
                                    <div class="col-md-12">
                                        <hr>
                                        {$quote->proposal}
                                        <hr>
                                    </div>
                                </div>
                            {/if}

                            <div class="table-responsive">


                                {if $config['tax_system'] == 'India'}

                                    <table class="table table-bordered invoice-items">
                                        <thead>
                                        <tr class="text-dark">
                                            <th id="cell-id" class="text-semibold">S/L</th>
                                            <th id="cell-item" class="text-semibold">{$_L['Item']}</th>
                                            <th class="text-semibold">HSN / SAC</th>
                                            <th id="cell-price" class="text-center text-semibold">{$_L['Price']}</th>
                                            <th id="cell-qty" class="text-center text-semibold">{if $d['show_quantity_as'] eq '' || $multi_data->d['show_quantity_as'] eq '1'}{$_L['Qty']}{else}{$multi_data->d['show_quantity_as']}{/if}</th>
                                            <th class="text-right">Taxable Value</th>


                                            {if $multi_data->d['is_same_state']}

                                                <th class="text-right">CGST</th>
                                                <th class="text-right">SGST/UTGST</th>
                                                <th class="text-right">GST</th>

                                            {else}

                                                <th class="text-right">IGST</th>

                                            {/if}




                                            <th id="cell-total" class="text-right text-semibold">{$_L['Total']}</th>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        {foreach $multi_data->items as $item}
                                            <tr>
                                                <td>
                                                    {if $item['itemcode'] != ''}
                                                        {$item['itemcode']}
                                                    {else}
                                                        {counter}
                                                    {/if}
                                                </td>
                                                <td class="text-semibold text-dark">{$item['description']}</td>
                                                <td class="text-semibold text-dark">{$item['tax_code']}</td>
                                                <td class="text-center amount" data-a-sign="{if $multi_data->d['currency_symbol'] eq ''} {$config['currency_code']} {else} {$multi_data->d['currency_symbol']}{/if} ">{$item['amount']}</td>
                                                <td class="text-center">{$item['qty']}</td>
                                                <td class="text-right">
                                                    {if $item['discount_amount'] != '0.00'}

                                                        Total: <span class="amount" data-a-sign="{$data_a_sign}" data-a-dec="{$data_a_dec}" data-a-sep="{$data_a_sep}" data-p-sign="{$data_p_sign}">{($item['amount']*$item['qty'])}</span>


                                                            <br>
                                                            Discount: <span class="amount" data-a-sign="{$data_a_sign}" data-a-dec="{$data_a_dec}" data-a-sep="{$data_a_sep}" data-p-sign="{$data_p_sign}">{$item['discount_amount']}</span>
                                                        <br>
                                                        Taxable amount: <span class="amount" data-a-sign="{$data_a_sign}" data-a-dec="{$data_a_dec}" data-a-sep="{$data_a_sep}" data-p-sign="{$data_p_sign}">{($item['amount']*$item['qty'])-$item['discount_amount']}</span>

                                                    {else}
                                                        <span class="amount" data-a-sign="{$data_a_sign}" data-a-dec="{$data_a_dec}" data-a-sep="{$data_a_sep}" data-p-sign="{$data_p_sign}">{($item['amount']*$item['qty'])}</span>

                                                    {/if}


                                                </td>


                                                {if $multi_data->d['is_same_state']}

                                                    <td class="text-right">
                                                        <span class="amount" data-a-sign="{$data_a_sign}" data-a-dec="{$data_a_dec}" data-a-sep="{$data_a_sep}" data-p-sign="{$data_p_sign}">{gstIndiaSplitTaxValue($item['total'],$item['tax_rate'])}</span>
                                                        <br>
                                                        @{round($item['tax_rate']/2,2)}%
                                                    </td>
                                                    <td class="text-right">
                                                        <span class="amount" data-a-sign="{$data_a_sign}" data-a-dec="{$data_a_dec}" data-a-sep="{$data_a_sep}" data-p-sign="{$data_p_sign}">{gstIndiaSplitTaxValue($item['total'],$item['tax_rate'])}</span>
                                                        <br>
                                                        @{round($item['tax_rate']/2,2)}%
                                                    </td>
                                                    <td class="text-right">
                                                        <span class="amount" data-a-sign="{$data_a_sign}" data-a-dec="{$data_a_dec}" data-a-sep="{$data_a_sep}" data-p-sign="{$data_p_sign}">{round($item['taxamount'],2)}</span> <br>
                                                        @{round($item['tax_rate'],2)}%

                                                    </td>

                                                {else}



                                                    <td class="text-right">
                                                        <span class="amount" data-a-sign="{$data_a_sign}" data-a-dec="{$data_a_dec}" data-a-sep="{$data_a_sep}" data-p-sign="{$data_p_sign}">{round(( ($item['tax_rate']*($item['qty'] * $item['amount'])) / 100),2)}</span> <br>
                                                        @{round($item['tax_rate'],2)}%

                                                    </td>

                                                {/if}




                                                <td class="text-right amount" data-a-sign="{$data_a_sign}" data-a-dec="{$data_a_dec}" data-a-sep="{$data_a_sep}" data-p-sign="{$data_p_sign}">{$item['total'] + $item['taxamount']}</td>
                                            </tr>
                                        {/foreach}
                                        </tbody>
                                    </table>

                                {else}

                                    <table class="table table-bordered invoice-items">
                                        <thead>
                                        <tr class="text-dark">
                                            <th id="cell-id" class="text-semibold">#</th>
                                            <th id="cell-item" class="text-semibold">{$_L['Item']}</th>
                                            <th id="cell-price" class="text-center text-semibold">{$_L['Price']}</th>
                                            <th id="cell-qty" class="text-center text-semibold">{if $multi_data->d['show_quantity_as'] eq '' || $multi_data->d['show_quantity_as'] eq '1'}{$_L['Qty']}{else}{$multi_data->d['show_quantity_as']}{/if}</th>
                                            <th id="cell-total" class="text-center text-semibold">{$_L['Total']}</th>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        {foreach $multi_data->items as $item}
                                            <tr>
                                                <td>{$item['itemcode']}</td>
                                                <td class="text-semibold text-dark">{$item['description']}</td>
                                                <td class="text-center amount" data-a-sign="{$data_a_sign}" data-a-dec="{$data_a_dec}" data-a-sep="{$data_a_sep}" data-p-sign="{$data_p_sign}">{$item['amount']}</td>
                                                <td class="text-center">{$item['qty']}</td>
                                                <td class="text-center amount" data-a-sign="{$data_a_sign}" data-a-dec="{$data_a_dec}" data-a-sep="{$data_a_sep}" data-p-sign="{$data_p_sign}">{$item['total'] + $item['taxamount'] + $item['discount_amount']}</td>
                                            </tr>
                                        {/foreach}
                                        </tbody>
                                    </table>

                                {/if}



                            </div>

                            <div class="invoice-summary">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <img src="https://chart.googleapis.com/chart?chs=200x200&cht=qr&chl={$_url}client/iview/{$multi_data->d['id']}/token_{$multi_data->d['vtoken']}%2F&choe=UTF-8" title="Link to print invoice" width="200"/>
                                    </div>
                                    <div class="col-sm-4 col-sm-offset-4">
                                        <table class="table h5 text-dark">
                                            <tbody>
                                            <tr class="b-top-none">
                                                <td colspan="2">{$_L['Subtotal']}</td>
                                                <td class="text-left amount" data-a-sign="{$data_a_sign}" data-a-dec="{$data_a_dec}" data-a-sep="{$data_a_sep}" data-p-sign="{$data_p_sign}">{$multi_data->d['subtotal']}</td>
                                            </tr>
                                            {if ($multi_data->d['discount']) neq '0.00'}
                                                <tr>
                                                    <td colspan="2">{$_L['Discount']}</td>
                                                    <td class="text-left amount" data-a-sign="{$data_a_sign}" data-a-dec="{$data_a_dec}" data-a-sep="{$data_a_sep}" data-p-sign="{$data_p_sign}">{$multi_data->d['discount']}</td>
                                                </tr>
                                            {/if}

                                            {if $config['tax_system'] == 'India'}
                                                <tr>
                                                    <td colspan="2">GST Total</td>
                                                    <td class="text-left amount" data-a-sign="{$data_a_sign}" data-a-dec="{$data_a_dec}" data-a-sep="{$data_a_sep}" data-p-sign="{$data_p_sign}">{$multi_data->d['tax']}</td>
                                                </tr>
                                            {else}

                                                <tr>
                                                    <td colspan="2">{$_L['TAX']}</td>
                                                    <td class="text-left amount" data-a-sign="{$data_a_sign}" data-a-dec="{$data_a_dec}" data-a-sep="{$data_a_sep}" data-p-sign="{$data_p_sign}">{$multi_data->d['tax']}</td>
                                                </tr>

                                            {/if}

                                            {if ($multi_data->d['credit']) neq '0.00'}
                                                <tr>
                                                    <td colspan="2">{$_L['Total']}</td>
                                                    <td class="text-left amount" data-a-sign="{$data_a_sign}" data-a-dec="{$data_a_dec}" data-a-sep="{$data_a_sep}" data-p-sign="{$data_p_sign}">{$multi_data->d['total']}</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">{$_L['Total Paid']}</td>
                                                    <td class="text-left amount" data-a-sign="{$data_a_sign}" data-a-dec="{$data_a_dec}" data-a-sep="{$data_a_sep}" data-p-sign="{$data_p_sign}">{$multi_data->d['credit']}</td>
                                                </tr>
                                                <tr class="h4">
                                                    <td colspan="2">{$_L['Amount Due']}</td>
                                                    {*<td class="text-left">{$config['currency_code']} {number_format($i_due,2,$config['dec_point'],$config['thousands_sep'])}</td>*}
                                                    <td class="text-left amount" data-a-sign="{$data_a_sign}" data-a-dec="{$data_a_dec}" data-a-sep="{$data_a_sep}" data-p-sign="{$data_p_sign}">{$multi_data->i_due}</td>
                                                </tr>
                                            {else}
                                                <tr class="h4">
                                                    <td colspan="2">{$_L['Grand Total']}</td>
                                                    <td class="text-left amount" data-a-sign="{$data_a_sign}" data-a-dec="{$data_a_dec}" data-a-sep="{$data_a_sep}" data-p-sign="{$data_p_sign}">{$multi_data->d['total']}</td>
                                                </tr>
                                            {/if}
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                        {if ($multi_data->trs_c neq '')}
                            <h3>{$_L['Related Transactions']}</h3>
                            <table class="table table-bordered sys_table">
                                <th>{$_L['Date']}</th>
                                <th>{$_L['Account']}</th>


                                <th class="text-right">{$_L['Amount']}</th>

                                <th>{$_L['Description']}</th>




                                {foreach $multi_data->trs as $tr}
                                    <tr class="{if $tr['cr'] eq '0.00'}warning {else}info{/if}">
                                        <td>{date( $config['df'], strtotime($tr['date']))}</td>
                                        <td>{$tr['account']}</td>


                                        <td class="text-right amount" data-a-sign="{$data_a_sign}" data-a-dec="{$data_a_dec}" data-a-sep="{$data_a_sep}" data-p-sign="{$data_p_sign}">{$tr['amount']}</td>
                                        <td>{$tr['description']}</td>


                                    </tr>
                                {/foreach}



                            </table>
                        {/if}

                        {if $multi_data->inv_files_c neq ''}

                            <table class="table table-bordered table-hover sys_table">
                                <thead>
                                <tr>
                                    <th class="text-right" data-sort-ignore="true" width="20px;">{$_L['Type']}</th>

                                    <th>{$_L['File']}</th>

                                    <th class="text-right" data-sort-ignore="true" width="100px;">{$_L['Manage']}</th>
                                </tr>
                                </thead>
                                <tbody>

                                {foreach $multi_data->inv_files as $ds}

                                    <tr>

                                        <td>
                                            {if $ds['file_mime_type'] eq 'jpg' || $ds['file_mime_type'] eq 'png' || $ds['file_mime_type'] eq 'gif'}
                                                <i class="fa fa-file-image-o"></i>
                                            {elseif $ds['file_mime_type'] eq 'pdf'}
                                                <i class="fa fa-file-pdf-o"></i>
                                            {elseif $ds['file_mime_type'] eq 'zip'}
                                                <i class="fa fa-file-archive-o"></i>
                                            {else}
                                                <i class="fa fa-file"></i>
                                            {/if}
                                        </td>


                                        <td>

                                            {$ds['title']}

                                            {if $ds['file_mime_type'] eq 'jpg' || $ds['file_mime_type'] eq 'png' || $ds['file_mime_type'] eq 'gif'}

                                                <div class="hr-line-dashed"></div>

                                                <img src="{$app_url}storage/docs/{$ds['file_path']}" class="img-responsive" alt="{$ds['title']}">

                                            {/if}

                                        </td>

                                        <td class="text-right">

                                            <a data-toggle="tooltip" data-placement="top" title="{$_L['Download']}" href="{$_url}client/dl/{$ds['id']}_{$ds['file_dl_token']}/" class="btn btn-primary"><i class="fa fa-download"></i> </a>

                                            <a data-toggle="tooltip" data-placement="top" title="{$_L['Delete']}" onclick="confirmThenGoToUrl(event,'delete/document/{$ds['id']}');" href="javascript:;" class="btn btn-danger"><i class="fa fa-trash"></i> </a>

                                        </td>


                                    </tr>

                                {/foreach}

                                </tbody>



                            </table>

                        {/if}

                        {if ($multi_data->d['notes']) neq ''}
                            <div class="well m-t">
                                {$multi_data->d['notes']}
                            </div>
                        {/if}

                        {if ($multi_data->emls_c neq '')}
                            <hr>
                            <h3>{$_L['Related Emails']}</h3>
                            <table class="table table-bordered sys_table">
                                <th width="20%">{$_L['Date']}</th>
                                <th>{$_L['Subject']}</th>







                                {foreach $multi_data->emls as $eml}
                                    <tr>
                                        <td>{date( $config['df'], strtotime($eml['date']))}</td>
                                        <td>{$eml['subject']}</td>
                                    </tr>
                                {/foreach}



                            </table>
                        {/if}


                        {if count($access_logs) neq 0}
                            <hr>
                            <h3>{$_L['Customer']} : {$_L['Access Log']}</h3>
                            <table class="table table-bordered sys_table">
                                <th>{$_L['Time']}</th>
                                <th>{$_L['IP']}</th>
                                <th>{$_L['Country']}</th>
                                <th>{$_L['City']}</th>
                                <th>{$_L['Browser']}</th>

                                {foreach $multi_data->access_logs as $log}
                                    <tr>
                                        <td>{date( $config['df']|cat:' H:i:s', strtotime($log['viewed_at']))}</td>
                                        <td>{$log['ip']}</td>
                                        <td>{$log['country']}</td>
                                        <td>{$log['city']}</td>
                                        <td>{$log['browser']}</td>
                                    </tr>
                                {/foreach}



                            </table>
                        {/if}



                    </div>


                </div>
            </div>
        </div>

        <div id="modal_add_item" class="modal fade" tabindex="-1" data-width="760" style="display: none;">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">{$_L['New Document']}</h4>
            </div>
            <div class="modal-body">
                <div class="row">

                    <div class="col-md-12">

                        <form>
                            <div class="form-group">
                                <label for="doc_title">{$_L['Title']}</label>
                                <input type="text" class="form-control" id="doc_title" name="doc_title">

                            </div>



                        </form>

                        <form action="" class="dropzone" id="upload_container">

                            <div class="dz-message">
                                <h3> <i class="fa fa-cloud-upload"></i>  {$_L['Drop File Here']}</h3>
                                <br />
                                <span class="note">{$_L['Click to Upload']}</span>
                            </div>

                        </form>
                        <hr>
                        <h4>{$_L['Server Config']}:</h4>
                        <p>{$_L['Upload Maximum Size']}: {$multi_data->upload_max_size}</p>
                        <p>{$_L['POST Maximum Size']}: {$multi_data->post_max_size}</p>

                    </div>






                </div>
            </div>
            <div class="modal-footer">
                <input type="hidden" name="file_link" id="file_link" value="">
                <button type="button" data-dismiss="modal" class="btn btn-danger">{$_L['Close']}</button>
                <button type="button" id="btn_add_file" class="btn btn-primary">{$_L['Submit']}</button>
            </div>

        </div>
    {/foreach}
    <input type="hidden" id="_lan_msg_confirm" value="{$_L['are_you_sure']}">
    <input type="hidden" id="admin_email" value="{$user->username}">


{/block}

{block name="script"}

    <script type="text/javascript" src="{$app_url}ui/lib/sms/sms_counter.js"></script>
    <script>


        Dropzone.autoDiscover = false;
        $(document).ready(function () {

            $.fn.modal.defaults.width = '700px';

            var _url = $("#_url").val();

            var $modal = $('#ajax-modal');


            var sysrender = $('#application_ajaxrender');

            $('.amount').autoNumeric('init', {

                aSign: '{$config['currency_code']}',
                dGroup: {$config['thousand_separator_placement']},
                aPad: {$config['currency_decimal_digits']},
                pSign: '{$config['currency_symbol_position']}',
                aDec: '{$config['dec_point']}',
                aSep: '{$config['thousands_sep']}',
                vMax: '9999999999999999.00',
                vMin: '-9999999999999999.00'

            });

            var iid = $("#iid").val();
            sysrender.on('click', '#add_payment', function(e){
                e.preventDefault();


                $('body').modalmanager('loading');

                $modal.load( _url + 'invoices/add-payment/' + iid, '', function(){
                    $modal.modal();

                    $(".datepicker").datepicker();
                    $("#account").select2({
                        theme: "bootstrap"
                    });
                    $("#cats").select2({
                        theme: "bootstrap"
                    });
                    $("#pmethod").select2({
                        theme: "bootstrap"
                    });


                });

            });


            sysrender.on('click', '#mail_invoice_created', function(e){
                e.preventDefault();
                var iid = $("#iid").val();

                $('body').modalmanager('loading');

                $modal.load( _url + 'invoices/mail_invoice_/' + iid + '/created', '', function(){
                    $modal.modal();
                    $('.sysedit').summernote({

                    });
                });


            });

            sysrender.on('click', '#mail_invoice_reminder', function(e){
                e.preventDefault();
                var iid = $("#iid").val();

                $('body').modalmanager('loading');

                $modal.load( _url + 'invoices/mail_invoice_/' + iid + '/reminder', '', function(){
                    $modal.modal();
                    $('.sysedit').summernote({

                    });
                });

            });

            sysrender.on('click', '#mail_invoice_overdue', function(e){
                e.preventDefault();
                var iid = $("#iid").val();

                $('body').modalmanager('loading');


                $modal.load( _url + 'invoices/mail_invoice_/' + iid + '/overdue', '', function(){
                    $modal.modal();
                    $('.sysedit').summernote({

                    });
                });


            });

            sysrender.on('click', '#mail_invoice_confirm', function(e){
                e.preventDefault();
                var iid = $("#iid").val();

                $('body').modalmanager('loading');

                $modal.load( _url + 'invoices/mail_invoice_/' + iid + '/confirm', '', function(){
                    $modal.modal();
                    $('.sysedit').summernote({

                    });
                });

            });

            sysrender.on('click', '#mail_invoice_refund', function(e){
                e.preventDefault();
                var iid = $("#iid").val();

                $('body').modalmanager('loading');
                $modal.load( _url + 'invoices/mail_invoice_/' + iid + '/refund', '', function(){
                    $modal.modal();
                    $('.sysedit').summernote({

                    });
                });
            });



            sysrender.on('click', '#sms_invoice_created', function(e){
                e.preventDefault();
                var iid = $("#iid").val();

                $('body').modalmanager('loading');

                $modal.load( _url + 'invoices/sms_invoice_/' + iid + '/created', '', function(){
                    $modal.modal();
                    $('#message').countSms('#sms-counter');
                });


            });

            sysrender.on('click', '#sms_invoice_reminder', function(e){
                e.preventDefault();
                var iid = $("#iid").val();

                $('body').modalmanager('loading');

                $modal.load( _url + 'invoices/sms_invoice_/' + iid + '/reminder', '', function(){
                    $modal.modal();
                    $('#message').countSms('#sms-counter');
                });


            });

            sysrender.on('click', '#sms_invoice_overdue', function(e){
                e.preventDefault();
                var iid = $("#iid").val();

                $('body').modalmanager('loading');

                $modal.load( _url + 'invoices/sms_invoice_/' + iid + '/overdue', '', function(){
                    $modal.modal();
                    $('#message').countSms('#sms-counter');
                });


            });

            sysrender.on('click', '#sms_invoice_confirm', function(e){
                e.preventDefault();
                var iid = $("#iid").val();

                $('body').modalmanager('loading');

                $modal.load( _url + 'invoices/sms_invoice_/' + iid + '/confirm', '', function(){
                    $modal.modal();
                    $('#message').countSms('#sms-counter');
                });


            });

            sysrender.on('click', '#sms_invoice_refund', function(e){
                e.preventDefault();
                var iid = $("#iid").val();

                $('body').modalmanager('loading');

                $modal.load( _url + 'invoices/sms_invoice_/' + iid + '/refund', '', function(){
                    $modal.modal();
                    $('#message').countSms('#sms-counter');
                });


            });




            $modal.on('click', '#btnModalSMSSend', function(){
                $modal.modal('loading');


                $.post(base_url + 'sms/init/send_invoice', {


                    message: $('#message').val(),
                    to: $("#sms_to").val(),
                    from: $("#sms_from").val(),
                    invoice_id: $("#smsInvoiceId").val()

                }).done(function (data) {

                    $modal
                        .modal('loading')
                        .find('.modal-body')
                        .prepend(data);
                });

            });



            $modal.on('click', '#send', function(){
                $modal.modal('loading');

                var attach_pdf = 'No';

                if($("#attach_pdf").prop('checked') == true){
                    attach_pdf = 'Yes';
                }



                var _url = $("#_url").val();

                // var values = $('#email_form').serialize();
                // values += "&message_actual=" + encodeURIComponent($('.sysedit').code());

                $.post(_url + 'invoices/send_email', $('#email_form').serialize()


                //     {
                //
                //
                //     message: $('.sysedit').code(),
                //     subject: $('#subject').val(),
                //
                //     toname: $('#toname').val(),
                //     i_cid: $('#i_cid').val(),
                //     i_iid: $('#i_iid').val(),
                //     toemail: $('#toemail').val(),
                //     ccemail: $('#ccemail').val(),
                //     bccemail: $('#bccemail').val(),
                //     attach_pdf: attach_pdf
                //
                // }
                ).done(function (data) {
                    var _url = $("#_url").val();
                    $modal
                        .modal('loading')
                        .find('.modal-body')
                        .prepend(data);
                });

            });

            $modal.on('click', '#save_payment', function(){
                $modal.modal('loading');

                var _url = $("#_url").val();
                $.post(_url + 'invoices/add-payment-post', $("#form_add_payment").serialize())

                    .done(function (data) {

                        var _url = $("#_url").val();
                        if ($.isNumeric(data)) {
                            location.reload();
                        }
                        else {
                            $modal
                                .modal('loading')
                                .find('.modal-body')
                                .prepend(data);
                        }
                    });

            });

            $("#mark_paid").click(function (e) {
                e.preventDefault();


                bootbox.confirm($("#_lan_msg_confirm").val(), function(result) {
                    if(result){
                        var iid = $("#iid").val();
                        $.post(  _url + "invoices/markpaid", { iid: iid })
                            .done(function( data ) {
                                location.reload();
                            });
                    }
                });

            });


            $("#mark_unpaid").click(function (e) {
                e.preventDefault();


                bootbox.confirm($("#_lan_msg_confirm").val(), function(result) {
                    if(result){
                        var iid = $("#iid").val();
                        $.post(  _url + "invoices/markunpaid", { iid: iid })
                            .done(function( data ) {
                                location.reload();
                            });
                    }
                });

            });

            $("#mark_cancelled").click(function (e) {
                e.preventDefault();
                bootbox.confirm($("#_lan_msg_confirm").val(), function(result) {
                    if(result){
                        var iid = $("#iid").val();
                        $.post(  _url + "invoices/markcancelled", { iid: iid })
                            .done(function( data ) {
                                location.reload();
                            });
                    }
                });

            });

            $("#mark_partially_paid").click(function (e) {
                e.preventDefault();
                bootbox.confirm($("#_lan_msg_confirm").val(), function(result) {
                    if(result){
                        var iid = $("#iid").val();
                        $.post(  _url + "invoices/markpartiallypaid", { iid: iid })
                            .done(function( data ) {
                                location.reload();
                            });
                    }
                });

            });



            $modal.on('click', '#send_bcc_to_admin', function(e){

                e.preventDefault();


                $("#bccemail").val($("#admin_email").val());

            });

            $modal.on('hidden.bs.modal', function () {
                location.reload();
            });



            // attach file






            $('[data-toggle="tooltip"]').tooltip();

            var $btn_add_file = $("#btn_add_file");

            var $file_link = $("#file_link");

            var upload_resp;




            var ib_file = new Dropzone("#upload_container",
                {
                    url: _url + "documents/upload/",
                    maxFiles: 1
                }
            );


            ib_file.on("sending", function() {

                $btn_add_file.prop('disabled', true);

            });

            ib_file.on("success", function(file,response) {

                $btn_add_file.prop('disabled', false);

                upload_resp = response;

                if(upload_resp.success == 'Yes'){

                    toastr.success(upload_resp.msg);
                    $file_link.val(upload_resp.file);


                }
                else{
                    toastr.error(upload_resp.msg);
                }


            });




            var $doc_title = $("#doc_title");


            $btn_add_file.on('click', function(e) {
                e.preventDefault();


                $.post( _url + "documents/post/", { title: $doc_title.val(), file_link: $file_link.val(), rid: iid, rtype: 'invoice' })
                    .done(function( data ) {

                        if ($.isNumeric(data)) {

                            location.reload();

                        }

                        else {
                            toastr.error(data);
                        }




                    });


            });



        });



    </script>
{/block}