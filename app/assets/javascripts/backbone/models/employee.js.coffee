class Invoicer.Models.Employee extends Backbone.Model
  paramRoot: 'employee'

  defaults:
    name: null
    rate: null
    company: null

class Invoicer.Collections.EmployeesCollection extends Backbone.Collection
  model: Invoicer.Models.Employee
  url: '/employees'
