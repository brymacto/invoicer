Invoicer.Views.Categories ||= {}

class Invoicer.Views.Categories.ShowView extends Backbone.View
  template: JST["backbone/templates/categories/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
