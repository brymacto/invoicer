class Invoicer.Models.Client extends Backbone.Model
  paramRoot: 'client'

  defaults:
    name: null
    contact: null
    phone: null
    email: null
    company: null

class Invoicer.Collections.ClientsCollection extends Backbone.Collection
  model: Invoicer.Models.Client
  url: '/clients'
