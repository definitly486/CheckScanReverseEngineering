.class public final Lio/appmetrica/analytics/impl/Mc;
.super Lio/appmetrica/analytics/impl/W2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Ei;Lio/appmetrica/analytics/impl/Mh;Lio/appmetrica/analytics/impl/Z9;Lio/appmetrica/analytics/impl/E6;Lio/appmetrica/analytics/impl/do;Lio/appmetrica/analytics/impl/Hg;Lio/appmetrica/analytics/impl/I6;Lio/appmetrica/analytics/impl/g0;Lio/appmetrica/analytics/impl/Ve;)V
    .locals 0

    .line 72
    invoke-direct/range {p0 .. p10}, Lio/appmetrica/analytics/impl/W2;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Ei;Lio/appmetrica/analytics/impl/Mh;Lio/appmetrica/analytics/impl/Z9;Lio/appmetrica/analytics/impl/E6;Lio/appmetrica/analytics/impl/do;Lio/appmetrica/analytics/impl/Hg;Lio/appmetrica/analytics/impl/I6;Lio/appmetrica/analytics/impl/g0;Lio/appmetrica/analytics/impl/Ve;)V

    .line 73
    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Pf;Lio/appmetrica/analytics/ReporterConfig;Lio/appmetrica/analytics/impl/Ei;Lio/appmetrica/analytics/impl/Z9;)V
    .locals 11

    new-instance v3, Lio/appmetrica/analytics/impl/Mh;

    new-instance v0, Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-direct {v0, p3}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/ReporterConfig;)V

    new-instance v1, Lio/appmetrica/analytics/impl/O8;

    new-instance v2, Lio/appmetrica/analytics/impl/Kl;

    iget-object v4, p3, Lio/appmetrica/analytics/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-static {v4}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v4

    const-string v5, "Crash Environment"

    invoke-direct {v2, v4, v5}, Lio/appmetrica/analytics/impl/Kl;-><init>(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/O8;-><init>(Lio/appmetrica/analytics/impl/Kl;)V

    iget-object p3, p3, Lio/appmetrica/analytics/ReporterConfig;->userProfileID:Ljava/lang/String;

    invoke-direct {v3, p2, v0, v1, p3}, Lio/appmetrica/analytics/impl/Mh;-><init>(Lio/appmetrica/analytics/impl/Pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Lio/appmetrica/analytics/impl/O8;Ljava/lang/String;)V

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object p2

    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/p4;->n()Lio/appmetrica/analytics/impl/E6;

    move-result-object v5

    new-instance v6, Lio/appmetrica/analytics/impl/do;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/do;-><init>()V

    new-instance v7, Lio/appmetrica/analytics/impl/Hg;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/Hg;-><init>()V

    new-instance v8, Lio/appmetrica/analytics/impl/I6;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/I6;-><init>()V

    new-instance v9, Lio/appmetrica/analytics/impl/g0;

    invoke-direct {v9}, Lio/appmetrica/analytics/impl/g0;-><init>()V

    new-instance v10, Lio/appmetrica/analytics/impl/Ve;

    move-object/from16 v4, p5

    invoke-direct {v10, v4}, Lio/appmetrica/analytics/impl/Ve;-><init>(Lio/appmetrica/analytics/impl/Z9;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    invoke-direct/range {v0 .. v10}, Lio/appmetrica/analytics/impl/Mc;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Ei;Lio/appmetrica/analytics/impl/Mh;Lio/appmetrica/analytics/impl/Z9;Lio/appmetrica/analytics/impl/E6;Lio/appmetrica/analytics/impl/do;Lio/appmetrica/analytics/impl/Hg;Lio/appmetrica/analytics/impl/I6;Lio/appmetrica/analytics/impl/g0;Lio/appmetrica/analytics/impl/Ve;)V

    return-void
.end method


# virtual methods
.method public final j()Ljava/lang/String;
    .locals 0

    const-string p0, "[ManualReporter]"

    return-object p0
.end method
