.class public final synthetic Lap3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->b()Lcom/google/firebase/perf/session/gauges/MemoryGaugeCollector;

    move-result-object p0

    return-object p0
.end method
