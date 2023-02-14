<template>
  <!-- <img alt="Vue logo" src="./assets/logo.png"> -->
  <!-- <HelloWorld msg="Welcome to Your Vue.js App"/> -->
  <div id ='Container'>
    <leftContainer/>
    <rightContainer/>
  </div>
</template>

<script>
// import HelloWorld from './components/HelloWorld.vue'
import leftContainer from './components/leftContainer.vue'
import rightContainer from './components/rightContainer.vue'

export default {
  name: 'App',
  components: {
    // HelloWorld,
    'leftContainer': leftContainer ,
    'rightContainer': rightContainer
  },
}
</script>

<style scoped>
  /* #app {
    font-family: Avenir, Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: center;
    color: #2c3e50;
    margin-top: 60px;
  } */

  #Container {
    width: 700px;
    margin: 50px auto;
    display: flex;
    justify-content: space-between;
  }

</style>
