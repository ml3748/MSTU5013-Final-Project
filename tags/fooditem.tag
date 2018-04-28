<fooditem>
  <!-- food-lists on the first page -->
  <div class="col-md-4">
    <img class="rounded img-responsive" src={ specificFood.src } alt="picture" onclick={ menu }>
    <span>{ specificFood.name }</span>
  </div>

  <script>
    console.log('elfood', this);

    this.menu = function () {
      console.log(this.specificFood.name);
      this.parent.parent.parent.toggleCuisines(this.specificFood.name);
    };
  </script>

  <style></style>

</fooditem>
