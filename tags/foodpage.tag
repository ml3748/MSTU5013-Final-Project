<foodpage>
  <!-- firstpage -->
  <h1>All the food based on elements</h1>
  <div class="row">
    <h2>Element a</h2>
    <fooditem class="col-xs-4" each={ food in foodByElementa }></fooditem>
  </div>
  <div class="row">
    <h2>Element b</h2>
    <fooditem class="col-xs-4" each={ food in foodByElementb }></fooditem>
  </div>
  <div class="row">
    <h2>Element c</h2>
    <fooditem class="col-xs-4" each={ food in foodByElementc }></fooditem>
  </div>
  <div class="row">
    <h2>Element d</h2>
    <fooditem class="col-xs-4" each={ food in foodByElementd }></fooditem>
  </div>
  <div class="row">
    <h2>Element e</h2>
    <fooditem class="col-xs-4" each={ food in foodByElemente }></fooditem>
  </div>

  <script>
    console.log("that");
    var tag = this;
    this.allFood = [];
    this.foodByElementa = [];
    this.foodByElementb = [];
    this.foodByElementc = [];
    this.foodByElementd = [];
    this.foodByElemente = [];

    var foodsByElemetRef = database.ref('/foodsByElement');

    foodsByElemetRef.on('value', function (snap) {
      var data = snap.val();

      tag.allFood = [];
      for (food in data) {
        tag.allFood.push(data[food]);
      };
      tag.update();
      //element a:
      tag.foodByElementa = getFoodByElement('a');
      ///element b:
      tag.foodByElementb = getFoodByElement('b');
      ///element c:
      tag.foodByElementc = getFoodByElement('c');
      ///element d:
      tag.foodByElementd = getFoodByElement('d');
      ///element b:
      tag.foodByElemente = getFoodByElement('e');

      console.log(tag.foodByElementa);

      tag.update();
    });

    function getFoodByElement(ele) {
      return tag.allFood.filter(function (food) {
        return food.element == ele;
      });
    }
  </script>

  <style>
    .item {
      border: 2px solid blue;
      margin: 10px;
      padding: 5px;
    }
  </style>

</foodpage>
