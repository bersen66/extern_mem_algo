#include <benchmark/benchmark.h>
#include <engine/group_by/group_by.hpp>

static void MeasureGroupBy(benchmark::State& s) {
    for (auto _ : s) {
        engine::GroupBy("hello!");     
    }
}

BENCHMARK(MeasureGroupBy);
