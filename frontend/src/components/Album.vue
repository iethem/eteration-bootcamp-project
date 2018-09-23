<template>
       <div class="overview__albums">

                <div class="overview__albums__head">

                  <span class="view-type">

                    <i class="fa fa-list list active"></i>

                    <i class="fa fa-th-large card"></i>

                  </span>

                </div>

                <div class="album">

                  <div class="album__info">

                    <div class="album__info__art">

                      <img :src="album.image" :alt="album.name" />

                    </div>

                    <div class="album__info__meta">

                      <div class="album__year">{{album.releaseYear}}</div>

                      <div class="album__name">{{album.name}}</div>

                      <div class="album__actions">

                        

                      </div>

                    </div>

                  </div>

                  <div class="album__tracks">

                    <div class="tracks" >

                      <div class="tracks__heading">

                        <div class="tracks__heading__number">#</div>

                        <div class="tracks__heading__title">Song</div>

                        <div class="tracks__heading__length">

                          <i class="ion-ios-stopwatch-outline"></i>

                        </div>

                      </div>

                      <div class="track" v-bind:key="tracks" v-for="(track, index) in tracks">
                        <div class="track__number">{{index + 1 }}</div>

                        <div class="track__added">

                            <i class="ion-checkmark-round added"></i>

                        </div>

                         <div class="track__title">{{track.fileName}}</div>

                          <detail-track :track=track></detail-track>
    
    <div class="track__length">{{track.length}}</div>

                      </div>


                    </div>

                  </div>


                </div>

              </div>
</template>





<script>
import axios from "axios";
import DetailTrack from "./DetailTrack"
export default {
  name: "Album",
  data() {
    return {
      album: {},
      tracks: []
    };
  },
  created() {
    console.log("ID...." + this.$route.params.id);
    axios.get(`album/${this.$route.params.id}`).then(res => {
      this.album = res.data;
      this.tracks = this.album.trackList;
    });
  },
  components:{DetailTrack}
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style>

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
} */
</style>
