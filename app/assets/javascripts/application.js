// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){

  $(".pill_boolean").on("click", function() {
    var self = this
    var select_id = '#' + self.id
    var company_id = self.id.match(/\d+/g)
    var classList = self.className.split(/\s+/)

    if (classList.includes("pill_yes")) {
      $(select_id).toggleClass("pill_yes pill_no")
      $(select_id).text("No")
      update_company(company_id, "advocate", "No")
    } else if (classList.includes("pill_no")) {
      $(select_id).toggleClass("pill_no")
      $(select_id).text('TBD')
      update_company(company_id, "advocate", "TBD")
    } else {
      $(select_id).toggleClass("pill_yes")
      $(select_id).text('Yes')
      update_company(company_id, "advocate", "Yes")
    }
  })

  $(".company_motivation").on("change", function () {
    var self = this
    var company_id = self.id.match(/\d+/g)
    var new_value = self.value
    update_company(company_id, "motivation", new_value)
  })

  $(".company_posting").on("change", function () {
    var self = this
    var company_id = self.id.match(/\d+/g)
    var new_value = self.value
    update_company(company_id, "posting", new_value)
  })

});//DOCUMENT READY

  function update_company(company_id, key, value) {
    var url = "api/companies/" + company_id
    var data = {company: {}}
    data["company"][key] = value

    $.ajax({
        method: "PATCH",
        url: url,
        data: data
      }).then(function(response) {
        console.log(response)
        return response
      })
  }

