

!function($) {

    "use strict";
    var FormAdvanced = function() {};

    //initializing tooltip
    FormAdvanced.prototype.initSelect2 = function() {
        // Select2
        $('.select2').select2();
    },
    // FormAdvanced.prototype.dateFlatpickr = function() {
    //     // Select2
    //    $('.basic-datepicker').flatpickr({
    //                         dateFormat: "d/m/Y"

    //     });
    // },


    //initilizing
    FormAdvanced.prototype.init = function() {
        var $this = this;
        this.initSelect2();
        // this.dateFlatpickr();



    },

    $.FormAdvanced = new FormAdvanced, $.FormAdvanced.Constructor = FormAdvanced

}(window.jQuery);
    // //initializing main application module
    // function ($) {
    //   "use strict";
    //     $.FormAdvanced.init();
    // }(window.jQuery);
