<app>
  <div hide={ this.showmenu }>
   <elpage show={ noCuisine }></elpage>

   <div hide={ noCuisine } food={ food }>cuisine page</div>
  </div>
  <div if={ this.showmenu }>
  <menu></menu>
  </div>


 <script>
   this.showmenu = false;
   this.noCuisine = true;
   console.log(this.showmenu);
   this.update();

   toggleCuisines(food) {
     alert(food);
     this.noCuisine = false;
     this.food = food;
     this.update();
   }


 </script>

</app>
