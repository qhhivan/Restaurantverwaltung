<template>
  <div id="app" class="container">
    
    <SelectLocation v-bind:location="Location[0]" />
    <SelectLocation v-bind:location="Location[2]" />
  </div>
</template>

<script>
import SelectLocation from './components/SelectLocation.vue';

export default {
  name: 'App',
  components: {
    SelectLocation,
  },
  data() {
    return {
      // Location: [
      //   { name: 'Garten', img: '@/assets/selectLocation/def.jpg' },
      //   {
      //     name: 'Wintergarten',
      //     img: '../assets/selectLocation/innen_home.jpg',
      //   },
      //   { name: 'Innen', img: '../assets/selectLocation/def.jpg' },
      // ],
    };
  },
};
</script>

<style></style>
