# # Sometimes it's a README fix, or something like that - which isn't relevant for
# # including in a project's CHANGELOG for example
# declared_trivial = github.pr_title.include? "#trivial"
#
# # Make it more obvious that a PR is a work in progress and shouldn't be merged yet
# warn("PR is classed as Work in Progress") if github.pr_title.include? "[WIP]"
#
# # Warn when there is a big PR
# warn("Big PR") if git.lines_of_code > 500
#
# # Generate report
# report = xcov.produce_report(
#   scheme: 'CI-test',
#   workspace: "CI-test.xcworkspace",
#   minimum_coverage_percentage: 10.0
# )
# xcov.output_report(report)
#
# swiftlint.config_file = '.swiftlint.yml'
# swiftlint.lint_files inline_mode: true

# Sometimes it's a README fix, or something like that - which isn't relevant for
# including in a project's CHANGELOG for example
# declared_trivial = github.pr_title.include? "#trivial"

# Make it more obvious that a PR is a work in progress and shouldn't be merged yet
# warn("PR is classed as Work in Progress") if github.pr_title.include? "[WIP]"

# Warn when there is a big PR
warn("Big PR") if git.lines_of_code > 500

# # Don't let testing shortcuts get into master by accident
# fail("fdescribe left in tests") if `grep -r fdescribe specs/ `.length > 1
# fail("fit left in tests") if `grep -r fit specs/ `.length > 1

# Run SwiftLint on diff
def run_lint()
  swiftlint.config_file = '.swiftlint.yml'
  swiftlint.lint_files inline_mode: true
end

# Xcode summary
def run_xcode_summary()
  xcprofiler.inline_mode = true
  xcprofiler.report 'CI-test'

  xcodebuild.json_file = "./fastlane/reports/xcpretty-json-formatter-results.json"
  xcodebuild.parse_warnings # returns number of warnings
  xcodebuild.parse_errors # returns number of errors
  xcodebuild.perfect_build # returns a bool indicating if the build was perfect
end

# Test Coverage report
def run_test_coverage_report()
  slather.configure("./CI-test.xcodeproj", "CI-test", options: {
  workspace: './CI-test.xcworkspace'})
  slather.notify_if_coverage_is_less_than(minimum_coverage: 20)
  slather.notify_if_modified_file_is_less_than(minimum_coverage: 60)
  slather.show_coverage
end

# MAIN
run_lint()
# run_xcode_summary()
run_test_coverage_report()
