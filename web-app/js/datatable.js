$(function () {
    $(document).ready( function () {
        $(".dataListTable").dataTable({
            "sDom": "<'row'<'col-md-4'f><'col-md-2'C><'col-md-6'T>r>t<'row'<'col-md-4'l><'col-md-8'p>>",
            "aLengthMenu": [[10, 15, 25, 50, -1], [10, 15, 25, 50, "All"]],
            "oColVis": {
                "buttonText": "<abbr title='Change Column'><i class='fa fa-list-ul'></i></abbr>"
            },
            "bAutoWidth": false,
            "oTableTools": {
                "sSwfPath": '/hajj-admin/swf/datatable/copy_csv_xls_pdf.swf',
                "aButtons": [
                    {
                        "sExtends": "print",
                        "sButtonText": "<abbr title='Print'><i class='fa fa-print'></i></abbr>"
                    },
                    {
                        "sExtends": "copy",
                        "sButtonText": "<abbr title='Copy'><i class='fa fa-copy'></i></abbr>"
                    },
                    {
                        "sExtends":    "collection",
                        "sButtonText": "<abbr title='Save as'><i class='fa fa-save'></i></abbr>",
                        "aButtons":    [
                            "xls",
                            {
                                "sExtends": "pdf",
                                "sPdfOrientation": "landscape",
                                "sPdfMessage": " "
                            }
                        ]
                    }

                ]
            }
        });

    });

});

