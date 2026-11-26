.class public final Lio/appmetrica/analytics/impl/Dc;
.super Lio/appmetrica/analytics/impl/i5;
.source "SourceFile"


# instance fields
.field public final w:Lio/appmetrica/analytics/impl/S6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/n0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/Fc;Lio/appmetrica/analytics/impl/S6;)V
    .locals 1

    move-object v0, p6

    move-object p6, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, v0

    .line 79
    invoke-direct/range {p0 .. p6}, Lio/appmetrica/analytics/impl/i5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/n0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/n5;Lio/appmetrica/analytics/impl/A4;)V

    .line 80
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/i5;->k()Lio/appmetrica/analytics/impl/j9;

    move-result-object p1

    .line 81
    sget-object p2, Lio/appmetrica/analytics/impl/pb;->e:Lio/appmetrica/analytics/impl/pb;

    new-instance p3, Lio/appmetrica/analytics/impl/Kg;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/j9;->a()Lio/appmetrica/analytics/impl/zi;

    move-result-object p4

    invoke-direct {p3, p4}, Lio/appmetrica/analytics/impl/Kg;-><init>(Lio/appmetrica/analytics/impl/zi;)V

    invoke-virtual {p1, p2, p3}, Lio/appmetrica/analytics/impl/j9;->a(Lio/appmetrica/analytics/impl/pb;Lio/appmetrica/analytics/impl/Ja;)V

    .line 82
    iput-object p7, p0, Lio/appmetrica/analytics/impl/Dc;->w:Lio/appmetrica/analytics/impl/S6;

    .line 83
    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Fa;->x()Lio/appmetrica/analytics/impl/Mk;

    move-result-object p1

    new-instance p2, Lio/appmetrica/analytics/impl/Lk;

    invoke-direct {p2, p0, p6}, Lio/appmetrica/analytics/impl/Lk;-><init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/A4;)V

    .line 84
    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/impl/Mk;->onMainReporterCreated(Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleReporterComponentContext;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/vm;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/g5;)V
    .locals 18

    new-instance v4, Lio/appmetrica/analytics/impl/n0;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/n0;-><init>()V

    new-instance v5, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;

    invoke-direct {v5}, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;-><init>()V

    new-instance v6, Lio/appmetrica/analytics/impl/Fc;

    new-instance v12, Lio/appmetrica/analytics/impl/zc;

    move-object/from16 v0, p5

    invoke-direct {v12, v0}, Lio/appmetrica/analytics/impl/zc;-><init>(Lio/appmetrica/analytics/impl/S6;)V

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fa;->w()Lio/appmetrica/analytics/impl/Ak;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Ak;->d()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Lio/appmetrica/analytics/coreutils/internal/services/PackageManagerUtils;->getAppVersionCodeInt(Landroid/content/Context;)I

    move-result v14

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fa;->w()Lio/appmetrica/analytics/impl/Ak;

    move-result-object v15

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fa;->l()Lio/appmetrica/analytics/impl/Ub;

    move-result-object v16

    new-instance v17, Lio/appmetrica/analytics/impl/tc;

    invoke-direct/range {v17 .. v17}, Lio/appmetrica/analytics/impl/tc;-><init>()V

    move-object/from16 v7, p1

    move-object/from16 v11, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    invoke-direct/range {v6 .. v17}, Lio/appmetrica/analytics/impl/Fc;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/g5;Lio/appmetrica/analytics/impl/vm;Lio/appmetrica/analytics/impl/oh;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;ILio/appmetrica/analytics/impl/Ak;Lio/appmetrica/analytics/impl/Ub;Lio/appmetrica/analytics/impl/E9;)V

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v7, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lio/appmetrica/analytics/impl/Dc;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/n0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/Fc;Lio/appmetrica/analytics/impl/S6;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/A4;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lio/appmetrica/analytics/impl/i5;->a(Lio/appmetrica/analytics/impl/A4;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Dc;->w:Lio/appmetrica/analytics/impl/S6;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/A4;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/S6;->a(Ljava/lang/Boolean;)V
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

.method public final b()Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->MAIN:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    return-object p0
.end method
