<template>
  <div id="SerachResultBox" @click="selectItem(item.id)">
    {{ item.id }}
    {{ item.name }}
  </div>
</template>

<script>
export default {
  name: "SerachResultBox",
  emits: ["selectId"],
  props: {
    item: Object,
  },
  methods: {
    selectItem(id) {
      this.$emit("selectId", id);
    },
  },
};
</script>

<style lang="scss" scoped>
#SerachResultBox {
  box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
  padding: 5px;
  transition: 250ms;
  width: 100%;
  &:hover {
    background: #1686db;
    color: #fcfcfc;
  }
}
</style>