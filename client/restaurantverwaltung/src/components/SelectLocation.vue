<template>
  <div class="d-flex justify-content-center align-items-center">
    <!-- Location -->
    <div class="card m-auto mt-5" style="width: 18rem;">
      <img
        src="@/assets/selectLocation/def.jpg"
        class="card-img-top"
        alt="locationName"
      />
      <div class="card-body m-auto">
        <h5 class="card-title">{{ location.name }}</h5>
      </div>
      {{ location }}
    </div>
  </div>
</template>

<script>
export default {
  props: {
    location: { type: Object },
  },
};
</script>

<style></style>
