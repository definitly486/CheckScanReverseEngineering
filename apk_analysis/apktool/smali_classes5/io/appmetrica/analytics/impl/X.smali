.class public final Lio/appmetrica/analytics/impl/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Oa;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lio/appmetrica/analytics/impl/K;

.field public final g:Lio/appmetrica/analytics/impl/K;

.field public final h:Lio/appmetrica/analytics/impl/K;

.field public i:Ljava/util/concurrent/FutureTask;

.field public final j:Lcl4;

.field public final k:J

.field public final l:Lio/appmetrica/analytics/impl/O;

.field public volatile m:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

.field public n:Lio/appmetrica/analytics/impl/L;

.field public o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;Lio/appmetrica/analytics/impl/vm;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/X;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/X;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    const-string p1, "advertising identifiers collecting is forbidden by client configuration"

    iput-object p1, p0, Lio/appmetrica/analytics/impl/X;->c:Ljava/lang/String;

    const-string p1, "advertising identifiers collecting is forbidden by startup"

    iput-object p1, p0, Lio/appmetrica/analytics/impl/X;->d:Ljava/lang/String;

    const-string p1, "advertising identifiers collecting is forbidden by unknown reason"

    iput-object p1, p0, Lio/appmetrica/analytics/impl/X;->e:Ljava/lang/String;

    new-instance p1, Lio/appmetrica/analytics/impl/K;

    new-instance p2, Lio/appmetrica/analytics/impl/Bg;

    const-string v0, "google"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p2, v0, v1, v2, v1}, Lio/appmetrica/analytics/impl/Bg;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/S;ILjh2;)V

    invoke-direct {p1, p2}, Lio/appmetrica/analytics/impl/K;-><init>(Lio/appmetrica/analytics/impl/H;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/X;->f:Lio/appmetrica/analytics/impl/K;

    new-instance p1, Lio/appmetrica/analytics/impl/K;

    new-instance p2, Lio/appmetrica/analytics/impl/Bg;

    const-string v0, "huawei"

    invoke-direct {p2, v0, v1, v2, v1}, Lio/appmetrica/analytics/impl/Bg;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/S;ILjh2;)V

    invoke-direct {p1, p2}, Lio/appmetrica/analytics/impl/K;-><init>(Lio/appmetrica/analytics/impl/H;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/X;->g:Lio/appmetrica/analytics/impl/K;

    new-instance p1, Lio/appmetrica/analytics/impl/K;

    new-instance p2, Lio/appmetrica/analytics/impl/Bg;

    const-string v0, "yandex"

    invoke-direct {p2, v0, v1, v2, v1}, Lio/appmetrica/analytics/impl/Bg;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/S;ILjh2;)V

    invoke-direct {p1, p2}, Lio/appmetrica/analytics/impl/K;-><init>(Lio/appmetrica/analytics/impl/H;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/X;->h:Lio/appmetrica/analytics/impl/K;

    new-instance p1, Lio/appmetrica/analytics/impl/T;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/T;-><init>(Lio/appmetrica/analytics/impl/X;)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/X;->j:Lcl4;

    const-wide/16 p1, 0x5a

    iput-wide p1, p0, Lio/appmetrica/analytics/impl/X;->k:J

    new-instance p1, Lio/appmetrica/analytics/impl/O;

    invoke-direct {p1, p3}, Lio/appmetrica/analytics/impl/O;-><init>(Lio/appmetrica/analytics/impl/vm;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/X;->l:Lio/appmetrica/analytics/impl/O;

    new-instance p1, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    invoke-direct {p1}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/X;->m:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    new-instance p1, Lio/appmetrica/analytics/impl/L;

    sget-object p2, Lio/appmetrica/analytics/impl/M;->d:Lio/appmetrica/analytics/impl/M;

    invoke-direct {p1, p2, p2, p2}, Lio/appmetrica/analytics/impl/L;-><init>(Lio/appmetrica/analytics/impl/M;Lio/appmetrica/analytics/impl/M;Lio/appmetrica/analytics/impl/M;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/X;->n:Lio/appmetrica/analytics/impl/L;

    return-void
.end method

.method public static final synthetic a(Lio/appmetrica/analytics/impl/X;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lio/appmetrica/analytics/impl/X;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic b(Lio/appmetrica/analytics/impl/X;)Lio/appmetrica/analytics/impl/H;
    .locals 0

    .line 139
    iget-object p0, p0, Lio/appmetrica/analytics/impl/X;->f:Lio/appmetrica/analytics/impl/K;

    return-object p0
.end method

.method public static final synthetic c(Lio/appmetrica/analytics/impl/X;)Lio/appmetrica/analytics/impl/H;
    .locals 0

    .line 15
    iget-object p0, p0, Lio/appmetrica/analytics/impl/X;->g:Lio/appmetrica/analytics/impl/K;

    return-object p0
.end method

.method public static final synthetic d(Lio/appmetrica/analytics/impl/X;)Lio/appmetrica/analytics/impl/H;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/X;->h:Lio/appmetrica/analytics/impl/K;

    return-object p0
.end method

.method public static final synthetic e(Lio/appmetrica/analytics/impl/X;)V
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/X;->b()V

    return-void
.end method

.method public static final f(Lio/appmetrica/analytics/impl/X;)Ljava/lang/Void;
    .locals 6

    new-instance v0, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/X;->n:Lio/appmetrica/analytics/impl/L;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/L;->a:Lio/appmetrica/analytics/impl/M;

    new-instance v2, Lio/appmetrica/analytics/impl/U;

    invoke-direct {v2, p0}, Lio/appmetrica/analytics/impl/U;-><init>(Lio/appmetrica/analytics/impl/X;)V

    invoke-virtual {p0, v1, v2}, Lio/appmetrica/analytics/impl/X;->a(Lio/appmetrica/analytics/impl/M;Lll3;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v1

    iget-object v2, p0, Lio/appmetrica/analytics/impl/X;->n:Lio/appmetrica/analytics/impl/L;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/L;->b:Lio/appmetrica/analytics/impl/M;

    new-instance v3, Lio/appmetrica/analytics/impl/V;

    invoke-direct {v3, p0}, Lio/appmetrica/analytics/impl/V;-><init>(Lio/appmetrica/analytics/impl/X;)V

    invoke-virtual {p0, v2, v3}, Lio/appmetrica/analytics/impl/X;->a(Lio/appmetrica/analytics/impl/M;Lll3;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v2

    iget-object v3, p0, Lio/appmetrica/analytics/impl/X;->n:Lio/appmetrica/analytics/impl/L;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/L;->c:Lio/appmetrica/analytics/impl/M;

    new-instance v4, Lio/appmetrica/analytics/impl/ke;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/ke;-><init>()V

    new-instance v5, Lio/appmetrica/analytics/impl/W;

    invoke-direct {v5, p0, v4}, Lio/appmetrica/analytics/impl/W;-><init>(Lio/appmetrica/analytics/impl/X;Lio/appmetrica/analytics/impl/Xn;)V

    invoke-virtual {p0, v3, v5}, Lio/appmetrica/analytics/impl/X;->a(Lio/appmetrica/analytics/impl/M;Lll3;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/X;->m:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/X;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/X;->j:Lcl4;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/FutureTask;

    iget-wide v2, p0, Lio/appmetrica/analytics/impl/X;->k:J

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, p0}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final g(Lio/appmetrica/analytics/impl/X;)Ljava/lang/Void;
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/X;->b()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/M;Lll3;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;
    .locals 1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 70
    new-instance p1, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 71
    sget-object p2, Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;->UNKNOWN:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    .line 72
    iget-object p0, p0, Lio/appmetrica/analytics/impl/X;->e:Ljava/lang/String;

    .line 73
    invoke-direct {p1, v0, p2, p0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    return-object p1

    .line 74
    :cond_0
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_1
    new-instance p1, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 76
    sget-object p2, Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;->FEATURE_DISABLED:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    .line 77
    iget-object p0, p0, Lio/appmetrica/analytics/impl/X;->d:Ljava/lang/String;

    .line 78
    invoke-direct {p1, v0, p2, p0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    return-object p1

    .line 79
    :cond_2
    new-instance p1, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 80
    sget-object p2, Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;->FORBIDDEN_BY_CLIENT_CONFIG:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    .line 81
    iget-object p0, p0, Lio/appmetrica/analytics/impl/X;->c:Ljava/lang/String;

    .line 82
    invoke-direct {p1, v0, p2, p0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    return-object p1

    .line 83
    :cond_3
    invoke-interface {p2}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    return-object p0
.end method

.method public final a()V
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/X;->l:Lio/appmetrica/analytics/impl/O;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/O;->a()Lio/appmetrica/analytics/impl/L;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/X;->n:Lio/appmetrica/analytics/impl/L;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/X;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/X;->j:Lcl4;

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/FutureTask;

    invoke-interface {v1, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->remove(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/X;->n:Lio/appmetrica/analytics/impl/L;

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lpl9;

    invoke-direct {v1, p0}, Lpl9;-><init>(Lio/appmetrica/analytics/impl/X;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/X;->i:Ljava/util/concurrent/FutureTask;

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/X;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/X;->i:Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x0

    const-string v3, "blockingRefreshTask"

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/X;->i:Ljava/util/concurrent/FutureTask;

    if-eqz p0, :cond_1

    return-void

    :cond_1
    invoke-static {v3}, Laa4;->j(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v3}, Laa4;->j(Ljava/lang/String;)V

    throw v2
.end method

.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/vm;)V
    .locals 1

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/X;->l:Lio/appmetrica/analytics/impl/O;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/O;->a(Lio/appmetrica/analytics/impl/vm;)V

    .line 67
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/X;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 8

    new-instance v0, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/X;->n:Lio/appmetrica/analytics/impl/L;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/L;->a:Lio/appmetrica/analytics/impl/M;

    new-instance v2, Lio/appmetrica/analytics/impl/U;

    invoke-direct {v2, p0}, Lio/appmetrica/analytics/impl/U;-><init>(Lio/appmetrica/analytics/impl/X;)V

    invoke-virtual {p0, v1, v2}, Lio/appmetrica/analytics/impl/X;->a(Lio/appmetrica/analytics/impl/M;Lll3;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v1

    iget-object v2, p0, Lio/appmetrica/analytics/impl/X;->m:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    invoke-virtual {v2}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getGoogle()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v2

    iget-object v3, v1, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mStatus:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    sget-object v4, Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;->UNKNOWN:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    if-ne v3, v4, :cond_0

    new-instance v5, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    iget-object v2, v2, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    iget-object v1, v1, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mErrorExplanation:Ljava/lang/String;

    invoke-direct {v5, v2, v3, v1}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    move-object v1, v5

    :cond_0
    iget-object v2, p0, Lio/appmetrica/analytics/impl/X;->n:Lio/appmetrica/analytics/impl/L;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/L;->b:Lio/appmetrica/analytics/impl/M;

    new-instance v3, Lio/appmetrica/analytics/impl/V;

    invoke-direct {v3, p0}, Lio/appmetrica/analytics/impl/V;-><init>(Lio/appmetrica/analytics/impl/X;)V

    invoke-virtual {p0, v2, v3}, Lio/appmetrica/analytics/impl/X;->a(Lio/appmetrica/analytics/impl/M;Lll3;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v2

    iget-object v3, p0, Lio/appmetrica/analytics/impl/X;->m:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    invoke-virtual {v3}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getHuawei()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v3

    iget-object v5, v2, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mStatus:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    if-ne v5, v4, :cond_1

    new-instance v6, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    iget-object v3, v3, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    iget-object v2, v2, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mErrorExplanation:Ljava/lang/String;

    invoke-direct {v6, v3, v5, v2}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    move-object v2, v6

    :cond_1
    iget-object v3, p0, Lio/appmetrica/analytics/impl/X;->n:Lio/appmetrica/analytics/impl/L;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/L;->c:Lio/appmetrica/analytics/impl/M;

    new-instance v5, Lio/appmetrica/analytics/impl/Xn;

    const/4 v6, 0x3

    const/16 v7, 0x1f4

    invoke-direct {v5, v6, v7}, Lio/appmetrica/analytics/impl/Xn;-><init>(II)V

    new-instance v6, Lio/appmetrica/analytics/impl/W;

    invoke-direct {v6, p0, v5}, Lio/appmetrica/analytics/impl/W;-><init>(Lio/appmetrica/analytics/impl/X;Lio/appmetrica/analytics/impl/Xn;)V

    invoke-virtual {p0, v3, v6}, Lio/appmetrica/analytics/impl/X;->a(Lio/appmetrica/analytics/impl/M;Lll3;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v3

    iget-object v5, p0, Lio/appmetrica/analytics/impl/X;->m:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    invoke-virtual {v5}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getYandex()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v5

    iget-object v6, v3, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mStatus:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    if-ne v6, v4, :cond_2

    new-instance v4, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    iget-object v5, v5, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    iget-object v3, v3, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mErrorExplanation:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v3}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    move-object v3, v4

    :cond_2
    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/X;->m:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/X;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/X;->j:Lcl4;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/FutureTask;

    iget-wide v2, p0, Lio/appmetrica/analytics/impl/X;->k:J

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, p0}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public final declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 134
    :try_start_0
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/X;->o:Z

    .line 135
    iget-object v0, p0, Lio/appmetrica/analytics/impl/X;->l:Lio/appmetrica/analytics/impl/O;

    .line 136
    iget-object v0, v0, Lio/appmetrica/analytics/impl/O;->b:Lio/appmetrica/analytics/coreutils/internal/toggle/SavableToggle;

    .line 137
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/coreutils/internal/toggle/SavableToggle;->update(Z)V

    .line 138
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/X;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized c(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/X;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/X;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized getIdentifiers()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/X;->i:Ljava/util/concurrent/FutureTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/X;->m:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_3
    const-string v0, "blockingRefreshTask"

    invoke-static {v0}, Laa4;->j(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final declared-synchronized init()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/X;->i:Ljava/util/concurrent/FutureTask;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/X;->l:Lio/appmetrica/analytics/impl/O;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/O;->a()Lio/appmetrica/analytics/impl/L;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/X;->n:Lio/appmetrica/analytics/impl/L;

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lol9;

    invoke-direct {v1, p0}, Lol9;-><init>(Lio/appmetrica/analytics/impl/X;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/X;->i:Ljava/util/concurrent/FutureTask;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/X;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    invoke-interface {v1, v0}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
