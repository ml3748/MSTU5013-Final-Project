<elpage>
<!-- firstpage -->

<elitem each={ foodItem in allFood }></elitem>
<menu each={ menuType in allMenu}></menu>
<!-- 省略其余四个elitem -->


<script>
  console.log("that");
  var tag = this;
  this.allFood = [];
  this.allMenu = [];


  var elementRef = database.ref('/foodByElement');
  // var allFoodRef = elementRef.child('/a');
  // var bRef = elementRef.child('/b');

  elementRef.on('value',function(snap){
    var data = snap.val();

    tag.allFood = [];
    for (food in data) {
      tag.allFood.push(data[food]);
    };
    tag.update();
    console.log(tag.allFood);
  });


//scipt for passing data to menu.tag

  var menuRef = database.ref('/food');

  menuRef.on('value',function(snap){
    var data = snap.val();

    tag.allMenu = [];
    for (menu in data) {
      tag.allMenu.push(data[menu]);
    };
    tag.update();
    console.log('allMenu', tag.allMenu);
  });


  var fooditempath = 'foodByElement/' + this.element + '/';

</script>

<style>
.item {
  border: 2px solid blue;
  margin: 10px;
  padding: 5px;
}
</style>

</elpage>
