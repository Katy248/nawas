<script setup>
import Article from "./Article.vue";
</script>

<template>
    <div class="flex flex-col flex-grow">
        <div v-for="article in articles" :key="article" class="flex-grow">
            <Article :article="article" :theme="getTheme(articles, themes, article)"></Article>
        </div>
    </div>
</template>
<script>
export default {
    props: ["articles", "themes"],
    methods: {
        getTheme: (articles, themes, article) => {
            let index = articles.indexOf(article);
            console.log(index);
            return themes[index] ?? themes[0];
        },
    },
};
</script>
