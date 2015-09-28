Invoicer.Views.Companies ||= {}

class Invoicer.Views.Companies.ShowView extends Backbone.View
  template: JST["backbone/templates/companies/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
