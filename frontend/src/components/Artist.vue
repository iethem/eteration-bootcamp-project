<template>
             <div class="overview__albums">

                <div class="overview__albums__head">

                  <span class="section-title">Artist</span>

                  <span class="view-type">

                    <i class="fa fa-list list active"></i>

                    <i class="fa fa-th-large card"></i>

                  </span>

                </div>

                <div class="album">

                  <div class="album__info">

                    <div class="album__info__art">

                      <img :src="artist.image" :alt="artist.name" />

                    </div>

                    <div class="album__info__meta">

                      <div class="album__year">{{artist.profile}} </div>

                      <div class="album__name">{{artist.name}} {{artist.surname}} </div>

                    </div>

                  </div>

                  <div class="album__tracks">

              <div class="tracks__heading">

                        <div class="tracks__heading__number">#</div>

                        <div class="tracks__heading__title">Album</div>

                        <div class="tracks__heading__length">

                          <i class="ion-ios-albums-outline"></i>

                        </div>

                      </div>
                      <div class="tracks" v-bind:key="albums" v-for="(album, index) in albums">

                          <div class="track">
      
                            <div class="track__art">
      
                              <img :src="album.image" :alt="album.name" />
      
                            </div>
      
                            <div class="track__number">{{index + 1}}</div>
      
                            <div class="track__added">
      
                              <i class="ion-checkmark-round added"></i>
      
                            </div>
      
                            <div class="track__title">{{album.name}}</div>
      
                           <detail-album :album=album></detail-album>
      
                            <div class="track__plays">{{album.trackList.length}}</div>
      
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
  name: "Artist",
  data() {
    return {
      artist: {},
      albums: []
    };
  },
  created() {
    console.log("ID...." + this.$route.params.id);
    axios.get(`artist/${this.$route.params.id}`).then(res => {
      this.artist = res.data;
      this.albums = this.artist.albumList;
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