<template>
             <div class="overview__albums">

                <div class="overview__albums__head">

                  <span class="section-title">Track</span>

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

                      <div class="album__year">{{artist.name}} {{artist.surname}}</div>

                      <div class="album__name">{{track.fileName}}</div>

                      <div class="album__year">{{track.length}} </div>
                    
                       <div class="album__year">{{album.genre}} </div>

                       <div class="album__year">{{album.releaseYear}} </div>

                       <div class="album__year">{{album.label}} </div>
                    </div>

                  </div>

                  <div class="album__tracks">

              <div class="tracks__heading">

                        <div class="tracks__heading__number">#</div>

                        <div class="tracks__heading__title">Album</div>

                        

                          

                        </div>

                      </div>
                      <div class="tracks" >

                          <div class="track">
      
                            <div class="track__art">
      
                              <img :src="album.image" :alt="album.name" />
      
                            </div>
      
                            <div class="track__number">1</div>
      
                            <div class="track__added">
      
                              <i class="ion-checkmark-round added"></i>
      
                            </div>
      
                            <div class="track__title">{{album.name}}</div>
      
                           <detail-album :album=album></detail-album>
      
                            <div class="track__plays"></div>
      
                          </div>
      
                        </div>
      

                  </div>

                </div>

              </div>
</template>

<script>
import axios from "axios";
import DetailAlbum from "./DetailAlbum"
export default {
  name: "Track",
  data() {
    return {
      track: {},
      album: {},
      artist: {}
    };
  },
  created() {
    console.log("ID...." + this.$route.params.id);
    axios.get(`track/${this.$route.params.id}`).then(res => {
      this.track = res.data;
      this.album = this.track.album;
      this.artist = this.track.artist;
    });
  },
  components:{DetailAlbum}
};
</script>

<style>
.overview__albums{
  margin-top: 0;
}

.tracks__heading__title{
  margin-left:120px;
}
</style>