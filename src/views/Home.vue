<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png">
    <Channel msg="Welcome to Your Vue.js + TypeScript App"/>
    <Group msg="Welcome to Your Vue.js + TypeScript App"/>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import Channel from '@/components/Channel.vue';
import Group from '@/components/Group.vue';

@Component({
  components: {
    Channel,
    Group,
  },
})
export default class Home extends Vue {}
</script>
