import forms from '@tailwindcss/forms';
import typography from '@tailwindcss/typography';
const plugin = require('tailwindcss/plugin');
const flowbite = require('flowbite/plugin');


/** @type {import('tailwindcss').Config} */
export default {
    content: [
        './node_modules/preline/dist/*.js',
        './vendor/laravel/framework/src/Illuminate/Pagination/resources/views/*.blade.php',
        './vendor/laravel/jetstream/**/*.blade.php',
        './storage/framework/views/*.php',
        './resources/views/**/*.blade.php',
        './resources/js/**/*.js',
        './resources/js/**/*.jsx',
        './node_modules/flowbite/**/*.js'
    ],
    darkMode: 'class',
    theme: {
        extend: {
            colors: {
                'custom-gray': '#F8F8F8',
                'custom-white': '#FFFFFF',
                'custom-border': 'rgba(21, 41, 76, 0.4)', // Defin
            },
            // Añadir el gradiente personalizado
            backgroundImage: {
                'custom-gradient': 'linear-gradient(to bottom, #F8F8F8 100%, #FFFFFF 100%)',
            },

            fontFamily: {
                PlusJakartaSans_Bold: ["PlusJakartaSans_Bold"],
                PlusJakartaSans_Medium: ["PlusJakartaSans_Medium"],
                PlusJakartaSans_Regular: ["PlusJakartaSans_Regular"],
                PlusJakartaSans_Semibold: ["PlusJakartaSans_Semibold"],
            },

            screens: {
                xs: '320px',
                "2xs": "420px",
                "3xs": "520px",
                sm: "640px",
                md: "768px",
                "2md": "850px",
                lg: "1024px",
                xl: "1280px",
                "2xl": "1536px",
                "3xl": "1650px",

            },
            colors: {
                azulboost: '#006BF6',
            }


        },
    },
    variants: {
        extend: {
            opacity: ['focus-within'],
        },
    },
    plugins: [
        forms,
        typography,
        flowbite,
        // add custom variant for expanding sidebar
        plugin(({ addVariant, e }) => {
            addVariant('sidebar-expanded', ({ modifySelectors, separator }) => {
                modifySelectors(({ className }) => `.sidebar-expanded .${e(`sidebar-expanded${separator}${className}`)}`);
            });
        }),
        
    ],
};
