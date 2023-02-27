module.exports = {
  extends: ['@affinidi/eslint-config', 'plugin:import/typescript'],
  parserOptions: { project: ['tsconfig.json'] },
  env: {
    jest: true,
    browser: true,
  },
  root: true,
  rules: {
    'import/extensions': 'off',
    'import/no-cycle': ['error', { maxDepth: Infinity }],
    '@typescript-eslint/no-explicit-any': 'off', 
  },
  overrides: [
    {
      files: ['*.ts', '*.tsx'],
      rules: {
        'no-undef': 'off',
      },
    },
  ],
  ignorePatterns: ["src/index.tsx"]
}
