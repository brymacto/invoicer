class Invoicer.Routers.EntriesRouter extends Backbone.Router
  initialize: (options) ->
    @entries = new Invoicer.Collections.EntriesCollection()
    @entries.reset options.entries

  routes:
    "new"      : "newEntry"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newEntry: ->
    @view = new Invoicer.Views.Entries.NewView(collection: @entries)
    $("#entries").html(@view.render().el)

  index: ->
    @view = new Invoicer.Views.Entries.IndexView(collection: @entries)
    $("#entries").html(@view.render().el)

  show: (id) ->
    entry = @entries.get(id)

    @view = new Invoicer.Views.Entries.ShowView(model: entry)
    $("#entries").html(@view.render().el)

  edit: (id) ->
    entry = @entries.get(id)

    @view = new Invoicer.Views.Entries.EditView(model: entry)
    $("#entries").html(@view.render().el)
