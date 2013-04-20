class LearnBackbone.Models.Post extends Backbone.Model
  paramRoot: 'post'

  defaults:
    user_id: null
    title: null
    body: null

class LearnBackbone.Collections.PostsCollection extends Backbone.Collection
  model: LearnBackbone.Models.Post
  url: '/posts'
