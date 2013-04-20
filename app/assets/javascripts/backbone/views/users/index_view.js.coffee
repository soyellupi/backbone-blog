LearnBackbone.Views.Users ||= {}

class LearnBackbone.Views.Users.IndexView extends Backbone.View
  template: JST["backbone/templates/users/index"]

  initialize: () ->
    @options.users.bind('reset', @addAll)

  addAll: () =>
    @options.users.each(@addOne)

  addOne: (user) =>
    view = new LearnBackbone.Views.Users.UserView({model : user})
    @$("tbody").append(view.render().el)

  render: =>
    $("#posts").empty()
    $(@el).html(@template(users: @options.users.toJSON() ))
    @addAll()

    return this
