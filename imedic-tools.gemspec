# frozen_string_literal: true

require_relative "lib/imedic/tools/version"

Gem::Specification.new do |spec|
  spec.name = "imedic-tools"
  spec.version = Imedic::Tools::VERSION
  spec.authors = ["Akinori Musha"]
  spec.email = ["knu@idaemons.org"]

  spec.summary = "Japanese input dictionary word-list conversion tools"
  spec.description = "Command-line tools that convert Japanese input dictionary word-list files between common formats."
  spec.homepage = "https://github.com/knu/imedic-tools"
  spec.license = "BSD-2-Clause"
  spec.required_ruby_version = ">= 3.1"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/knu/imedic-tools/issues",
    "changelog_uri" => "https://github.com/knu/imedic-tools/releases",
    "homepage_uri" => spec.homepage,
  }

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0")
  end
  spec.bindir = "exe"
  spec.executables = ["atok2kotoeri", "atok2msime", "msime2atok"]
  spec.require_paths = ["lib"]
end
