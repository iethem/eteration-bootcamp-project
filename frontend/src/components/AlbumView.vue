<template>
<router-link :to="albumLink">
    
    <div class="media-card__image" :style="{ backgroundImage: 'url(' + album.image + ')' }"">
      <i class="ion-ios-play"></i>
    </div>
    <router-link :to="albumLink" class="media-card__footer">{{album.name}}</router-link>
  
</router-link>
</template>

<script>
  export default {
    name: 'AlbumView',
    props: {
      album: { type: Object, required: true }
    },computed: {
      albumLink(){
        console.log(this.album.id);
        return `/albums/${this.album.id}`
      }
    }
  }
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
 /* h1, h2 {
    font-weight: normal;
  }
  ul {
    list-style-type: none;
    padding: 0;
  }
  li {
    list-style: none;
    float: left;
    margin: 20px;
    border-style: solid;
    border-width: 3px;
    border-color: #42b983;
    margin: 13px;
    padding: 10px;
  }
  a {
    color: #42b983;
  }*/
</style>
