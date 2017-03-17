$(function() {
    $('.datepicker').datepicker({
        autoclose: true,
        todayHighlight: true
    });
});

$(function() {
    $('.calcFTE').on('change', function() {
        var n = Math.ceil(
            Date.parse($('#endDate').val()) -
            Date.parse($('#startDate').val())
        ) / (1000*60*60*24);

        var h = $('#hoursPerWeek').val();

        if (n >= 60 && h >= 20) {
            $('#fteRateLabel').text('LOB FTE %');
            $('#contractType').val('LOB');
        } else {
            $('#fteRateLabel').text('LOA FTE %');
            $('#contractType').val('LOA');
        }

        $('#fteRate').val(((h / 40.0) * 100).toFixed(1));
    });
});

$(function() {
    $('#same_as_traveler').on('change', function() {
        if (this.checked) {
            $('#requester_first_name').val($('#traveler_first_name').val());
            $('#requester_last_name').val($('#traveler_last_name').val());
            $('#requester_department').val($('#traveler_department').val());
            $('#requester_email').val($('#traveler_email').val());
        } else {
            $('#requester_first_name').val('');
            $('#requester_last_name').val('');
            $('#requester_department').val('');
            $('#requester_email').val('');
        }
    });
});

$(function() {
    $('#same_as_employee').on('change', function() {
        if (this.checked) {
            $('#requester_first_name').val($('#employee_first_name').val());
            $('#requester_last_name').val($('#employee_last_name').val());
            $('#requester_department').val($('#department').val());
            $('#requester_email').val($('#employee_email').val());
        } else {
            $('#requester_first_name').val('');
            $('#requester_last_name').val('');
            $('#requester_department').val('');
            $('#requester_email').val('');
        }
    });
});
