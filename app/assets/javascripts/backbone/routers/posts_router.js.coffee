class LearnBackbone.Routers.PostsRouter extends Backbone.Router
  initialize: (options) ->
    @posts = new LearnBackbone.Collections.PostsCollection()

  routes:
    "/users/:user_id/posts/new"      : "newPost"

  newPost: ->
    @view = new LearnBackbone.Views.Posts.NewView(collection: @posts) 
    $("#posts").html(@view.render().el)