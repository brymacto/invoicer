Invoicer.Views.Companies ||= {}

class Invoicer.Views.Companies.IndexView extends Backbone.View
  template: JST["backbone/templates/companies/index"]

  initialize: () ->
    @collection.bind('reset', @addAll)

  addAll: () =>
    @collection.each(@addOne)

  addOne: (company) =>
    view = new Invoicer.Views.Companies.CompanyView({model : company})
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(companies: @collection.toJSON() ))
    @addAll()

    return this
