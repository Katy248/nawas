// @type {import('tailwindcss').Config}
module.exports = {
    content: ["./*.{html,js}", "./src/**/*.{js,vue}"],
    theme: {
        fontFamily: {
            gta: ["GTA Russian"],
        },
        extend: {},
    },
    safelist: ["bg-[#4f4f59]", "text-[#dbd1cf]", "bg-[#68a699]", "text-[#8979c4]"],
    plugins: [],
};
