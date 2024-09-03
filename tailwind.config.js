/** @type {import('tailwindcss').Config} */
export default {
  content: ["./src/**/*.{html,svelte,js,ts}"],
  plugins: [require("daisyui")],
  daisyui: {
    themes: [
      {
        light: {
          primary: "#ff001f",
          "primary-focus": "#f73b51",
          "primary-content": "#ffffff",

          secondary: "#000000",
          "secondary-focus": "#171717",
          "secondary-content": "#ffffff",

          accent: "#37cdbe",
          "accent-focus": "#2ba69a",
          "accent-content": "#ffffff",

          neutral: "#3b424e",
          "neutral-focus": "#2a2e37",
          "neutral-content": "#ffffff",

          "base-100": "#ffffff",
          "base-200": "#f9fafb",
          "base-300": "#ced3d9",
          "base-content": "#1e2734",

          info: "#1c92f2",
          success: "#22c55e",
          warning: "#ff9900",
          error: "#ff5724",

          "--rounded-box": "0.25rem",
          "--rounded-btn": "0.25rem",
          "--rounded-badge": "0.25rem",

          "--animation-btn": ".2s",
          "--animation-input": ".2s",

          "--btn-text-case": "",
          "--navbar-padding": ".5rem",
          "--border-btn": "0",
        },
      },
    ],
  },
};

