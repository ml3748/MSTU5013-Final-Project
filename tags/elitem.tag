<elitem>
  <div class="container">
   <div class="item row">
    <h3 class="col-sm-3">A</h3>

    <elfood class = "col-sm-3" each={ fooditem in allfood }></elfood>
  </div>
 <div>
 <script>

var tag = this;
this.food = [];

this.element = 'a';

var elementdataset = rootRef.child('foodByElement');

var fooditemRef = elementdataset.child(this.element);

fooditemRef.on('value',function(snap){
  var data = snap.val();

  tag.allfood = [];

  for (food in data) {
    tag.allfood.push(data[food]);
  };
  tag.update();
  console.log(tag.allfood);
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

</elitem>
