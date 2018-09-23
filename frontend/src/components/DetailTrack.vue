<template>
    <div class="track__explicit">

        <span class="label"><router-link :to="trackLink">Details</router-link></router-link></span>

    </div>
</template>

<script>
  export default {
    name: 'DetailTrack',
    props: {
      track: { type: Object, required: true }
    },computed: {
      trackLink(){
        console.log(this.track.id);
        return `/tracks/${this.track.id}`
      }
    }
  }
</script>