
console.log("Inside the content")
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

// import "./admin/app";
require("jquery")
window.feather = require("feather-icons");
require("./admin/vendor")


require("./admin/app")

// require("./admin/metisMenu")
// require("./admin/jquery.slimscroll.js")
// require("./admin/waves.js")
require("./admin/select2.min")
require("./admin/bootstrap-datepicker.min")
require("./admin/bootstrap-datetimepicker.min")
require("./admin/form")
require("datatables.net-bs4")
// require("./admin/blend.js")