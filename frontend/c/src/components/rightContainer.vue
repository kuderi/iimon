<template>
    <div id="right">
      <div id="box">
        <p>Apple</p>
        <p>Grape</p>
        <p>Strawberry</p>
        <p>Cherry</p>
        <p>Plum</p>
      </div>
      <button>左へ移動</button>
    </div>
</template>

<script>
//   import { mapState, mapActions } from "vuex";
//   // Vuex の mapState, mapActions をインポート
  
//   export default {
//     computed: mapState({
//       // leftFruits の状態を Vuex の state から取得
//       leftFruits: state => state.leftFruits
//     }),
//     methods: mapActions(["moveToRight"])
//     // moveToRight アクションを Vuex の actions から取得
//   };
</script>

<style scoped>
#right {
    width: 300px;
    height: 500px;
}

#box {
    width: 100%;
    height: 100%;
    border: 1px solid navy;
    display: inline-block;
    text-align: center;
}
p {
    width: 80%;
    border-bottom: solid 1px navy;
    margin: 0 auto;
    line-height: 50px;
    display: block;
}

button {
    background-color: navy;
    color: white;
    margin: 30px auto;
    height: 40px;
    width: 150px;
    font-size: 16px;
    cursor: pointer;
    display: block;
    border: none;
}
</style>