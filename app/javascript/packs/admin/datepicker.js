$(".datepicker").datepicker({ format: 'dd-mm-yyyy', autoclose: true, orientation: 'bottom left' });

$('.datetimepicker').datetimepicker({
  format: 'dd-mm-yyyy - HH:ii P',
  autoclose: true,
  orientation: 'bottom left',
  todayBtn: true,
  minuteStep: 30
});
