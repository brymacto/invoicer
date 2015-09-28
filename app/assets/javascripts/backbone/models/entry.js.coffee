class Invoicer.Models.Entry extends Backbone.Model
  paramRoot: 'entry'

  defaults:
    minutes: null
    rate: null
    client: null
    company: null
    employee: null

class Invoicer.Collections.EntriesCollection extends Backbone.Collection
  model: Invoicer.Models.Entry
  url: '/entries'
