<foodpage>
  <!-- firstpage -->
  <h1> All the food based on elements</h1>
  <div class="row">
    <h2> Multivitamin-rich Foods</h2>
    <fooditem class="col-xs-4" each={ food in foodByElementa }></fooditem>
  </div>
  <div class="row">
    <h2> Omega-3 Foods</h2>
    <fooditem class="col-xs-4" each={ food in foodByElementb }></fooditem>
  </div>
  <div class="row">
    <h2>Minerals-rich foods (Calcium, Magnisium, etc.)</h2>
    <fooditem class="col-xs-4" each={ food in foodByElementc }></fooditem>
  </div>
  <div class="row">
    <h2> Protein-rich Foods</h2>
    <fooditem class="col-xs-4" each={ food in foodByElementd }></fooditem>
  </div>
  <div class="row">
    <h2> Antioxidants-rich Foods</h2>
    <fooditem class="col-xs-4" each={ food in foodByElemente }></fooditem>
  </div>

  <script>
  console.log('foodpage', this);

    var tag = this;
    this.allFood = [];
    this.foodByElementa = [];
    this.foodByElementb = [];
    this.foodByElementc = [];
    this.foodByElementd = [];
    this.foodByElemente = [];

    this.typeName = [];

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

      console.log('allFood', tag.allFood);

      tag.update();
    });

    function getFoodByElement(element) {
      return tag.allFood.filter(function(food) {
        return food.element == element;
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
