import Ember from 'ember';

export default Ember.Route.extend({
  model: function(params) {
    return this.store.find('item', params.id);
  },
  actions: {
      edit: function() {
        this.transitionTo('item.edit');
      },
      save: function() {
        var _this = this;
        var item = this.get('controller.model');
        item.save().then(function(model) {
          _this.transitionTo('/items');
        });
      }
    }
});
