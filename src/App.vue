<script setup>
import TheArticles from "./components/TheArticles.vue";
import TheContent from "./components/TheContent.vue";
import ARTICLES from "./CONTENT";
import THEMES from "./THEMES";
</script>
<template>
    <div class="min-h-screen flex flex-col">
        <TheContent :articles="ARTICLES" />
        <TheArticles :articles="ARTICLES" :themes="THEMES" />
    </div>
</template>
