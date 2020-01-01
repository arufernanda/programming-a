module.exports = {
  env: {
    browser: true,
    es6: true,
  },
  extends: [
    'airbnb-base',
  ],
  globals: {
    Atomics: 'readonly',
    SharedArrayBuffer: 'readonly',
  },
  parserOptions: {
    ecmaVersion: 2018,
    sourceType: 'module',
  },
  rules: {
    'no-undef': 'off',
    'no-console': 'off',
    'no-restricted-syntax': 'off',
    'prefer-arrow-callback': 'off',
    'func-names': 'off',
    'guard-for-in': 'off'
  },
};
