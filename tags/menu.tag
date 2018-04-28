<menu>
<!-- The menu page; after the foodlist page -->

  <div class="item">
    <cuisine each={ cuisine in cuisineType }></cuisine>
  </div>



  <script>
    var tag = this;
    this.allMenu = [];
    this.cuisineType = [];

    console.log('menu tag', this);

    var menuRef = database.ref('/cuisineByFood');
    // var cuisineRef = menuRef.child('/');

    // console.log('menuRef', menuRef);
    // console.log('cuisineRef', cuisineRef);
        //var id = menuRef.push().key;

    // var cuisineRef = database.ref('/cusineByFood' + '/' + this.id);
    //
    // console.log(id);
    //
    menuRef.on('value', function (snap) {
      var data = snap.val();

      tag.allMenu = [];
      tag.cuisineType = [];

      for (menu in data) {
        tag.allMenu.push(data[menu]);
        var menuone = data[menu];
        console.log('menu', menuone);

        for (cuisine in menuone) {
        tag.cuisineType.push(menuone[cuisine]);
        console.log('datamenu', cuisine);
        };
      };
        tag.update();
    });

    //
    // cuisineRef.on('value', function (snap) {
    //   var menu = tag.allMenu;
    //
    //   tag.cuisineType = [];
    //   for (cuisine in menu) {
    //     tag.cuisineType.push(menu[cuisine]);
    //   };
    //   tag.update();
    //   console.log('cusineType', tag.cuisineType);
    // });


  </script>

  <style>
  </style>


</menu>
