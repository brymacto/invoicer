Invoicer.Views.Clients ||= {}

class Invoicer.Views.Clients.ShowView extends Backbone.View
  template: JST["backbone/templates/clients/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
