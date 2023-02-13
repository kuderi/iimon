<template>
  <!-- 左コンテナのテンプレート -->
  <div id="left-container">
    <!-- 左ボックス -->
    <div id="left-box">
      <!-- 左側の果物一覧を表示 -->
      <p v-for="fruit in leftFruits" :key="fruit">{{ fruit }}</p>
    </div>
    <!-- 右へ移動ボタン -->
    <button id="left-btn" @click="moveToRight">右へ移動</button>
  </div>
</template>
<script>
import { mapState, mapActions } from "vuex";
// Vuex の mapState, mapActions をインポート

export default {
  computed: mapState({
    // leftFruits の状態を Vuex の state から取得
    leftFruits: state => state.leftFruits
  }),
  methods: mapActions(["moveToRight"])
  // moveToRight アクションを Vuex の actions から取得
};
</script>