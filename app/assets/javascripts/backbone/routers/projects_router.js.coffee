class Invoicer.Routers.ProjectsRouter extends Backbone.Router
  initialize: (options) ->
    @projects = new Invoicer.Collections.ProjectsCollection()
    @projects.reset options.projects

  routes:
    "new"      : "newProject"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newProject: ->
    @view = new Invoicer.Views.Projects.NewView(collection: @projects)
    $("#projects").html(@view.render().el)

  index: ->
    @view = new Invoicer.Views.Projects.IndexView(collection: @projects)
    $("#projects").html(@view.render().el)

  show: (id) ->
    project = @projects.get(id)

    @view = new Invoicer.Views.Projects.ShowView(model: project)
    $("#projects").html(@view.render().el)

  edit: (id) ->
    project = @projects.get(id)

    @view = new Invoicer.Views.Projects.EditView(model: project)
    $("#projects").html(@view.render().el)
