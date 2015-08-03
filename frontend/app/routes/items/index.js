import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return this.store.find('item');
  },
  actions: {
        createItem: function(newItem) {
            // Create the new Todo model
            var item = this.store.createRecord('item', {
                name: newItem
            });

            // Clear the "New Todo" text field
            this.controllerFor('items').set('newItem', '');

            // Save the new model
            item.save();
        }
    }
});
