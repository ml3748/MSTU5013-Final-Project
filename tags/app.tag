<app>
<!-- This is the main tag -->

  <div>
    <foodpage show={ showFoodList }></foodpage>
  </div>

  <div if={ this.showMenu }>
    <menu food={ food }>Menu</menu>
  </div>


  <script>
   this.showFoodList = true;
   this.showMenu = false;

   toggleCuisines(food) {
     alert(food);
     this.showFoodList = false;
     this.showMenu = true;
     this.food = food;
     this.update();
   }

   </script>

</app>
