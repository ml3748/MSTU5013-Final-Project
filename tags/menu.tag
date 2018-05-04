<menu>
  <!-- The menu page; after the foodpage -->


  <h1> Menus for {this.opts.food} </h1>

  <script>

    console.log(this.opts.food);
  //
  // <div class="item">
  //   <cuisine each={ cuisine in cuisineType }></cuisine>
  // </div>
    var tag = this;
    this.allMenus = [];
    var rootFoodPath = "cuisineByFood/" + this.opts.food;
    console.log(rootFoodPath);

    var allMenuRef = database.ref(rootFoodPath);
    allMenuRef.on('value', function (snap) {
      var data = snap.val();

      tag.allMenus= [];
      for (menu in data) {
        tag.allMenus.push(data[menu]);
      };
      tag.update();
      console.log(tag.allMenus);
    })



  </script>

  <style></style>

</menu>
