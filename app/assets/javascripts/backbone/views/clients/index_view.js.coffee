Invoicer.Views.Clients ||= {}

class Invoicer.Views.Clients.IndexView extends Backbone.View
  template: JST["backbone/templates/clients/index"]

  initialize: () ->
    @collection.bind('reset', @addAll)

  addAll: () =>
    @collection.each(@addOne)

  addOne: (client) =>
    view = new Invoicer.Views.Clients.ClientView({model : client})
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(clients: @collection.toJSON() ))
    @addAll()

    return this
