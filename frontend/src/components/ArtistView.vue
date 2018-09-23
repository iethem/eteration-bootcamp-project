<template>
<router-link :to="artistLink">
    
    <div class="media-card__image" :style="{ backgroundImage: 'url(' + artist.image + ')' }"">
      <i class="ion-ios-play"></i>
    </div>
    <router-link :to="artistLink" class="media-card__footer">{{artist.name}} {{artist.surname}}</router-link>
  
</router-link>
</template>

<script>
  export default {
    name: 'ArtistView',
    props: {
      artist: { type: Object, required: true }
    },computed: {
      artistLink(){
        console.log(this.artist.id);
        return `/artists/${this.artist.id}`
      }
    }
  }
</script>