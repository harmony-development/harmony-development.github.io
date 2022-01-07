const colors = require("windicss/colors");

module.exports = {
  mode: "jit",
  purge: ["layouts/**/*.html"],
  darkMode: "media", // or 'media' or 'class'
  theme: {
    extend: {
      fontFamily: {
        sans: ["Roboto", "Arial", "sans-serif"],
        header: ["Manrope", "Noto Sans", "Roboto", "Arial", "sans-serif"],
      },
      colors: {
        redish: "#E93D58",
        orangish: "#EF973C",
        blueish: "#3DAEE9",
        tealish: "#00D485",
        dark: colors.dark,
        light: colors.light,
      },
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
};
