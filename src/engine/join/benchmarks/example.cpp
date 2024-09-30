#include <benchmark/benchmark.h>
#include <engine/join/join.hpp>

static void MeasureJoin(benchmark::State& s) {
    for (auto _ : s) {
        engine::Join("hello!");     
    }
}

BENCHMARK(MeasureJoin);
