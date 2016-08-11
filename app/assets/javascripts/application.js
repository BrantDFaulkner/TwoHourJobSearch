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

  $(".slider label").on("click", function(event) {
    var self = this
    var company_id = self.id.match(/\d+/g)
    var select_slider = "#slider_" + company_id
    var select_slider_span = select_slider + " span"

    if ($(select_slider_span).text() == "NO") {
      $(select_slider_span).text("YES").fadeIn()
      update_company(company_id, "advocate", true)
    } else {
      $(select_slider_span).text("NO")
      update_company(company_id, "advocate", false)
    }

    $(select_slider).toggleClass("yes no")
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

  $(".view_advocates").on("click", function (e) {
    e.preventDefault()
    var self = this
    var company_id = self.id.match(/\d+/g)
    self.text = toggleAdvocate(self.text)

    function toggleAdvocate(arg) {
      return arg === "view advocates" ? "hide advocates" : "view advocates";
    }

     // self.text(function(i, text){
     //
     //  })
    $("#advocate_id_" + company_id[0]).toggle()
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

