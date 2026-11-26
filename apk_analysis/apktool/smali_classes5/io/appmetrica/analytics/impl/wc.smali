.class public final Lio/appmetrica/analytics/impl/wc;
.super Lio/appmetrica/analytics/impl/W2;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Wa;


# static fields
.field public static final r:Ljava/lang/Long;


# instance fields
.field public final p:Lio/appmetrica/analytics/impl/Gc;

.field public final q:Lio/appmetrica/analytics/impl/xc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/impl/wc;->r:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Gc;)V
    .locals 11

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Gc;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Gc;->i()Lio/appmetrica/analytics/impl/Ei;

    move-result-object v2

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Gc;->h()Lio/appmetrica/analytics/impl/Mh;

    move-result-object v3

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Gc;->d()Lio/appmetrica/analytics/impl/Z9;

    move-result-object v4

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Gc;->f()Lio/appmetrica/analytics/impl/E6;

    move-result-object v5

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Gc;->j()Lio/appmetrica/analytics/impl/do;

    move-result-object v6

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Gc;->g()Lio/appmetrica/analytics/impl/Hg;

    move-result-object v7

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Gc;->c()Lio/appmetrica/analytics/impl/I6;

    move-result-object v8

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Gc;->a()Lio/appmetrica/analytics/impl/g0;

    move-result-object v9

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Gc;->e()Lio/appmetrica/analytics/impl/Ve;

    move-result-object v10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lio/appmetrica/analytics/impl/W2;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Ei;Lio/appmetrica/analytics/impl/Mh;Lio/appmetrica/analytics/impl/Z9;Lio/appmetrica/analytics/impl/E6;Lio/appmetrica/analytics/impl/do;Lio/appmetrica/analytics/impl/Hg;Lio/appmetrica/analytics/impl/I6;Lio/appmetrica/analytics/impl/g0;Lio/appmetrica/analytics/impl/Ve;)V

    iput-object p1, v0, Lio/appmetrica/analytics/impl/wc;->p:Lio/appmetrica/analytics/impl/Gc;

    new-instance p0, Lio/appmetrica/analytics/impl/xc;

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/xc;-><init>(Lio/appmetrica/analytics/impl/j0;)V

    iput-object p0, v0, Lio/appmetrica/analytics/impl/wc;->q:Lio/appmetrica/analytics/impl/xc;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/wc;->l()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 4

    .line 230
    iget-object v0, p0, Lio/appmetrica/analytics/impl/wc;->p:Lio/appmetrica/analytics/impl/Gc;

    .line 231
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Gc;->i:Lio/appmetrica/analytics/impl/q;

    .line 232
    sget-object v1, Lio/appmetrica/analytics/impl/p;->a:Lio/appmetrica/analytics/impl/p;

    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/impl/q;->a(Landroid/app/Activity;Lio/appmetrica/analytics/impl/p;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Resume session"

    invoke-virtual {v0, v3, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 235
    :goto_0
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/W2;->d(Ljava/lang/String;)V

    .line 236
    iget-object p0, p0, Lio/appmetrica/analytics/impl/wc;->p:Lio/appmetrica/analytics/impl/Gc;

    .line 237
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gc;->g:Lio/appmetrica/analytics/impl/t2;

    .line 238
    monitor-enter p0

    .line 239
    :try_start_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/t2;->a:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/s2;

    .line 240
    iget-boolean v2, v0, Lio/appmetrica/analytics/impl/s2;->d:Z

    if-eqz v2, :cond_1

    .line 241
    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/s2;->d:Z

    .line 242
    iget-object v2, v0, Lio/appmetrica/analytics/impl/s2;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iget-object v3, v0, Lio/appmetrica/analytics/impl/s2;->e:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->remove(Ljava/lang/Runnable;)V

    .line 243
    iget-object v0, v0, Lio/appmetrica/analytics/impl/s2;->a:Lio/appmetrica/analytics/impl/vc;

    .line 244
    iget-object v0, v0, Lio/appmetrica/analytics/impl/vc;->a:Lio/appmetrica/analytics/impl/wc;

    .line 245
    iget-object v2, v0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    .line 246
    iget-object v0, v0, Lio/appmetrica/analytics/impl/V3;->a:Lio/appmetrica/analytics/impl/Pf;

    .line 247
    iget-object v2, v2, Lio/appmetrica/analytics/impl/Ei;->c:Lio/appmetrica/analytics/impl/Gi;

    .line 248
    invoke-virtual {v2, v0}, Lio/appmetrica/analytics/impl/Gi;->b(Lio/appmetrica/analytics/impl/Pf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 249
    :cond_2
    monitor-exit p0

    return-void

    .line 250
    :goto_2
    monitor-exit p0

    throw p1

    :cond_3
    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    .line 252
    iget-object v0, v0, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 253
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setManualLocation(Landroid/location/Location;)V

    .line 254
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Set location: %s"

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/AnrListener;)V
    .locals 0

    .line 270
    iget-object p0, p0, Lio/appmetrica/analytics/impl/wc;->q:Lio/appmetrica/analytics/impl/xc;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/xc;->a(Lio/appmetrica/analytics/AnrListener;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/o0;)V
    .locals 9

    iget-boolean v0, p2, Lio/appmetrica/analytics/impl/o0;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/W2;->clearAppEnvironment()V

    :cond_0
    iget-object p2, p2, Lio/appmetrica/analytics/impl/o0;->a:Ljava/util/List;

    invoke-static {p2}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v0, p2}, Lio/appmetrica/analytics/internal/CounterConfiguration;->addAutoCollectedDataSubscribers(Ljava/util/List;)V

    :cond_1
    iget-object p2, p1, Lio/appmetrica/analytics/AppMetricaConfig;->appEnvironment:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/impl/W2;->a(Ljava/util/Map;)V

    iget-object p2, p1, Lio/appmetrica/analytics/AppMetricaConfig;->errorEnvironment:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/impl/W2;->b(Ljava/util/Map;)V

    iget-object p2, p1, Lio/appmetrica/analytics/AppMetricaConfig;->nativeCrashReporting:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v0}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v2, "native crash reporting enabled: %b"

    invoke-virtual {v1, v2, p2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_5

    iget-object p2, p0, Lio/appmetrica/analytics/impl/wc;->p:Lio/appmetrica/analytics/impl/Gc;

    iget-object p2, p2, Lio/appmetrica/analytics/impl/Gc;->c:Lio/appmetrica/analytics/impl/Nd;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->a:Landroid/content/Context;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getApiKey()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Mh;->d()Ljava/lang/String;

    move-result-object v8

    new-instance v2, Lio/appmetrica/analytics/impl/K0;

    iget-object v1, p2, Lio/appmetrica/analytics/impl/Nd;->a:Lio/appmetrica/analytics/impl/Pf;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Pf;->a:Landroid/content/ContentValues;

    const-string v4, "PROCESS_CFG_PACKAGE_NAME"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->MAIN:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    iget-object v1, p2, Lio/appmetrica/analytics/impl/Nd;->a:Lio/appmetrica/analytics/impl/Pf;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Pf;->a:Landroid/content/ContentValues;

    const-string v6, "PROCESS_CFG_PROCESS_ID"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v1, p2, Lio/appmetrica/analytics/impl/Nd;->a:Lio/appmetrica/analytics/impl/Pf;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Pf;->a:Landroid/content/ContentValues;

    const-string v7, "PROCESS_CFG_PROCESS_SESSION_ID"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v8}, Lio/appmetrica/analytics/impl/K0;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v2, p2, Lio/appmetrica/analytics/impl/Nd;->d:Lio/appmetrica/analytics/impl/K0;

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getNativeCrashDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p2, Lio/appmetrica/analytics/impl/Nd;->b:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashClientModule;

    new-instance v4, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashClientConfig;

    iget-object v5, p2, Lio/appmetrica/analytics/impl/Nd;->c:Lio/appmetrica/analytics/impl/L0;

    iget-object p2, p2, Lio/appmetrica/analytics/impl/Nd;->d:Lio/appmetrica/analytics/impl/K0;

    if-eqz p2, :cond_4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lio/appmetrica/analytics/impl/L0;->a(Lio/appmetrica/analytics/impl/K0;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, v1, p2}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v4}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashClientModule;->initHandling(Landroid/content/Context;Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashClientConfig;)V

    goto :goto_1

    :cond_4
    const-string p0, "nativeCrashMetadata"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v2

    :cond_5
    :goto_1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/wc;->q:Lio/appmetrica/analytics/impl/xc;

    monitor-enter p0

    :try_start_0
    iget-object p2, p1, Lio/appmetrica/analytics/AppMetricaConfig;->anrMonitoringTimeout:Ljava/lang/Integer;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_6
    const/4 p2, 0x5

    :goto_2
    iput p2, p0, Lio/appmetrica/analytics/impl/xc;->a:I

    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->anrMonitoring:Ljava/lang/Boolean;

    if-nez p1, :cond_7

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lio/appmetrica/analytics/impl/xc;->b:Lio/appmetrica/analytics/impl/e;

    if-eqz p1, :cond_8

    :try_start_1
    iget p1, p0, Lio/appmetrica/analytics/impl/xc;->a:I

    invoke-virtual {p2, p1}, Lio/appmetrica/analytics/impl/e;->a(I)V

    goto :goto_3

    :cond_8
    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/e;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/ExternalAttribution;)V
    .locals 5

    .line 271
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "External attribution received: %s"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    .line 273
    invoke-interface {p1}, Lio/appmetrica/analytics/ExternalAttribution;->toBytes()[B

    move-result-object p1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    sget-object v2, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    .line 274
    new-instance v2, Lio/appmetrica/analytics/impl/a4;

    sget-object v3, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const/16 v3, 0x2a

    .line 275
    const-string v4, ""

    invoke-direct {v2, p1, v4, v3, v1}, Lio/appmetrica/analytics/impl/a4;-><init>([BLjava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 276
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    .line 277
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    invoke-static {v2, p0}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 279
    invoke-virtual {v0, p1, p0, v2, v1}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;ILjava/util/Map;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/Ro;)V
    .locals 2

    .line 262
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 263
    monitor-enter p1

    .line 264
    :try_start_0
    iput-object p0, p1, Lio/appmetrica/analytics/impl/Ro;->b:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 265
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    iget-object v0, p1, Lio/appmetrica/analytics/impl/Ro;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;

    .line 267
    invoke-interface {v1, p0}, Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;->consume(Ljava/lang/Object;)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object p0, p1, Lio/appmetrica/analytics/impl/Ro;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_0
    move-exception p0

    .line 269
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/n;)V
    .locals 3

    .line 226
    sget-object v0, Lio/appmetrica/analytics/impl/n;->b:Lio/appmetrica/analytics/impl/n;

    .line 227
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 228
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Enable activity auto tracking"

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not enable activity auto tracking. "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lio/appmetrica/analytics/impl/n;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 290
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Add auto collected data subscriber: %s"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    .line 292
    iget-object p0, p0, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 293
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->addAutoCollectedDataSubscriber(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 280
    invoke-super {p0, p1, p2}, Lio/appmetrica/analytics/impl/W2;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object p1, p0, Lio/appmetrica/analytics/impl/wc;->p:Lio/appmetrica/analytics/impl/Gc;

    .line 282
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Gc;->c:Lio/appmetrica/analytics/impl/Nd;

    .line 283
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    .line 284
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Mh;->d()Ljava/lang/String;

    move-result-object v6

    .line 285
    iget-object p0, p1, Lio/appmetrica/analytics/impl/Nd;->d:Lio/appmetrica/analytics/impl/K0;

    if-eqz p0, :cond_0

    .line 286
    iget-object v1, p0, Lio/appmetrica/analytics/impl/K0;->a:Ljava/lang/String;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/K0;->b:Ljava/lang/String;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/K0;->c:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    iget v4, p0, Lio/appmetrica/analytics/impl/K0;->d:I

    iget-object v5, p0, Lio/appmetrica/analytics/impl/K0;->e:Ljava/lang/String;

    .line 287
    new-instance v0, Lio/appmetrica/analytics/impl/K0;

    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/K0;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;ILjava/lang/String;Ljava/lang/String;)V

    .line 288
    iput-object v0, p1, Lio/appmetrica/analytics/impl/Nd;->d:Lio/appmetrica/analytics/impl/K0;

    .line 289
    iget-object p0, p1, Lio/appmetrica/analytics/impl/Nd;->b:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashClientModule;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Nd;->c:Lio/appmetrica/analytics/impl/L0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/L0;->a(Lio/appmetrica/analytics/impl/K0;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashClientModule;->updateAppMetricaMetadata(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 7

    .line 213
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "App opened via deeplink: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 215
    sget-object v1, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    .line 216
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 217
    const-string v2, "type"

    const-string v3, "open"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v2, "link"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "auto"

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    .line 220
    new-instance v1, Lio/appmetrica/analytics/impl/a4;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/ub;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    sget-object p1, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const/16 v4, 0x2010

    const/4 v5, 0x0

    .line 221
    const-string v3, ""

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/a4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 222
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    .line 223
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    invoke-static {v1, p0}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    .line 225
    invoke-virtual {v0, p1, p0, v1, p2}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;ILjava/util/Map;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 255
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    .line 256
    iget-object p0, p0, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 257
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setLocationTracking(Z)V

    return-void
.end method

.method public final a(ZZ)V
    .locals 3

    .line 258
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Set advIdentifiersTracking to %s"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    .line 260
    iget-object p0, p0, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 261
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setAdvIdentifiersTracking(ZZ)V

    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 5

    iget-object v0, p0, Lio/appmetrica/analytics/impl/wc;->p:Lio/appmetrica/analytics/impl/Gc;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Gc;->i:Lio/appmetrica/analytics/impl/q;

    sget-object v1, Lio/appmetrica/analytics/impl/p;->b:Lio/appmetrica/analytics/impl/p;

    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/impl/q;->a(Landroid/app/Activity;Lio/appmetrica/analytics/impl/p;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Pause session"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/W2;->c(Ljava/lang/String;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/wc;->p:Lio/appmetrica/analytics/impl/Gc;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gc;->g:Lio/appmetrica/analytics/impl/t2;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/t2;->a:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/s2;

    iget-boolean v1, v0, Lio/appmetrica/analytics/impl/s2;->d:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/s2;->d:Z

    iget-object v1, v0, Lio/appmetrica/analytics/impl/s2;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/s2;->e:Ljava/lang/Runnable;

    iget-wide v3, v0, Lio/appmetrica/analytics/impl/s2;->c:J

    invoke-interface {v1, v2, v3, v4}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/impl/wc;->q:Lio/appmetrica/analytics/impl/xc;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/xc;->b:Lio/appmetrica/analytics/impl/e;

    iget v1, p0, Lio/appmetrica/analytics/impl/xc;->a:I

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/e;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/V3;->a:Lio/appmetrica/analytics/impl/Pf;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Pf;->b()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 0

    const-string p0, "[MainReporter]"

    return-object p0
.end method

.method public final k()V
    .locals 0

    invoke-super {p0}, Lio/appmetrica/analytics/impl/W2;->k()V

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/p4;->m()Lio/appmetrica/analytics/impl/m4;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/m4;->c()V

    return-void
.end method

.method public final l()V
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/V3;->a:Lio/appmetrica/analytics/impl/Pf;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ei;->c:Lio/appmetrica/analytics/impl/Gi;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Gi;->a(Lio/appmetrica/analytics/impl/Pf;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/wc;->p:Lio/appmetrica/analytics/impl/Gc;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Gc;->g:Lio/appmetrica/analytics/impl/t2;

    new-instance v1, Lio/appmetrica/analytics/impl/vc;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/vc;-><init>(Lio/appmetrica/analytics/impl/wc;)V

    sget-object p0, Lio/appmetrica/analytics/impl/wc;->r:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/t2;->a(Lio/appmetrica/analytics/impl/vc;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
