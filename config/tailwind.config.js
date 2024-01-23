import { fontFamily as _fontFamily } from 'tailwindcss/defaultTheme'

export const content = [
  './public/*.html',
  './app/helpers/**/*.rb',
  './app/javascript/**/*.js',
  './app/views/**/*.{erb,haml,html,slim}',
  './app/components/**/*.{erb,haml,html,slim}'
]
export const theme = {
  borderRadius: {
    'none': '0',
    'sm': '.125rem',
    DEFAULT: '.25rem',
    'lg': '.5rem',
    'full': '9999px',
  },
  borderWidth: {
    DEFAULT: '1px',
    '0': '0',
    '2': '2px',
    '3': '3px',
    '4': '4px',
    '6': '6px',
    '8': '8px',
  },
  extend: {
    colors: {
      primary: 'linear-gradient(90deg, #EB5F6F 0%, #FAC171 100%)',
      secondary: 'linear-gradient(90deg, #A0CC8A 0%, #3DBEEF 100%)',
      'alt-secondary': '#49BEE2',
      'outline-secondary': 'linear-gradient(#fff, #fff), radial-gradient(circle at top left, #A0CC8A, #3DBEEF)',
      red: '#EB5F6F',
      yellow: '#FAC171',
      green: '#A0CC8A',
      blue: '#3DBEEF'
    },
    fontFamily: {
      sans: ['Lato', ..._fontFamily.sans],
    },
    backgroundImage: (theme) => ({
      'gradient-primary': `${theme('colors.primary')}`,
      'gradient-secondary': `${theme('colors.secondary')}`,
      'gradient-outline-secondary': `${theme('colors.outline-secondary')}`,
    }),
    backgroundClip: {
      'test': 'padding-box, border-box',
    },
  },
}
export const plugins = [
  require('@tailwindcss/forms'),
  require('@tailwindcss/aspect-ratio'),
  require('@tailwindcss/typography'),
  require('@tailwindcss/container-queries'),
]
