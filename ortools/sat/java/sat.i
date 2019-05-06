// Copyright 2010-2018 Google LLC
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

%include "stdint.i"

%include "ortools/base/base.i"

%include "ortools/util/java/proto.i"
%include "ortools/util/java/vector.i"

%{
#include "ortools/sat/cp_model.pb.h"
#include "ortools/sat/sat_parameters.pb.h"
#include "ortools/sat/swig_helper.h"
#include "ortools/util/sorted_interval_list.h"
%}

typedef int64_t int64;
typedef uint64_t uint64;

%module(directors="1") operations_research_sat

PROTO_INPUT(operations_research::sat::CpModelProto,
            com.google.ortools.sat.CpModelProto,
            model_proto);

PROTO_INPUT(operations_research::sat::SatParameters,
            com.google.ortools.sat.SatParameters,
            parameters);

PROTO_INPUT(operations_research::sat::CpSolverResponse,
            com.google.ortools.sat.CpSolverResponse,
            response);

PROTO2_RETURN(operations_research::sat::CpSolverResponse,
              com.google.ortools.sat.CpSolverResponse);

%ignoreall

%unignore operations_research;
%unignore operations_research::sat;

// Wrap the relevant part of the SatHelper.
%unignore operations_research::sat::SatHelper;
%rename (solve) operations_research::sat::SatHelper::Solve;
%rename (solveWithParameters) operations_research::sat::SatHelper::SolveWithParameters;
%rename (solveWithParametersAndSolutionCallback) operations_research::sat::SatHelper::SolveWithParametersAndSolutionCallback;
%rename (modelStats) operations_research::sat::SatHelper::ModelStats;
%rename (solverResponseStats) operations_research::sat::SatHelper::SolverResponseStats;
%rename (validateModel) operations_research::sat::SatHelper::ValidateModel;

// We use directors for the solution callback.
%feature("director") operations_research::sat::SolutionCallback;

%unignore operations_research::sat::SolutionCallback;
%unignore operations_research::sat::SolutionCallback::~SolutionCallback;
%rename (bestObjectiveBound) operations_research::sat::SolutionCallback::BestObjectiveBound;
%rename (numBinaryPropagations) operations_research::sat::SolutionCallback::NumBinaryPropagations;
%rename (numBooleans) operations_research::sat::SolutionCallback::NumBooleans;
%rename (numBranches) operations_research::sat::SolutionCallback::NumBranches;
%rename (numConflicts) operations_research::sat::SolutionCallback::NumConflicts;
%rename (numIntegerPropagations) operations_research::sat::SolutionCallback::NumIntegerPropagations;
%rename (objectiveValue) operations_research::sat::SolutionCallback::ObjectiveValue;
%rename (onSolutionCallback) operations_research::sat::SolutionCallback::OnSolutionCallback;
%rename (solutionBooleanValue) operations_research::sat::SolutionCallback::SolutionBooleanValue;
%rename (solutionIntegerValue) operations_research::sat::SolutionCallback::SolutionIntegerValue;
%rename (stopSearch) operations_research::sat::SolutionCallback::StopSearch;
%rename (userTime) operations_research::sat::SolutionCallback::UserTime;
%rename (wallTime) operations_research::sat::SolutionCallback::WallTime;

// Wrap the domain class here.
%unignore operations_research::Domain;
%unignore operations_research::Domain::Domain;
%rename (allValues) operations_research::Domain::AllValues;
%rename (complement) operations_research::Domain::Complement;
%rename (contains) operations_research::Domain::Contains;
%rename (flattenedIntervals) operations_research::Domain::FlattenedIntervals;
%rename (fromFlatIntervals) operations_research::Domain::FromFlatIntervals;
%rename (fromIntervals) operations_research::Domain::FromVectorIntervals;
%rename (fromValues) operations_research::Domain::FromValues;
%rename (isEmpty) operations_research::Domain::IsEmpty;
%rename (max) operations_research::Domain::Max;
%rename (min) operations_research::Domain::Min;
%rename (negation) operations_research::Domain::Negation;
%rename (size) operations_research::Domain::Size;

%include "ortools/sat/swig_helper.h"
%include "ortools/util/sorted_interval_list.h"

%unignoreall
