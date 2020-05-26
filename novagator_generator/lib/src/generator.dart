///@nodoc
import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:novagator/novagator.dart';
import 'package:source_gen/source_gen.dart';

class NovagatorGenerator extends GeneratorForAnnotation<ViewPath> {
  @override
  FutureOr<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    if (element is! ClassElement) {
      final friendlyName = element.displayName;
      throw InvalidGenerationSourceError(
        'Generator cannot target `$friendlyName`.',
        todo: 'Remove the [ChopperApi] annotation from `$friendlyName`.',
      );
    }

    return "TODO";
  }
}

Builder novagatorGeneratorFactoryBuilder({String header}) => PartBuilder(
      [NovagatorGenerator()],
      '.novagator.dart',
      header: header,
    );
