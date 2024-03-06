/*jshint esversion: 6 */
$(document).ready(() => {
    TemplatesTable();
});

function TemplatesTable() {
    let Element = $("#templatesTable");
    if(Element.length > 0) {
        let Url = atob($("meta[name='load-templates-url']").attr('content'));
        Element.DataTable({
            "processing": true,
            "serverSide": true,
            "paging": true,
            "bPaginate": true,
            "ordering": true,
            "lengthMenu": [
                [10, 25, 50, 100, -1],
                [10, 25, 50, 100, 'All'],
            ],
            "ajax": {
                "url": Url,
                "type": "POST"
            },
            'columns': [
                { data: 'id' },
                { data: 'title' },
                { data: 'template_file', orderable: false },
                { data: 'created_at' },
                { data: 'action', orderable: false }
            ],
            'order': [0, 'desc']
        });
    }
}

function DeleteTemplate(Id) {
    let Values = Id.split('||');
    $("#d-template-id").val(Values[1]);
    $("#deleteTemplateModal").modal('toggle');
}
