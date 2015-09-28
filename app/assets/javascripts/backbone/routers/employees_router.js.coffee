class Invoicer.Routers.EmployeesRouter extends Backbone.Router
  initialize: (options) ->
    @employees = new Invoicer.Collections.EmployeesCollection()
    @employees.reset options.employees

  routes:
    "new"      : "newEmployee"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newEmployee: ->
    @view = new Invoicer.Views.Employees.NewView(collection: @employees)
    $("#employees").html(@view.render().el)

  index: ->
    @view = new Invoicer.Views.Employees.IndexView(collection: @employees)
    $("#employees").html(@view.render().el)

  show: (id) ->
    employee = @employees.get(id)

    @view = new Invoicer.Views.Employees.ShowView(model: employee)
    $("#employees").html(@view.render().el)

  edit: (id) ->
    employee = @employees.get(id)

    @view = new Invoicer.Views.Employees.EditView(model: employee)
    $("#employees").html(@view.render().el)
