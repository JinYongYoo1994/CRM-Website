function invoice_filter() {

    if ($(".filter-box").css("display") == "none") {
        $(".filter-box").css("display", "flex");
    } else {
        $(".filter-box").css("display", "none");
    }
}
var all_sub_checkbox_checked = false;
var any_sub_checkbox_checked = false;
$(document).ready(function () {
    $('input[type="checkbox"]').click(function () {
        if ($(this).attr('class') == 'total_checkbox') {
            
            if ($(this).prop('checked') == true) {
                $('.sub_checkbox').each(function () {
                    $(this).prop("checked", true);
                });
            } else {
                $('.sub_checkbox').each(function () {
                    $(this).prop("checked", false);
                });
            }
        } else if ($(this).attr('class') == 'sub_checkbox') {
            var subCheckBoxCounts = $('.sub_checkbox').length;
            if ($(this).prop('checked') == true) {
                
                var checkedSubCheckBoxCounts = $('input:checkbox.sub_checkbox:checked').length;
                if (subCheckBoxCounts == checkedSubCheckBoxCounts) {
                    $('.total_checkbox').prop({
                        indeterminate: false,
                        checked: true
                    });
                } else {
                    $('.total_checkbox').prop({
                        indeterminate: true,
                        checked: true
                    });
                }
            } else {
                var checkedSubCheckBoxCounts = $('input:checkbox.sub_checkbox:checked').length;
                if (checkedSubCheckBoxCounts == 0) {
                    
                    $('.total_checkbox').prop({
                        indeterminate: false,
                        checked: false
                    });
                } else {
                    
                    $('.total_checkbox').prop({
                        indeterminate: true,
                        checked: true
                    });
                }
            }
        }
    });
});



function print_multi_invoice(url) {
    var url_string = url.toString();
    var checked_invoice_ids = '';
    
    $('input:checkbox.sub_checkbox:checked').each(function () {
        //$(this).attr('id')
        var checked_id = $(this).attr('id').replace('sub_checkbox_', '');
        checked_invoice_ids += ('&ids[]=' + checked_id);
    });

    window.location.href = url_string + "invoices/multi_view/?" + checked_invoice_ids;
    // $.ajax({
    //     type: "post",
    //     url: url_string+"invoices/multi_view/",
    //     data: {
    //         invoice_ids: checked_invoice_ids
    //     },
    //     success: function (response) {
    //         console.log(JSON.parse(response));
    //     }
    // });
}

function filterInvoiceFunc(){
    $("#invoice_list_filter").submit();

}
