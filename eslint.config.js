const js = require("@eslint/js");
const globals = require("globals");

module.exports = [
  // md5.js is a third-party library; don't lint vendored code
  { ignores: ["js/md5.js", "node_modules/**"] },
  js.configs.recommended,
  {
    files: ["js/**/*.js"],
    languageOptions: {
      ecmaVersion: 2022,
      sourceType: "script",
      globals: {
        ...globals.browser,
        md5: "readonly"
      }
    },
    rules: {
      // Functions are called from HTML onclick attributes, so top-level
      // declarations look unused to ESLint. Only check local variables.
      "no-unused-vars": ["error", { vars: "local", args: "after-used" }],
      eqeqeq: "error",
      "no-var": "error",
      "prefer-const": "error"
    }
  }
];
