<script setup>
import ArticleEpigraph from "./ArticleEpigraph.vue";
</script>
<template>
    <div class="article-container" :id="article.id">
        <ArticleEpigraph :text="getEpigraphByIndex(article.epigraphs, 0)" :theme="theme.secondary" />
        <div class="article-text" :class="textClasses(theme)">
            <h2 v-html="article.header"></h2>
            <p v-for="p in article.text" :key="p">
                <span v-html="p"></span>
            </p>
        </div>
        <ArticleEpigraph :text="getEpigraphByIndex(article.epigraphs, 1)" :theme="theme.secondary" />
    </div>
</template>
<script>
export default {
    props: ["article", "theme"],
    methods: {
        textClasses: (theme) => {
            return `bg-[${theme.primary.bg}] text-[${theme.primary.text}]`;
        },
        getEpigraphByIndex: (epigraphs, index) => {
            if (!epigraphs) return "";
            return epigraphs[index] ?? "";
        },
    },
};
</script>
