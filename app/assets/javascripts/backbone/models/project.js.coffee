class Invoicer.Models.Project extends Backbone.Model
  paramRoot: 'project'

  defaults:
    name: null
    company: null

class Invoicer.Collections.ProjectsCollection extends Backbone.Collection
  model: Invoicer.Models.Project
  url: '/projects'
