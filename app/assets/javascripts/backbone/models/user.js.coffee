class LearnBackbone.Models.User extends Backbone.Model
  paramRoot: 'user'

  defaults:
    nickname: null
    name: null
    surname: null

class LearnBackbone.Collections.UsersCollection extends Backbone.Collection
  model: LearnBackbone.Models.User
  url: '/users'
