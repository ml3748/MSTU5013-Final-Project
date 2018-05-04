<app>
<!-- This is the main tag -->

  <div>
    <foodpage if={ showFoodList }></foodpage>
  </div>

  <div if={ this.showMenu }>
    <menu food={ food }>Menu</menu>
  </div>

  <addmenu if= {this.showMenu}></addmenu>


  <script>
   this.showFoodList = true;
   this.showMenu = false;

   // toggleCuisines(food) {
   //   alert(food);
   //   this.showFoodList = false;
   //   this.showMenu = true;
   //   this.food = food;
   //   this.update();
   // }

   </script>

</app>
