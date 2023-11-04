<script setup></script>
<template>
    <div class="flex flex-col">
        <h2>Содержание</h2>
        <div class="flex flex-col">
            <h3 v-for="article in articles" :key="article">
                <a v-bind:href="'#' + article.id">
                    {{ article.headerUnformatted }}
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
