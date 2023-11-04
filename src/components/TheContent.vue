<script setup></script>
<template>
    <div class="flex flex-col text-center h-screen">
        <h2>Содержание</h2>
        <div class="flex flex-col">
            <h3 v-for="article in articles" :key="article">
                <a v-bind:href="'#' + article.id">
                    {{ article.unformattedHeader ?? article.header }}
                </a>
            </h3>
        </div>
    </div>
</template>
<script>
export default {
    props: ["articles"],
};
</script>
