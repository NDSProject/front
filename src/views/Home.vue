<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png">
    <Channel msg="Welcome to Your Vue.js + TypeScript App"/>
    <Group msg="Welcome to Your Vue.js + TypeScript App"/>
  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue';
import Channel from '@/components/Channel.vue';
import Group from '@/components/Group.vue';

export default defineComponent({
  name: 'Home',
  components: {
    Channel,
    Group,
  },
});
</script>
