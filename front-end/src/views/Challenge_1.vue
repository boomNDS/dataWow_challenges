<template>
  <div class="container">
    <div class="row justify-content-center m-4">
      <div class="col-5">
        <input
          type="text"
          class="form-control"
          placeholder="Serach..."
          v-model="serachInput"
          @input="onChange"
        />
        <div class="row" v-show="isShow">
          <div class="col-12" v-for="item in searchResult" :key="item.id">
            <SerachResultBox
              :item="item"
              @click="setResult"
              @selectId="selectId"
            />
          </div>
        </div>
      </div>
      <div class="row justify-content-center m-4 text-center">
        <div class="col-5">
          <p class="fw-bold">{{ selectDisplayId }}</p>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import SerachResultBox from "@/components/SerachResultBox";
export default {
  components: {
    SerachResultBox,
  },
  data() {
    return {
      serachInput: "",
      selectDisplayId: "",
      isShow: false,
      items: [
        {
          id: 1,
          name: "อื่นๆ",
          label: "อื่นๆ",
          isLeaf: true,
          catPropertyModels: [],
          rules: {},
          firstLevelCatId: 999999,
          lscSetId: 0,
          variationCat: false,
          active: true,
        },
        {
          id: 2,
          name: "ห้องน้ำ",
          label: "อื่นๆ",
          isLeaf: true,
          catPropertyModels: [],
          rules: {},
          firstLevelCatId: 999999,
          lscSetId: 0,
          variationCat: false,
          active: true,
        },
      ],
    };
  },
  computed: {
    searchResult() {
      return this.items.filter((item) => {
        let searchText = this.serachInput.toLowerCase();
        let isMatchingId = item.id == searchText ? true : false;
        let isMatchingName = item.name.toLowerCase().includes(searchText);
        return isMatchingId || isMatchingName;
      });
    },
  },
  methods: {
    onChange() {
      this.isShow = true;
    },
    setResult() {
      this.isShow = false;
    },
    selectId(id) {
      this.selectDisplayId = id;
    },
  },
};
</script>
<style lang="scss" scoped>
</style>
