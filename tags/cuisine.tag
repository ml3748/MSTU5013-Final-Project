<cuisine>
  <div class="item">
    <h3>{ cuisine.food }</h3>
    <div>
      <h5>{ cuisine.name }</h5>
      <img class = "rounded img-responsive" src={ cuisine.src } alt="picture">
      <p> { cuisine.meal } </p>
      <p> { cuisine.taste } </p>
    </div>
  </div>

  <script>
    console.log('name', food.name);
  </script>

  <style>
  .item {
       border: 2px solid blue;
       margin: 10px;
       padding: 5px;
     }
  </style>

</cuisine>
