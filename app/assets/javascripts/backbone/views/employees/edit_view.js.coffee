Invoicer.Views.Employees ||= {}

class Invoicer.Views.Employees.EditView extends Backbone.View
  template: JST["backbone/templates/employees/edit"]

  events:
    "submit #edit-employee": "update"

  update: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success: (employee) =>
        @model = employee
        window.location.hash = "/#{@model.id}"
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
