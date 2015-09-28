Invoicer.Views.Employees ||= {}

class Invoicer.Views.Employees.IndexView extends Backbone.View
  template: JST["backbone/templates/employees/index"]

  initialize: () ->
    @collection.bind('reset', @addAll)

  addAll: () =>
    @collection.each(@addOne)

  addOne: (employee) =>
    view = new Invoicer.Views.Employees.EmployeeView({model : employee})
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(employees: @collection.toJSON() ))
    @addAll()

    return this
