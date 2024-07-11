// @type {import('tailwindcss').Config}
module.exports = {
    content: ["./*.{html,js}"],
    theme: {
        fontFamily: {
            gta: ["GTA Russian"],
            monospace: "monospace",
        },
        extend: {
            screens: {
                ssm: "250px",
            },
        },
    },
    plugins: [],
};
