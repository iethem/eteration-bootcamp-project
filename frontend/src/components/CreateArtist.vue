<template>
<div class="overview__albums">

    <div class="overview__albums__head">

        <span class="section-title">Create an Artist</span>

        <span class="view-type">

            <i class="fa fa-list list active"></i>

            <i class="fa fa-th-large card"></i>

        </span>

    </div>

    <div class="album">

        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <form class="" method="post" @submit.prevent="postNow">
                        <div class="form-group ">

                            <input type="text" class="form-control" name="" value="" v-model="name" placeholder="Enter Name">

                        </div>

                        <div class="form-group">

                            <input type="text" class="form-control" name="" value="" v-model="surname" placeholder="Enter Surname">

                        </div>

                        <div class="form-group">

                            <input type="text" class="form-control" name="" value="" v-model="profile" placeholder="Enter Profile">

                        </div>

                        <div class="form-group">

                            <input type="text" class="form-control" name="" value="" v-model="sites" placeholder="Enter Sites">

                        </div>
                        <div class="form-group">

                            <input type="text" class="form-control" name="" value="" v-model="image" placeholder="Enter Image URL">

                        </div>
                        <div class="form-group">
                            <button type="submit" class="show-more button-light">Save</button>
                        </div>
                    </form>
                </div>
                <div class="col-md-4">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" width="150px" height="150px" :src="this.image" alt="">
                        <div class="card-body">
                            <p class="card-text txt-light">{{this.name}} {{this.surname}}</p>
                            <h1 v-show="show"></h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
</template>

<script>
import axios from "axios";
import VModal from 'vue-js-modal'

export default {
  name: "CreateArtist",
  data: function() {
    return {
      name: "",
      surname: "",
      profile: "",
      sites: "",
      image:"",
      show: false,
    };
  },
  methods: {
    postNow: function() {
      axios.post("artist", {
        name: this.name,
        surname: this.surname,
        profile: this.profile,
        sites: this.sites,
        image: this.image
      })
      .then(function(response){
          console.log(response);
          })
    
    }
  }
};
</script>

<style>
 .txt-light{
     color:white !important;
 }
</style>