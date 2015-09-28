class Invoicer.Routers.CategoriesRouter extends Backbone.Router
  initialize: (options) ->
    @categories = new Invoicer.Collections.CategoriesCollection()
    @categories.reset options.categories

  routes:
    "new"      : "newCategory"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newCategory: ->
    @view = new Invoicer.Views.Categories.NewView(collection: @categories)
    $("#categories").html(@view.render().el)

  index: ->
    @view = new Invoicer.Views.Categories.IndexView(collection: @categories)
    $("#categories").html(@view.render().el)

  show: (id) ->
    category = @categories.get(id)

    @view = new Invoicer.Views.Categories.ShowView(model: category)
    $("#categories").html(@view.render().el)

  edit: (id) ->
    category = @categories.get(id)

    @view = new Invoicer.Views.Categories.EditView(model: category)
    $("#categories").html(@view.render().el)
