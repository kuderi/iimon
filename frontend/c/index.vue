<template>
  <!-- メインコンテナー -->
  <div id="container">
    <!-- 左のコンテナー -->
    <left-container />
    <!-- 右のコンテナー -->
    <right-container />
  </div>
</template>
<script>
// VuexからmapStateとmapActionsをインポート
import { mapState, mapActions } from "vuex";
// 左のコンテナーコンポーネント
import leftContainer from "./leftContainer.vue";
// 右のコンテナーコンポーネント
import rightContainer from "./rightContainer.vue";

export default {
  // コンポーネントの登録
  components: {
    leftContainer,
    rightContainer
  },
  // Vuexからデータを取得
  computed: mapState({
    // 左のフルーツ一覧
    leftFruits: state => state.leftFruits,
    // 右のフルーツ一覧
    rightFruits: state => state.rightFruits
  }),
  // Vuexからアクションをマッピング
  methods: mapActions(["moveToLeft", "moveToRight"])
};
</script>