.class final Lcom/google/firebase/perf/transport/FlgTransport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;


# instance fields
.field private flgTransport:Lq29;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq29<",
            "Lcom/google/firebase/perf/v1/PerfMetric;",
            ">;"
        }
    .end annotation
.end field

.field private final flgTransportFactoryProvider:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lt29;",
            ">;"
        }
    .end annotation
.end field

.field private final logSourceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/transport/FlgTransport;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/inject/Provider;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Provider<",
            "Lt29;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/perf/transport/FlgTransport;->logSourceName:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/firebase/perf/transport/FlgTransport;->flgTransportFactoryProvider:Lcom/google/firebase/inject/Provider;

    return-void
.end method

.method private initializeFlgTransportClient()Z
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/perf/transport/FlgTransport;->flgTransport:Lq29;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/perf/transport/FlgTransport;->flgTransportFactoryProvider:Lcom/google/firebase/inject/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt29;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/perf/transport/FlgTransport;->logSourceName:Ljava/lang/String;

    new-instance v2, Liy2;

    const-string v3, "proto"

    invoke-direct {v2, v3}, Liy2;-><init>(Ljava/lang/String;)V

    new-instance v3, Llt0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lt29;->a(Ljava/lang/String;Liy2;Ld29;)Lw29;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/transport/FlgTransport;->flgTransport:Lq29;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/firebase/perf/transport/FlgTransport;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string v1, "Flg TransportFactory is not available at the moment"

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/firebase/perf/transport/FlgTransport;->flgTransport:Lq29;

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public log(Lcom/google/firebase/perf/v1/PerfMetric;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/perf/transport/FlgTransport;->initializeFlgTransportClient()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/firebase/perf/transport/FlgTransport;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string p1, "Unable to dispatch event because Flg Transport is not available"

    invoke-virtual {p0, p1}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/firebase/perf/transport/FlgTransport;->flgTransport:Lq29;

    invoke-static {p1}, Lry;->b(Ljava/lang/Object;)Lry;

    move-result-object p1

    invoke-interface {p0, p1}, Lq29;->a(Lry;)V

    return-void
.end method
