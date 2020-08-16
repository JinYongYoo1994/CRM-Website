<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />

    <title><?php echo $_L['INVOICE']; ?> <?php echo $d['id']; ?></title>

    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            font: 14px/1.4 Helvetica, Arial, sans-serif;
        }

        #page-wrap {
            width: 800px;
            margin: 0 auto;
        }

        textarea {
            border: 0;
            font: 14px Helvetica, Arial, sans-serif;
            overflow: hidden;
            resize: none;
        }

        table {
            border-collapse: collapse;
        }

        table td,
        table th {
            border: 1px solid black;
            padding: 5px;
        }

        #header {
            height: 15px;
            width: 100%;
            margin: 20px 0;
            background: #222;
            text-align: center;
            color: white;
            font: bold 15px Helvetica, Sans-Serif;
            text-decoration: uppercase;
            letter-spacing: 20px;
            padding: 8px 0px;
        }

        #address {
            width: 250px;
            height: 150px;
            float: left;
        }

        #customer {
            overflow: hidden;
        }

        #logo {
            text-align: right;
            float: right;
            position: relative;
            margin-top: 25px;
            border: 1px solid #fff;
            max-width: 540px;
            overflow: hidden;
        }

        #customer-title {
            font-size: 20px;
            font-weight: bold;
            float: left;
        }

        #meta {
            margin-top: 1px;
            width: 100%;
            float: right;
        }

        #meta td {
            text-align: right;
        }

        #meta td.meta-head {
            text-align: left;
            background: #eee;
        }

        #meta td textarea {
            width: 100%;
            height: 20px;
            text-align: right;
        }

        #items {
            clear: both;
            width: 100%;
            margin: 30px 0 0 0;
            border: 1px solid black;
        }

        #items th {
            background: #eee;
        }

        #items textarea {
            width: 80px;
            height: 50px;
        }

        #items tr.item-row td {
            vertical-align: top;
        }

        #items td.description {
            width: 300px;
        }

        #items td.item-name {
            width: 175px;
        }

        #items td.description textarea,
        #items td.item-name textarea {
            width: 100%;
        }

        #items td.total-line {
            border-right: 0;
            text-align: right;
        }

        #items td.total-value {
            border-left: 0;
            padding: 10px;
        }

        #items td.total-value textarea {
            height: 20px;
            background: none;
        }

        #items td.balance {
            background: #eee;
        }

        #items td.blank {
            border: 0;
        }

        #terms {
            text-align: center;
            margin: 20px 0 0 0;
        }

        #terms h5 {
            text-transform: uppercase;
            font: 13px Helvetica, Sans-Serif;
            letter-spacing: 10px;
            border-bottom: 1px solid black;
            padding: 0 0 8px 0;
            margin: 0 0 8px 0;
        }

        #terms textarea {
            width: 100%;
            text-align: center;
        }



        .delete-wpr {
            position: relative;
        }

        .delete {
            display: block;
            color: #000;
            text-decoration: none;
            position: absolute;
            background: #EEEEEE;
            font-weight: bold;
            padding: 0px 3px;
            border: 1px solid;
            top: -6px;
            left: -22px;
            font-family: Verdana;
            font-size: 12px;
        }

        /* Extra CSS for Print Button*/
        .button {
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            overflow: hidden;
            margin-top: 20px;
            padding: 12px 12px;
            cursor: pointer;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            -webkit-transition: all 60ms ease-in-out;
            transition: all 60ms ease-in-out;
            text-align: center;
            white-space: nowrap;
            text-decoration: none !important;

            color: #fff;
            border: 0 none;
            border-radius: 4px;
            font-size: 14px;
            font-weight: 500;
            line-height: 1.3;
            -webkit-appearance: none;
            -moz-appearance: none;

            -webkit-box-pack: center;
            -webkit-justify-content: center;
            -ms-flex-pack: center;
            justify-content: center;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -ms-flex-align: center;
            align-items: center;
            -webkit-box-flex: 0;
            -webkit-flex: 0 0 160px;
            -ms-flex: 0 0 160px;
            flex: 0 0 160px;
        }

        .button:hover {
            -webkit-transition: all 60ms ease;
            transition: all 60ms ease;
            opacity: .85;
        }

        .button:active {
            -webkit-transition: all 60ms ease;
            transition: all 60ms ease;
            opacity: .75;
        }

        .button:focus {
            outline: 1px dotted #959595;
            outline-offset: -4px;
        }

        .button.-regular {
            color: #202129;
            background-color: #edeeee;
        }

        .button.-regular:hover {
            color: #202129;
            background-color: #e1e2e2;
            opacity: 1;
        }

        .button.-regular:active {
            background-color: #d5d6d6;
            opacity: 1;
        }

        .button.-dark {
            color: #FFFFFF;
            background: #333030;
        }

        .button.-dark:focus {
            outline: 1px dotted white;
            outline-offset: -4px;
        }

        @media print {

            .no-print,
            .no-print * {
                display: none !important;
            }
        }
		
		.single_record{
		 page-break-after: always;
		}
    </style>

</head>

<body>
    
    <?php $count=0;
		foreach ($invoice_datas as $invoice_data) { 
		echo '</p>';
		if($count==0)
		{
			$count=1;
			echo "<div id=\"page-wrap\">
					<button class='button -dark center no-print' onClick=\"window.print();\">Click Here to Print</button>
				</div>";
		}
		else
		{
			echo '</p>';
		}
		?>
		
        <div id="page-wrap">
            <?php if(strcmp($invoice_data->d['tax'], '0.00')!=0){ ?>
            <table width="100%" style="margin-top:50px">
                <tr>
                    <td style="border: 0;  text-align: left" width="62%">
                        <img id="image" src="<?php echo APP_URL; ?>/storage/system/<?php echo $config['logo_default']; ?>" alt="logo" />
                        <br><br>
                        <span style="font-size: 18px; color: #2f4f4f"><strong><?php echo $_L['INVOICE']; ?> # <?php
                                                                                                                    if ($invoice_data->d['cn'] != '') {
                                                                                                                        $dispid = $invoice_data->d['cn'];
                                                                                                                    } else {
                                                                                                                        $dispid = $invoice_data->d['id'];
                                                                                                                    }
                                                                                                                    echo $invoice_data->d['invoicenum'] . $dispid;
                                                                                                                    ?></strong></span>
                    </td>
                    <td style="border: 0;  text-align: right" width="62%">
                        <div id="logo">
                            <strong><?php echo $config['CompanyName']; ?></strong> <br>
                            <?php echo $config['caddress']; ?>
                        </div>
                    </td>
                </tr>



            </table>
            <?php } else {?>
                <div style="margin-top:50px"></div>
            <?php }?>
            <hr>
            <br>

            <div style="clear:both"></div>

            <div id="customer">

                <table id="meta">
                    <tr>
                        <td rowspan="5" style="border: none; text-align: left" width="31%">
                            <?php if ($config['invoice_receipt_number'] == '1' && $invoice_data->d['receipt_number'] != '') {

                                    echo '<h4>' . $_L['Receipt Number'] . ': ' . $invoice_data->d['receipt_number'] . '</h4>
                    <br>';
                                }
                                ?>

                            <strong><?php echo $_L['Invoiced To']; ?></strong> <br>
                            <?php if ($invoice_data->a['company'] != '') {
                                    ?>
                                <?php echo $invoice_data->a['company']; ?> <br>

                                <?php
                                        if ($invoice_data->company && $config['show_business_number'] == '1') {

                                            if ($invoice_data->company->business_number != '') {
                                                echo $config['label_business_number'] . ': ' . $invoice_data->company->business_number . ' <br>';
                                            }
                                        }
                                        ?>

                                <?php echo $_L['ATTN']; ?>: <?php echo $invoice_data->a['account']; ?> <br>
                            <?php
                                } else {
                                    ?>
                                <?php echo $invoice_data->d['account']; ?> <br>
                            <?php
                                }
                                ?>

                            <?php echo getContactFormattedAddress($config, $invoice_data->a); ?> <br>
                            <?php
                                if (($invoice_data->a['phone']) != '') {
                                    echo 'Phone: ' . $invoice_data->a['phone'] . ' <br>';
                                }
                                if (($a['fax']) != '' && $config['fax_field'] != '0') {
                                    echo $_L['Fax'] . ': ' . $invoice_data->a['fax'] . ' <br>';
                                }
                                if (($invoice_data->a['email']) != '') {
                                    echo 'Email: ' . $invoice_data->a['email'] . ' <br>';
                                }
                                foreach ($invoice_data->cf as $cfs) {
                                    echo $cfs['fieldname'] . ': ' . get_custom_field_value($cfs['id'], $invoice_data->a['id']) . ' <br>';
                                }
                                ?></td>
                        <td rowspan="5" style="border:none; text-align:center; vertical-align:bottom; text-align:right" width="31%">
                            <img style="margin-bottom:-23px; margin-right:-4px" src="https://chart.googleapis.com/chart?chs=100x100&cht=qr&chl=<?php echo APP_URL; ?>?ng=client/iview/<?php
                                                                                                                                            echo $invoice_data->d['id'];
                                                                                                                                            ?>/token_<?php echo $invoice_data->d['vtoken']; ?>%2F&choe=UTF-8" title="Link to print invoice" width="100" />
                        </td>
                        <td class="meta-head" style="background:white"><?php echo $_L['INVOICE']; ?> #</td>
                        <td><?php echo $invoice_data->d['invoicenum'] . $dispid; ?></td>
                    </tr>
                    <tr>

                        <td class="meta-head" style="background:white"><?php echo $_L['Status']; ?></td>
                        <td><?php
                                echo ib_lan_get_line($invoice_data->d['status']);
                                ?></td>
                    </tr>
                    <tr>

                        <td class="meta-head" style="background:white"><?php echo $_L['Invoice Date']; ?></td>
                        <td><?php echo date($config['df'], strtotime($invoice_data->d['date'])); ?></td>
                    </tr>
                    <tr>

                        <td class="meta-head" style="background:white"><?php echo $_L['Due Date']; ?></td>
                        <td><?php echo date($config['df'], strtotime($invoice_data->d['duedate'])); ?></td>
                    </tr>

                    <tr>

                        <td class="meta-head" style="background:white"><?php echo $_L['Amount Due']; ?></td>
                        <td>
                            <div class="due"><?php echo ib_money_format($invoice_data->i_due, $config, $invoice_data->d['currency_symbol']) ?></div>
                        </td>
                    </tr>

                </table>

            </div>

            <table id="items">

                <tr>
                    <th width="65%" style="background:white"><?php echo $_L['Item']; ?></th>
                    <th align="right" style="background:white"><?php echo $_L['Price']; ?></th>
                    <!--            <th align="right">--><?php //echo $_L['Qty']; 
                                                                ?>
                    <!--</th>-->
                    <th align="right" style="background:white"><?php

                                            if ($invoice_data->d['show_quantity_as'] == '' || $invoice_data->d['show_quantity_as'] == '1') {
                                                echo $_L['Qty'];
                                            } else {
                                                echo $invoice_data->d['show_quantity_as'];
                                            }




                                            ?></th>
                    <th align="right" style="background:white"><?php echo $_L['Total']; ?></th>

                </tr>



                <?php

                    foreach ($invoice_data->items as $item) {
                        echo '  <tr class="item-row">


            <td class="description">' . $item['description'] . '</td>
            <td align="right">' . ib_money_format($item['amount'], $config, $invoice_data->d['currency_symbol']) . '</td>
            <td align="right">' . $item['qty'] . '</td>
            <td align="right"><span class="price">' . ib_money_format($item['total'], $config, $invoice_data->d['currency_symbol']) . '</span></td>
        </tr>';
                    }

                    ?>


                <tr>
                    <td class="blank"> </td>
                    <td colspan="2" class="total-line"><?php echo $_L['Sub Total']; ?></td>
                    <td class="total-value">
                        <div id="subtotal"><?php echo ib_money_format($invoice_data->d['subtotal'], $config, $invoice_data->d['currency_symbol']); ?></div>
                    </td>
                </tr>
                <?php
                    if (($invoice_data->d['discount']) != '0.00') {

                        ?>
                    <tr>
                        <td class="blank"> </td>
                        <td colspan="2" class="total-line"><?php echo $_L['Discount']; ?>
                            <?php
                                    if ($invoice_data->d['discount_type'] == 'p') {
                                        echo '(' . $invoice_data->d['discount_value'] . ')%';
                                    }
                                    ?>
                        </td>
                        <td class="total-value">
                            <div id="subtotal"><?php echo ib_money_format($invoice_data->d['discount'], $config, $invoice_data->d['currency_symbol']); ?></div>
                        </td>
                    </tr>
                <?php
                    }
                    ?>
                <?php
                    if (($invoice_data->d['tax']) != '0.00') {
                        ?>
                    <tr>

                        <td class="blank"> </td>
                        <td colspan="2" class="total-line"><?php echo $_L['TAX']; ?></td>
                        <td class="total-value">
                            <div id="total"><?php echo ib_money_format($invoice_data->d['tax'], $config, $invoice_data->d['currency_symbol']); ?></div>
                        </td>
                    </tr>
                <?php
                    }
                    ?>

                <?php
                    if ($invoice_data->d['credit'] != '0.00') {
                        ?>
                    <tr>
                        <td class="blank"> </td>
                        <td colspan="2" class="total-line"><?php echo $_L['Invoice Total']; ?></td>
                        <td class="total-value">
                            <div class="due"><?php echo ib_money_format($invoice_data->d['total'], $config, $invoice_data->d['currency_symbol']); ?></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="blank"> </td>
                        <td colspan="2" class="total-line"><?php echo $_L['Total Paid']; ?></td>
                        <td class="total-value">
                            <div class="due"><?php echo ib_money_format($invoice_data->d['credit'], $config, $invoice_data->d['currency_symbol']); ?></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="blank"> </td>
                        <td colspan="2" class="total-line balance"><?php echo $_L['Amount Due']; ?></td>
                        <td class="total-value balance">
                            <div class="due"><?php echo ib_money_format($invoice_data->i_due, $config, $invoice_data->d['currency_symbol']) ?></div>
                        </td>
                    </tr>
                <?php
                    } else {
                        ?>
                    <tr>
                        <td class="blank"> </td>
                        <td colspan="2" class="total-line balance" style="background:white"><?php echo $_L['Grand Total']; ?></td>
                        <td class="total-value balance" style="background:white">
                            <div class="due" ><?php echo ib_money_format($invoice_data->d['total'], $config, $invoice_data->d['currency_symbol']); ?></div>
                        </td>
                    </tr>
                <?php
                    }
                    ?>

            </table>

            <!--    related transactions -->

            <?php
                if ($invoice_data->trs_c != '' && strcmp($invoice_data->d['tax'], '0.00') != 0) {
                    ?>
                <br>
                <h4><?php echo $_L['Related Transactions']; ?>: </h4>
                <table id="related_transactions" style="width: 100%">

                    <tr>
                        <th align="left" width="20%"><?php echo $_L['Date']; ?></th>
                        <th align="left"><?php echo $_L['Account']; ?></th>
                        <th width="50%" align="left"><?php echo $_L['Description']; ?></th>
                        <th align="right"><?php echo $_L['Amount']; ?></th>

                    </tr>



                    <?php

                            foreach ($invoice_data->trs as $tr) {
                                echo '  <tr class="item-row">


            <td align="left">' . date($config['df'], strtotime($tr['date'])) . '</td>
            <td align="left">' . $tr['account'] . '</td>
            <td align="left">' . $tr['description'] . '</td>
            <td align="right"><span class="price">' . ib_money_format($tr['amount'], $config, $invoice_data->d['currency_symbol']) . '</span></td>
        </tr>';
                            }

                            ?>


                </table>
            <?php
                }
                ?>

            <!--    end related transactions -->




        </div>
		
    <?php echo '<p class="single_record">';
	} ?>
	</p>
</body>

</html>