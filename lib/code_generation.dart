import 'package:build/build.dart';
import 'package:code_generation/add_generator.dart';
import 'package:code_generation/multiplier_generator.dart';
import 'package:code_generation/top_level_names_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder topLevelNamesBuilder(BuilderOptions options) => SharedPartBuilder(
      [TopLevelNamesGenerator()],
      'topLevelNames',
    );

Builder multiplierBuilder(BuilderOptions options) => SharedPartBuilder(
      [MultiplierGenerator()],
      'multiplier',
    );

Builder addBuilder(BuilderOptions options) => PartBuilder(
      [AddGenerator()],
      '.add.dart',
      options: options,
    );
