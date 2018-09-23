<template>
        <div class="overview__albums">

                <div class="overview__albums__head">

                  <span class="section-title">Tracks</span>

                  <span class="view-type">

                    <i class="fa fa-list list active"></i>

                    <i class="fa fa-th-large card"></i>

                  </span>

                </div>

                <div class="album">



                  <div class="album__tracks">

                    <div class="tracks">

                      <div class="tracks__heading">

                        <div class="tracks__heading__number">#</div>

                        <div class="tracks__heading__title">Song</div>

                        <div class="tracks__heading__length">

                          <i class="ion-ios-stopwatch-outline"></i>

                        </div>

       

                      </div>

                      <div class="track" v-bind:key="tracks" v-for="(track, index) in tracks">

                        <div class="track__number">{{index + 1}}</div>

                        <div class="track__added">

                          <i class="ion-checkmark-round added"></i>

                        </div>

                        <div class="track__title featured">
                            {{track.fileName}} - {{track.artist.name}} {{track.artist.surname}}</div>

                         <detail-track :track=track></detail-track>

                        <div class="track__length">{{track.length}}</div>

                        

                      </div>

                    </div>

                  </div>

                </div>

              </div>

</template>

<script>
  import axios from 'axios'
  import DetailTrack from './DetailTrack'

export default {
  name: 'TrackList',
  data () {
    return {
      tracks:[]
    }
  },
  created(){
    axios.get('track/all').then( (res) => {
      this.tracks=res.data;
      console.log(res);
      })


  },
  components:{DetailTrack}

}
</script>

<style>
.overview__albums{
  margin-top: 0;
}
</style>