// Docs https://tenner-joshua.gitbook.io/as-pect/cli-configuration

module.exports = {
  include: ["assembly/__tests__/**/*.spec.ts"],
  add: ["assembly/__tests__/**/*.include.ts"],
  flags: {
    "--runtime": ["stub"]
  },
  disclude: [/node_modules/],
  imports: {},
  performance: {
    /** Enable performance statistics gathering for every test. */
    enabled: false,
    /** Set the maximum number of samples to run for every test. */
    maxSamples: 10000,
    /** Set the maximum test run time in milliseconds for every test. */
    maxTestRunTime: 2000,
    /** Report the median time in the default reporter for every test. */
    reportMedian: true,
    /** Report the average time in milliseconds for every test. */
    reportAverage: true,
    /** Report the standard deviation for every test. */
    reportStandardDeviation: false,
    /** Report the maximum run time in milliseconds for every test. */
    reportMax: false,
    /** Report the minimum run time in milliseconds for every test. */
    reportMin: false,
  },
  outputBinary: false
};
