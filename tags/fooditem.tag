<fooditem>
  <!-- food-lists on the first page -->
  <div onclick={ clickfood }>
    <h1>
      {food.name}
    </h1>
    <img src={food.src}>
  </div>

  <script>

    var that = this;
    console.log('elfood');

    this.clickfood = function (e) {
      console.log('clicked');
      var foodName = that.food.name
      observable.trigger('clickfood', foodName);
    }

  </script>

  <style></style>

</fooditem>
