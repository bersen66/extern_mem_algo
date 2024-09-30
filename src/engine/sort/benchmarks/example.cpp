#include <benchmark/benchmark.h>
#include <engine/sort/sort.hpp>

static void MeasureSort(benchmark::State& s) {
    for (auto _ : s) {
        engine::Sort("hello!");     
    }
}

BENCHMARK(MeasureSort);
