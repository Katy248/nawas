<script setup>
import Article from "./Article.vue";
</script>

<template>
    <div class="flex flex-col flex-grow">
        <div v-for="article in articles" :key="article" class="flex-grow">
            <Article :article="article" :theme="themes[0]"></Article>
        </div>
    </div>
</template>
<script>
export default {
    props: ["articles", "themes"],
};
</script>
