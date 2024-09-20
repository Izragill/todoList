$(document).ready(function () {
    $('#delete*').on('click', function (event) {
        event.preventDefault();

        let url = $(this).attr('action');
        let id = $(this).attr('item_id');

        $.ajax({
            url: url,
            type: "POST",
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            data: {
                "_method": "DELETE",
                id: id,
            },
            success: function (response) {
                $('#' + id).css("display", "none");
            },
        });
    });

    $('#update*').on('click', function (event) {
        let url = $(this).attr('action');
        let id = $(this).attr('item_id');

        $.ajax({
            url: url,
            type: "POST",
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            data: {
                "_method": "PUT",
                id: id,
                // done:checked
            },
            success: function (response) {

            },
        });
    });

    $('.create_task').on('submit', function (event) {
        event.preventDefault();

        let url = $(this).attr('action');
        let done = $('input[name=done]').is(':checked')
        let name = $('input[name=name]').val();

        $.ajax({
            url: url,
            type: "POST",
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            data: {
                "_method": "POST",
                done: done,
                name: name,
                // done:checked
            },
            success: function (response) {
                $('.form-errors').html('');
                $('.form-errors').removeClass('empty');
            },
            error:function(err){
                let error = err.responseJSON;
                $('.form-errors').addClass('empty');
                $.each(error.errors, function (index, value) {
                    $('.form-errors').html('<span class="red">'+value+'<span>'+'<br>');
                });
            }
        });
    });
});
