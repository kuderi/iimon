import Vue from "vue";
import Vuex from "vuex";

// VueアプリケーションにVuexを登録する
Vue.use(Vuex);

// Vuexストアをエクスポートする
export default new Vuex.Store({
  // アプリケーションの状態を保持する
  state: {
    leftFruits: ["Apple", "Grape", "Strawberry", "Cherry", "Plum"],
    rightFruits: ["Watermelon", "Banana", "Peach"]
  },
  // 状態を変更するミューテーション
  mutations: {
    moveToRight(state, fruit) {
      state.leftFruits.splice(state.leftFruits.indexOf(fruit), 1);
      state.rightFruits.push(fruit);
    },
    moveToLeft(state, fruit) {
      state.rightFruits.splice(state.rightFruits.indexOf(fruit), 1);
      state.leftFruits.push(fruit);
    }
  },
  // 非同期処理を行い、ミューテーションをコミットするアクション
  actions: {
    moveToRight({ commit }, fruit) {
      commit("moveToRight", fruit);
    },
    moveToLeft({ commit }, fruit) {
      commit("moveToLeft", fruit);
    }
  }
});
