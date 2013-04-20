LearnBackbone.Views.Posts ||= {}

class LearnBackbone.Views.Posts.NewView extends Backbone.View
  template: JST["backbone/templates/posts/new"]

  events:
    "submit #new-post": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (post) =>
        @model = post
        window.location.hash = "/users/{@model.user_id}/posts/#{@model.id}"

      error: (user, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $("#users").empty()
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
