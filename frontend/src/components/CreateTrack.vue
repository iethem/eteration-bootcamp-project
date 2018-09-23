<template>
<div class="overview__albums">

                <div class="overview__albums__head">

                  <span class="section-title">Create a Track</span>

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
    
    <input type="text" class="form-control" name="" value="" v-model="fileName" placeholder="Enter Track Name">
    
  </div>

  <div class="form-group">
    
    
    <input type="text" class="form-control" name="" value="" v-model="length" placeholder="Enter Track Length">
  </div>

  <div class="form-group">
    
    <input type="text" class="form-control" name="" value="" v-model="lyric" placeholder="Enter Lyric">
    
  </div>

  


  <div class="form-group">
      <label class="txt-light" for="exampleFormControlSelect2">Select an Album</label>
      <select  class="form-control" v-model="selected">
        <option disabled value="">Please select one</option>        
        <option v-for="(album, name) in albums" :value="album">{{ album.name }}</option>
        
        </select>

       
  </div>

 <div class="form-group">
  <button type="submit"  class="show-more button-light">Save</button>
       </div>   
       </form>       
        </div>
                 <div class="col-md-4">
                     <!-- <div class="card" style="width: 18rem;">
  <img class="card-img-top" width="150px" height="150px" :src="this.image" alt="">
  <div class="card-body">
    <p class="card-text txt-light">{{this.name}} - {{this.releaseYear}}</p>
    <p class="card-text txt-light">{{this.price}}</p>
    <p class="card-text txt-light">{{this.country}}</p>
    <p class="card-text txt-light">{{this.label}}</p>
    <p class="card-text txt-light">{{this.genre}}</p>

  </div>
</div> -->
                 </div>
</div>
  </div>
  </div>
           
</div>
</template>

<script>
import axios from "axios";

export default {
  name: "CreateTrack",
  data: function() {
    return {
      fileName: "",
      length: "",
      lyric: "",
      selected:"",
      show: false,
      albums:[]
    };
  },created(){
    axios.get('album/all').then( (res) => {
      this.albums=res.data;
      console.log(res);
      })
  },
  methods: {
    postNow: function() {
      axios.post("track",{
      fileName: this.fileName,
      lyric: this.lyric,
      length: this.length,
      album:{id:this.selected.id},
      artist:{id: this.selected.artist.id}      
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