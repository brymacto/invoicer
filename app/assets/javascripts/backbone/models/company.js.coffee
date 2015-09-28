class Invoicer.Models.Company extends Backbone.Model
  paramRoot: 'company'

  defaults:
    name: null
    contact: null
    phone: null
    email: null
    website: null
    address_1: null
    address_2: null
    city: null
    province: null
    postal_code: null

class Invoicer.Collections.CompaniesCollection extends Backbone.Collection
  model: Invoicer.Models.Company
  url: '/companies'
