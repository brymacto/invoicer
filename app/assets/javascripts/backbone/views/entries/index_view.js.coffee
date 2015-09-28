Invoicer.Views.Entries ||= {}

class Invoicer.Views.Entries.IndexView extends Backbone.View
  template: JST["backbone/templates/entries/index"]

  initialize: () ->
    @collection.bind('reset', @addAll)

  addAll: () =>
    @collection.each(@addOne)

  addOne: (entry) =>
    view = new Invoicer.Views.Entries.EntryView({model : entry})
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(entries: @collection.toJSON() ))
    @addAll()

    return this
