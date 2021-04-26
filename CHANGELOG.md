# Change Log

All notable changes to this project will be documented in this file.

<a name="unreleased"></a>
## [Unreleased]



<a name="v3.0.0"></a>
## [v3.0.0] - 2021-04-26

- feat: Shorten outputs (removing this_) ([#39](https://github.com/terraform-aws-modules/terraform-aws-elb/issues/39))
- chore: update documentation and pin `terraform_docs` version to avoid future changes ([#38](https://github.com/terraform-aws-modules/terraform-aws-elb/issues/38))


<a name="v2.5.0"></a>
## [v2.5.0] - 2021-03-15

- fix: update pre-commit configuration to add validate and tflint ([#35](https://github.com/terraform-aws-modules/terraform-aws-elb/issues/35))
- chore: add ci-cd workflow for pre-commit checks ([#34](https://github.com/terraform-aws-modules/terraform-aws-elb/issues/34))


<a name="v2.4.0"></a>
## [v2.4.0] - 2020-06-19

- feat: Added variable to enable/disable module ([#23](https://github.com/terraform-aws-modules/terraform-aws-elb/issues/23))
- Minor update of README.md - certificate id argument name ([#32](https://github.com/terraform-aws-modules/terraform-aws-elb/issues/32))
- Merge pull request [#31](https://github.com/terraform-aws-modules/terraform-aws-elb/issues/31) from terraform-aws-modules/terraform-provider-githubfile-1584635213365195000
- [ci skip] Create ".chglog/CHANGELOG.tpl.md".
- Merge pull request [#30](https://github.com/terraform-aws-modules/terraform-aws-elb/issues/30) from terraform-aws-modules/terraform-provider-githubfile-1584536634639555000
- Merge pull request [#29](https://github.com/terraform-aws-modules/terraform-aws-elb/issues/29) from terraform-aws-modules/terraform-provider-githubfile-1584536634639568000
- [ci skip] Create ".pre-commit-config.yaml".
- [ci skip] Create ".gitignore".
- Merge pull request [#28](https://github.com/terraform-aws-modules/terraform-aws-elb/issues/28) from terraform-aws-modules/terraform-provider-githubfile-1584536595705590000
- Merge pull request [#26](https://github.com/terraform-aws-modules/terraform-aws-elb/issues/26) from terraform-aws-modules/terraform-provider-githubfile-1584536595707469000
- Merge pull request [#25](https://github.com/terraform-aws-modules/terraform-aws-elb/issues/25) from terraform-aws-modules/terraform-provider-githubfile-1584536595705588000
- [ci skip] Create "Makefile".
- [ci skip] Create "LICENSE".
- [ci skip] Create ".editorconfig".


<a name="v2.3.0"></a>
## [v2.3.0] - 2019-11-04

- Fixed var type for internal


<a name="v2.2.0"></a>
## [v2.2.0] - 2019-08-21

- Allow creation of ELB with and without access_logs (fixed [#21](https://github.com/terraform-aws-modules/terraform-aws-elb/issues/21))


<a name="v2.1.0"></a>
## [v2.1.0] - 2019-07-17

- Updated pre-commit and docs
- Making access_logs field optional ([#20](https://github.com/terraform-aws-modules/terraform-aws-elb/issues/20))


<a name="v2.0.0"></a>
## [v2.0.0] - 2019-06-09

- Updated module for Terraform 0.12 ([#17](https://github.com/terraform-aws-modules/terraform-aws-elb/issues/17))


<a name="v1.4.1"></a>
## [v1.4.1] - 2018-05-22

- Fixed instances output ([#13](https://github.com/terraform-aws-modules/terraform-aws-elb/issues/13))


<a name="v1.4.0"></a>
## [v1.4.0] - 2018-05-16

- Added pre-commit hook to autogenerate terraform-docs ([#11](https://github.com/terraform-aws-modules/terraform-aws-elb/issues/11))


<a name="v1.3.1"></a>
## [v1.3.1] - 2018-05-16

- Fixed [#10](https://github.com/terraform-aws-modules/terraform-aws-elb/issues/10). Wrong type in output
- Fixed [#10](https://github.com/terraform-aws-modules/terraform-aws-elb/issues/10). Wrong type in output


<a name="v1.3.0"></a>
## [v1.3.0] - 2018-05-16

- Fixed outputs of ELB module when resource does not exist


<a name="v1.2.0"></a>
## [v1.2.0] - 2018-03-06

- Renamed count to number_of_instances to be as much forward compatible as possible ([#9](https://github.com/terraform-aws-modules/terraform-aws-elb/issues/9))


<a name="v1.1.0"></a>
## [v1.1.0] - 2018-03-01

- Merge pull request [#8](https://github.com/terraform-aws-modules/terraform-aws-elb/issues/8) from dropped/arn_output
- Add the ARN output
- Merge pull request [#6](https://github.com/terraform-aws-modules/terraform-aws-elb/issues/6) from horsey/master
- - Fixed formatting
- - Fixed formatting
- - Added Known Issues/Limitations section


<a name="v1.0.1"></a>
## [v1.0.1] - 2017-12-11

- Upgraded ec2-instance module example


<a name="v1.0.0"></a>
## v1.0.0 - 2017-09-14

- Added complete code and examples
- Added complete code and examples
- Initial commit


[Unreleased]: https://github.com/terraform-aws-modules/terraform-aws-elb/compare/v3.0.0...HEAD
[v3.0.0]: https://github.com/terraform-aws-modules/terraform-aws-elb/compare/v2.5.0...v3.0.0
[v2.5.0]: https://github.com/terraform-aws-modules/terraform-aws-elb/compare/v2.4.0...v2.5.0
[v2.4.0]: https://github.com/terraform-aws-modules/terraform-aws-elb/compare/v2.3.0...v2.4.0
[v2.3.0]: https://github.com/terraform-aws-modules/terraform-aws-elb/compare/v2.2.0...v2.3.0
[v2.2.0]: https://github.com/terraform-aws-modules/terraform-aws-elb/compare/v2.1.0...v2.2.0
[v2.1.0]: https://github.com/terraform-aws-modules/terraform-aws-elb/compare/v2.0.0...v2.1.0
[v2.0.0]: https://github.com/terraform-aws-modules/terraform-aws-elb/compare/v1.4.1...v2.0.0
[v1.4.1]: https://github.com/terraform-aws-modules/terraform-aws-elb/compare/v1.4.0...v1.4.1
[v1.4.0]: https://github.com/terraform-aws-modules/terraform-aws-elb/compare/v1.3.1...v1.4.0
[v1.3.1]: https://github.com/terraform-aws-modules/terraform-aws-elb/compare/v1.3.0...v1.3.1
[v1.3.0]: https://github.com/terraform-aws-modules/terraform-aws-elb/compare/v1.2.0...v1.3.0
[v1.2.0]: https://github.com/terraform-aws-modules/terraform-aws-elb/compare/v1.1.0...v1.2.0
[v1.1.0]: https://github.com/terraform-aws-modules/terraform-aws-elb/compare/v1.0.1...v1.1.0
[v1.0.1]: https://github.com/terraform-aws-modules/terraform-aws-elb/compare/v1.0.0...v1.0.1
