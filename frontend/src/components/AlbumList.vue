<template>
  <div class="media-cards">
    <div class="media-card" v-bind:key="albums" v-for="album in albums">
      <album-view :album=album></album-view>   
    </div>
  </div>
</template>

<script>
  import axios from 'axios'
  import AlbumView from './AlbumView'

export default {
  name: 'AlbumList',
  data () {
    return {
      albums:[]
    }
  },
  created(){
    axios.get('album/all').then( (res) => {
      this.albums=res.data;
      console.log(res);
      })


  },
  components:{AlbumView}

}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
/*h1, h2 {
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
