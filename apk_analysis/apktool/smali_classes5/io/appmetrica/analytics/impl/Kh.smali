.class public final Lio/appmetrica/analytics/impl/Kh;
.super Lio/appmetrica/analytics/impl/i5;
.source "SourceFile"


# instance fields
.field public final w:Ljava/lang/String;

.field public final x:Lio/appmetrica/analytics/impl/S6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/vm;Lio/appmetrica/analytics/impl/g5;Lio/appmetrica/analytics/impl/E9;)V
    .locals 16

    new-instance v3, Lio/appmetrica/analytics/impl/n0;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/n0;-><init>()V

    new-instance v4, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;

    invoke-direct {v4}, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;-><init>()V

    new-instance v5, Lio/appmetrica/analytics/impl/n5;

    new-instance v11, Lio/appmetrica/analytics/impl/Fh;

    move-object/from16 v0, p4

    invoke-direct {v11, v0}, Lio/appmetrica/analytics/impl/Fh;-><init>(Lio/appmetrica/analytics/impl/S6;)V

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fa;->w()Lio/appmetrica/analytics/impl/Ak;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Ak;->d()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Lio/appmetrica/analytics/coreutils/internal/services/PackageManagerUtils;->getAppVersionCodeInt(Landroid/content/Context;)I

    move-result v13

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fa;->l()Lio/appmetrica/analytics/impl/Ub;

    move-result-object v14

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v10, p5

    move-object/from16 v9, p6

    move-object/from16 v15, p7

    invoke-direct/range {v5 .. v15}, Lio/appmetrica/analytics/impl/n5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/g5;Lio/appmetrica/analytics/impl/vm;Lio/appmetrica/analytics/impl/oh;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;ILio/appmetrica/analytics/impl/Ub;Lio/appmetrica/analytics/impl/E9;)V

    move-object v1, v6

    move-object v2, v7

    move-object v7, v8

    move-object v6, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lio/appmetrica/analytics/impl/Kh;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/n0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/n5;Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/A4;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/n0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/n5;Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/A4;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    .line 68
    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/i5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/n0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/n5;Lio/appmetrica/analytics/impl/A4;)V

    .line 69
    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/b5;->b()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/impl/Kh;->w:Ljava/lang/String;

    .line 70
    iput-object p6, v0, Lio/appmetrica/analytics/impl/Kh;->x:Lio/appmetrica/analytics/impl/S6;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/A4;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lio/appmetrica/analytics/impl/i5;->a(Lio/appmetrica/analytics/impl/A4;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Kh;->x:Lio/appmetrica/analytics/impl/S6;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Kh;->w:Ljava/lang/String;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/A4;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lio/appmetrica/analytics/impl/S6;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
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
