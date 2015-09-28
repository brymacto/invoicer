Invoicer.Views.Projects ||= {}

class Invoicer.Views.Projects.IndexView extends Backbone.View
  template: JST["backbone/templates/projects/index"]

  initialize: () ->
    @collection.bind('reset', @addAll)

  addAll: () =>
    @collection.each(@addOne)

  addOne: (project) =>
    view = new Invoicer.Views.Projects.ProjectView({model : project})
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(projects: @collection.toJSON() ))
    @addAll()

    return this
