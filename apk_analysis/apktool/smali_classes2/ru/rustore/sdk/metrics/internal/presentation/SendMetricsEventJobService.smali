.class public final Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# instance fields
.field public final b:Lfh8;

.field public c:Ld18;

.field public volatile d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    new-instance v0, Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService$a;

    invoke-direct {v0, p0}, Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService$a;-><init>(Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService;)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService;->b:Lfh8;

    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService$b;

    invoke-direct {v0, p0}, Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService$b;-><init>(Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService;)V

    new-instance v1, Lk08;

    invoke-direct {v1, v0}, Lk08;-><init>(Lll3;)V

    invoke-static {}, Lpo2;->a()Ljo2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lf18;

    invoke-direct {v2, v1, v0}, Lf18;-><init>(Llz7;Ljo2;)V

    new-instance v0, Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService$c;

    invoke-direct {v0, p0, p1}, Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService$c;-><init>(Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService;Landroid/app/job/JobParameters;)V

    new-instance v1, Lvz7;

    invoke-direct {v1, v2, v0}, Lvz7;-><init>(Lf18;Lll3;)V

    new-instance v0, Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService$d;

    invoke-direct {v0, p0, p1}, Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService$d;-><init>(Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService;Landroid/app/job/JobParameters;)V

    new-instance v2, Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService$e;

    invoke-direct {v2, p0, p1}, Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService$e;-><init>(Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService;Landroid/app/job/JobParameters;)V

    invoke-static {v1, v0, v2}, Ld31;->r(Llz7;Lnl3;Lnl3;)Ld18;

    move-result-object p1

    iput-object p1, p0, Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService;->c:Ld18;

    const/4 p0, 0x1

    return p0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService;->d:Z

    iget-object p0, p0, Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService;->c:Ld18;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ld18;->dispose()V

    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge p0, v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    if-ne p0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string p1, "pending_jobs_count"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    :cond_3
    :goto_1
    return v0
.end method
