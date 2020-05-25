/*
 * Copyright 2019 Marco Gomiero
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'package:flutter/material.dart';
import 'package:friends_tournament/src/bloc/setup_bloc.dart';

class SetupBlocProvider extends InheritedWidget {
  final SetupBloc setupBloc;

  SetupBlocProvider({Key key, SetupBloc setupBloc, Widget child})
      : setupBloc = setupBloc ?? SetupBloc(),
        super(key: key, child: child);

  // If returns true, updates all the depends elements
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static SetupBloc of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(SetupBlocProvider)
              as SetupBlocProvider)
          .setupBloc;
}