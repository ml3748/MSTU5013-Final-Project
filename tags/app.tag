<app>
  <!-- This is the main tag -->

  <div>
    <foodpage if={ this.showFoodList }></foodpage>
  </div>

  <div if={ this.showMenu }>
    <menu food={ food }>Menu</menu>
  </div>

  <addmenu if={ this.showaddmenu}></addmenu>

  <script>
    this.showFoodList = true;
    this.showMenu = false;
    this.showaddmenu = false;
    var that=this;

    observable.on('clickfood', function(food) {
      alert(food);
      that.showFoodList = false;
      that.showMenu = true;
      that.food = food;
      that.update();
    });

  </script>

</app>
