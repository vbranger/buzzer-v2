import { fontFamily as _fontFamily } from 'tailwindcss/defaultTheme'

export const content = [
  './public/*.html',
  './app/helpers/**/*.rb',
  './app/javascript/**/*.js',
  './app/views/**/*.{erb,haml,html,slim}'
]
export const theme = {
  borderRadius: {
    'none': '0',
    'sm': '.125rem',
    DEFAULT: '.25rem',
    'lg': '.5rem',
    'full': '9999px',
  },
  extend: {
    fontFamily: {
      sans: ['Lato', ..._fontFamily.sans],
    },
  },
}
export const plugins = [
  require('@tailwindcss/forms'),
  require('@tailwindcss/aspect-ratio'),
  require('@tailwindcss/typography'),
  require('@tailwindcss/container-queries'),
]
