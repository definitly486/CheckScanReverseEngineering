.class public final Lio/appmetrica/analytics/impl/jk;
.super Lio/appmetrica/analytics/impl/i5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/n0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/n5;Lio/appmetrica/analytics/impl/A4;)V
    .locals 0

    .line 62
    invoke-direct/range {p0 .. p6}, Lio/appmetrica/analytics/impl/i5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/n0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/n5;Lio/appmetrica/analytics/impl/A4;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/vm;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/oh;Lio/appmetrica/analytics/impl/g5;Lio/appmetrica/analytics/impl/a5;)V
    .locals 16

    new-instance v3, Lio/appmetrica/analytics/impl/n0;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/n0;-><init>()V

    new-instance v4, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;

    invoke-direct {v4}, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;-><init>()V

    new-instance v5, Lio/appmetrica/analytics/impl/n5;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->w()Lio/appmetrica/analytics/impl/Ak;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Ak;->d()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Lio/appmetrica/analytics/coreutils/internal/services/PackageManagerUtils;->getAppVersionCodeInt(Landroid/content/Context;)I

    move-result v13

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->l()Lio/appmetrica/analytics/impl/Ub;

    move-result-object v14

    move-object/from16 v6, p1

    move-object/from16 v10, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v11, p5

    move-object/from16 v9, p6

    move-object/from16 v15, p7

    invoke-direct/range {v5 .. v15}, Lio/appmetrica/analytics/impl/n5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/g5;Lio/appmetrica/analytics/impl/vm;Lio/appmetrica/analytics/impl/oh;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;ILio/appmetrica/analytics/impl/Ub;Lio/appmetrica/analytics/impl/E9;)V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/jk;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/n0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/n5;Lio/appmetrica/analytics/impl/A4;)V

    return-void
.end method


# virtual methods
.method public final b()Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->SELF_SDK:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    return-object p0
.end method
