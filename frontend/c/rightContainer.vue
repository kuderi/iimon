<template>
    <!-- 右コンテナのテンプレート -->
    <div id="right-container">
      <!-- 右ボックス -->
      <div id="right-box">
        <!-- 右側の果物を表示するためのループ -->
        <p v-for="fruit in rightFruits" :key="fruit">{{ fruit }}</p>
      </div>
      <!-- 左へ移動ボタン -->
      <button id="right-btn" @click="moveToLeft">左へ移動</button>
    </div>
  </template>
  <script>
  import { mapState, mapActions } from "vuex";
  // Vuex の mapState, mapActions をインポート
  export default {
    computed: mapState({
     // rightFruits の状態を Vuex の state から取得
      rightFruits: state => state.rightFruits
    }),
    methods: mapActions(["moveToLeft"])
    // moveToLeft アクションを Vuex の actions から取得
  };
  </script>