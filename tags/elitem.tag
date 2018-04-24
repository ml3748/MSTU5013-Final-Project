<elitem>
  <h3> Vitamine A </h3>
  <div class="container-fluid">
   <div class="col-md-12 item">
    <elfood class="col-md-4" each={ specificFood in foodItem }></elfood>
  </div>
</div>

 <script>

// var tag = this;
// this.food = [];
// this.aFood = [];
// this.element = 'a';
//
//
// var elementRef = database.ref('/foodByElement');
// var aRef = elementRef.child('/a');
// // var bRef = elementRef.child('/b');
//
//
// aRef.on('value',function(snap){
//   var data = snap.val();
//
//   tag.aFood = [];
//   for (food in data) {
//     tag.aFood.push(data[food]);
//   };
//   tag.update();
//   console.log(tag.aFood);
//   // console.log(tag.bFood);
// });
//
//
// var fooditempath = 'foodByElement/' + this.element + '/';



 </script>

 <style>
/*
 .item {
   border: 2px solid blue;
   margin: 10px;
   padding: 5px;
 } */
 </style>

</elitem>
