xcprofiler.report 'CI-test'

swiftlint.config_file = '.swiftlint.yml'
swiftlint.max_num_violations = 20
swiftlint.lint_files inline_mode: true

# Generate report
report = xcov.produce_report(
  scheme: 'CI-test',
  exclude_targets: 'CI-test.app',
  minimum_coverage_percentage: 50
)
# Post markdown report
xcov.output_report(report)
