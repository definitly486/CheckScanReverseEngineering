.class public final synthetic Lx29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/firebase/perf/transport/TransportManager;

.field public final synthetic c:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

.field public final synthetic d:Lcom/google/firebase/perf/v1/ApplicationProcessState;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx29;->b:Lcom/google/firebase/perf/transport/TransportManager;

    iput-object p2, p0, Lx29;->c:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    iput-object p3, p0, Lx29;->d:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lx29;->c:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    iget-object v1, p0, Lx29;->d:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    iget-object p0, p0, Lx29;->b:Lcom/google/firebase/perf/transport/TransportManager;

    invoke-static {p0, v0, v1}, Lcom/google/firebase/perf/transport/TransportManager;->d(Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    return-void
.end method
