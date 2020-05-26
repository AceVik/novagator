library novagator_generator;

import 'package:build/build.dart';
import 'src/generator.dart';

Builder novagatorGeneratorFactory(BuilderOptions options) =>
    novagatorGeneratorFactoryBuilder(
        header: options.config['header'] as String);
