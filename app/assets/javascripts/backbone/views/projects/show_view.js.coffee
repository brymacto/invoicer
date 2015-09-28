Invoicer.Views.Projects ||= {}

class Invoicer.Views.Projects.ShowView extends Backbone.View
  template: JST["backbone/templates/projects/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
