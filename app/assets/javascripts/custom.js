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