<app>
  <!-- This is the main tag -->

  <div>
    <foodpage foodType={ food } if={ this.showFoodList }></foodpage>
  </div>

  <div if={ this.showMenu }>
    <menu food={ food }>Menu</menu>
  </div>

  <addmenu if={ this.showaddmenu}></addmenu>

  <script>
    var that = this;
    this.showFoodList = true;
    this.showMenu = false;
    this.showaddmenu = false;
    this.food = null;

    observable.on('clickfood', function (food) {
      alert(food);
      that.showFoodList = false;
      that.showMenu = true;
      that.food = food;
      that.update();
    });

    observable.on('addmenu', function () {
      that.showMenu = false;
      that.showFoodList = false;
      that.showaddmenu = true;
      that.update();
    });

    observable.on('tofoodpage', function () {
      that.showMenu = false;
      that.showFoodList = true;
      that.showaddmenu = false;
      that.update;
    })
    
  </script>

</app>
