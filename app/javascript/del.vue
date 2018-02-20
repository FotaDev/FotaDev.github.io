<template>
  <div id="del">
    <p>{{ message }}</p>
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      message: "Bye"
    }
  }
}
</script>

<style scoped>
p {
  font-size: 20em;
  text-align: left;
  color: red;
}
</style>
