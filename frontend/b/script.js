new Vue({
    el: '.container',
    data() {
      return {
        newItem: '',
        items: ['Apple', 'Grape', 'Strawberry']
      }
    },
    methods: {
      addItem() {
        this.items.push(this.newItem)
        this.newItem = ''
      },
      removeItem(index) {
        this.items.splice(index, 1)
      }
    }
  })
  