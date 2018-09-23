<template>
  <div class="media-cards">
    <div class="media-card" v-bind:key="artists" v-for="artist in artists">
      <artist-view :artist=artist></artist-view>   
    </div>
  </div>
</template>

<script>
  import axios from 'axios'
  import ArtistView from './ArtistView'

export default {
  name: 'ArtistList',
  data () {
    return {
      artists:[]
    }
  },
  created(){
    axios.get('artist/all').then( (res) => {
      this.artists=res.data;
      console.log(res);
      })


  },
  components:{ArtistView}

}
</script>