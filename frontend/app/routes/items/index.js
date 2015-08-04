import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return this.store.find('item');
  },
  actions: {
        createItem: function(newItem) {
            var item = this.store.createRecord('item', {
                name: newItem
            });
            this.controllerFor('items').set('newItem', '');
            item.save();
        }
    }
});
