<template>
  <div id="app">
    <p>{{ message }}</p>
    <p>{{ messaga }}</p>
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      message: "Hello Vuasljfkasklje!",
      messaga: "fart"
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
