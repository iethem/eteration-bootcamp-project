<template>
    <div class="track__explicit">

        <span class="label"><router-link :to="albumLink">Details</router-link></router-link></span>

    </div>
</template>

<script>
  export default {
    name: 'DetailAlbum',
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