class Invoicer.Routers.ClientsRouter extends Backbone.Router
  initialize: (options) ->
    @clients = new Invoicer.Collections.ClientsCollection()
    @clients.reset options.clients

  routes:
    "new"      : "newClient"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newClient: ->
    @view = new Invoicer.Views.Clients.NewView(collection: @clients)
    $("#clients").html(@view.render().el)

  index: ->
    @view = new Invoicer.Views.Clients.IndexView(collection: @clients)
    $("#clients").html(@view.render().el)

  show: (id) ->
    client = @clients.get(id)

    @view = new Invoicer.Views.Clients.ShowView(model: client)
    $("#clients").html(@view.render().el)

  edit: (id) ->
    client = @clients.get(id)

    @view = new Invoicer.Views.Clients.EditView(model: client)
    $("#clients").html(@view.render().el)
