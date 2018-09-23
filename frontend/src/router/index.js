import Vue from 'vue'
import Router from 'vue-router'
import AlbumList from '@/components/AlbumList'
import Album from '@/components/Album'
import ArtistList from '@/components/ArtistList'
import Artist from '@/components/Artist'
import TrackList from '@/components/TrackList'
import Track from '@/components/Track'
import CreateTrack from '@/components/CreateTrack'
import CreateArtist from '@/components/CreateArtist'
import CreateAlbum from '@/components/CreateAlbum'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/albums',
      name: 'AlbumList',
      component: AlbumList
    },
    {
      path: '/albums/:id',
      name: 'Album',
      component: Album
    },
    {
      path: '/artists',
      name: 'ArtistList',
      component: ArtistList
    },
    {
      path: '/artists/:id',
      name: 'Artist',
      component: Artist 
    },
    {
      path: '/tracks',
      name: 'TrackList',
      component: TrackList
    },
    {
      path: '/tracks/:id',
      name: 'Track',
      component: Track
    },
    {
      path: '/artist/create',
      name: 'CreateArtist',
      component: CreateArtist
    },
    {
      path: '/album/create',
      name: 'CreateAlbum',
      component: CreateAlbum
    },
    {
      path: '/track/create',
      name: 'CreateTrack',
      component: CreateTrack
    }
  ]
})
