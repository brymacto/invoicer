Invoicer.Views.Employees ||= {}

class Invoicer.Views.Employees.ShowView extends Backbone.View
  template: JST["backbone/templates/employees/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
