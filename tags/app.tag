<app>
  <div hide={ this.showmenu }>
   <elpage></elpage>
  </div>
  <div if={ this.showmenu }>
  <menu></menu>
  </div>


 <script>
   this.showmenu = false;
   console.log(this.showmenu);
   this.update();


 </script>

</app>
