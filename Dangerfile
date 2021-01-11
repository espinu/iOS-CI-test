# Sometimes it's a README fix, or something like that - which isn't relevant for
# including in a project's CHANGELOG for example
declared_trivial = github.pr_title.include? "#trivial"

# Make it more obvious that a PR is a work in progress and shouldn't be merged yet
warn("PR is classed as Work in Progress") if github.pr_title.include? "[WIP]"

# Warn when there is a big PR
warn("Big PR") if git.lines_of_code > 500

# Generate report
report = xcov.produce_report(
  scheme: 'CI-test',
  workspace: "CI-test.xcworkspace",
  minimum_coverage_percentage: 10.0
)
xcov.output_report(report)

swiftlint.config_file = '.swiftlint.yml'
swiftlint.lint_files inline_mode: true
