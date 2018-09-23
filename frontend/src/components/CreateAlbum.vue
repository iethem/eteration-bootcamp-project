<template>
<div class="overview__albums">

                <div class="overview__albums__head">

                  <span class="section-title">Create an Album</span>

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
    
    <input type="text" class="form-control" name="" value="" v-model="name" placeholder="Enter Album Name">
    
  </div>

  <div class="form-group">
    
    
    <input type="text" class="form-control" name="" value="" v-model="releaseYear" placeholder="Enter Album Release Year">
  </div>

  <div class="form-group">
    
    <input type="text" class="form-control" name="" value="" v-model="price" placeholder="Enter Album Price">
    
  </div>

  <div class="form-group">
    
    <input type="text" class="form-control" name="" value="" v-model="country" placeholder="Enter Country">
    
  </div>
  <div class="form-group">
    
    
    <input type="text" class="form-control" name="" value="" v-model="label" placeholder="Enter Label">
  </div>
    <div class="form-group">
    
    <input type="text" class="form-control" name="" value="" v-model="genre" placeholder="Enter Genre">
    
  </div>
      <div class="form-group">
    
    <input type="text" class="form-control" name="" value="" v-model="image" placeholder="Enter Image URL">
    
  </div>

  <div class="form-group">
      <label class="txt-light" for="exampleFormControlSelect2">Select an Artist</label>
      <select  class="form-control" v-model="selected">
        <option disabled value="">Please select one</option>        
        <option v-for="(artist, name) in artists" :value="artist.id">{{ artist.name }} {{artist.surname}}</option>
        </select>
        {{selected}}
  </div>


 <div class="form-group">
  <button type="submit"  class="show-more button-light">Save</button>
       </div>   
       </form>       
        </div>
                 <div class="col-md-4">
                     <div class="card" style="width: 18rem;">
  <img class="card-img-top" width="150px" height="150px" :src="this.image" alt="">
  <div class="card-body">
    <p class="card-text txt-light">{{this.name}} - {{this.releaseYear}}</p>
    <p class="card-text txt-light">{{this.price}}</p>
    <p class="card-text txt-light">{{this.country}}</p>
    <p class="card-text txt-light">{{this.label}}</p>
    <p class="card-text txt-light">{{this.genre}}</p>

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

export default {
  name: "CreateArtist",
  data: function() {
    return {
      price: "",
      name: "",
      country: "",
      label: "",
      releaseYear:"",
      genre:"",
      image:"",
      selected:"",
      show: false,
      artists:[]
    };
  },created(){
    axios.get('artist/all').then( (res) => {
      this.artists=res.data;
      console.log(res);
      })
  },
  methods: {
    postNow: function() {
      axios.post("album",{
      price: this.price,
      name: this.name,
      country: this.country,
      label: this.label,
      releaseYear:this.releaseYear,
      genre:this.genre,
      image:this.image,
      artist:{id:this.selected}
      } )
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