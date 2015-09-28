class Invoicer.Models.Category extends Backbone.Model
  paramRoot: 'category'

  defaults:
    name: null
    company: null

class Invoicer.Collections.CategoriesCollection extends Backbone.Collection
  model: Invoicer.Models.Category
  url: '/categories'
