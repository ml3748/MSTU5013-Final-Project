<addmenu>

  <div class="container">

    <h1>Add Your Cuisine Here!</h1>
    <div class="form-group">

      <input type="text" name="cuisinename" ref="cuisinename" placeholder="Cuisine Name" class="form-control"><br>
      <div class="form-group">
        <input type="text" name="foodName" ref="foodName" placeholder="Food Name" class="form-control"><br>
        <input type="text" name="foodphoto" ref="foodPhotosrc" placeholder="Food photoURL (optional)" class="form-control">
      </div>

      <span>Meal:</span>
      <select ref="mealtype" class="form-control">
        <option value="breakfast">breakfast</option>
        <option value="lunch">lunch</option>
        <option value="dinner">dinner</option>
        <option value="snacks">snacks</option>
      </select><br>

      <span>Element:</span>
      <select ref="element" class="form-control">
        <option value="a">a</option>
        <option value="b">b</option>
        <option value="c">c</option>
        <option value="d">d</option>
        <option value="e">e</option>
      </select><br>

      <textarea name="name" rows="5" cols="10" class="form-control" placeholder="Steps" ref="steps" ></textarea>

      <div class="form-group" ref="taste">
        <label><input type="radio" name="taste" value="spicy">Spicy</label>
        <label><input type="radio" name="taste" value="sweet">Sweet</label>
        <label><input type="radio" name="taste" value="salty">Salty</label>
        <label><input type="radio" name="taste" value="plain">Plain</label>
      </div>

      <input type="text" name="photoURL" ref="cuiphotosrc" placeholder="Photo URL here" class="form-control"><br>

      <button type="button" onclick={ submit }>
        submit
      </button>
    </div>

  </div>

  <script>
    console.log('addmenu page');
    var that = this;

    this.submit = function() {
      var cuisName = this.refs.cuisinename.value;
      var foodName = this.refs.foodName.value;
      var foodSrc = this.refs.foodPhotosrc.value;
      var ele = this.refs.element.value;
      var steps = this.refs.steps.value;
      var cuisPhoSrc = this.refs.cuiphotosrc.value;
      var mealtype = this.refs.mealtype.value;

      var foodData = {element: ele,
                      name: foodName,
                      src: foodSrc
                    };

      var foodPath = "foodsByElement/" + foodName;

      console.log(cuisPath);
      var cuiskey = database.ref(cuisPath).push().key;
      var cuisPath = "cuisineByFood/" + foodName + "/" + cuiskey;
      var cuisData = {food: foodName,
                       meal: mealtype,
                       name: cuisName,
                       src: cuisPhoSrc,
                       id: cuiskey,
                       steps: steps
                     };

      var updates = {};
        	updates[foodPath] = foodData;
          updates[cuisPath] = cuisData;

      database.ref().update(updates);

    };



  </script>

</addmenu>