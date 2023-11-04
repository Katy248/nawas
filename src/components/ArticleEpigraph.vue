<template>
    <div class="article-epigraph" :class="getClasses(theme)">
        <span>
            {{ text }}
        </span>
    </div>
</template>
<script>
export default {
    props: ["text", "theme"],
    methods: {
        getClasses: (theme) => {
            return `bg-[${theme.bg}] text-[${theme.text}]`;
        },
    },
};
</script>
