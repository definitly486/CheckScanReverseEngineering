.class public final Lio/appmetrica/analytics/impl/ri;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/cb;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/Pf;

.field public final c:Lio/appmetrica/analytics/impl/Ei;

.field public final d:Landroid/os/Handler;

.field public final e:Lio/appmetrica/analytics/impl/em;

.field public final f:Lio/appmetrica/analytics/impl/Gc;

.field public final g:Ljava/util/LinkedHashMap;

.field public final h:Lio/appmetrica/analytics/impl/Sn;

.field public final i:Ljava/util/List;

.field public j:Lio/appmetrica/analytics/impl/wc;

.field public k:Lio/appmetrica/analytics/impl/w6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Pf;Lio/appmetrica/analytics/impl/Ei;Landroid/os/Handler;Lio/appmetrica/analytics/impl/em;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/ri;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/ri;->b:Lio/appmetrica/analytics/impl/Pf;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/ri;->c:Lio/appmetrica/analytics/impl/Ei;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/ri;->d:Landroid/os/Handler;

    iput-object p5, p0, Lio/appmetrica/analytics/impl/ri;->e:Lio/appmetrica/analytics/impl/em;

    new-instance p4, Lio/appmetrica/analytics/impl/Gc;

    invoke-direct {p4, p1, p2, p3, p5}, Lio/appmetrica/analytics/impl/Gc;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Pf;Lio/appmetrica/analytics/impl/Ei;Lio/appmetrica/analytics/impl/em;)V

    iput-object p4, p0, Lio/appmetrica/analytics/impl/ri;->f:Lio/appmetrica/analytics/impl/Gc;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/ri;->g:Ljava/util/LinkedHashMap;

    new-instance p2, Lio/appmetrica/analytics/impl/Sn;

    new-instance p3, Lio/appmetrica/analytics/impl/ti;

    invoke-direct {p3, p1}, Lio/appmetrica/analytics/impl/ti;-><init>(Ljava/util/Map;)V

    invoke-direct {p2, p3}, Lio/appmetrica/analytics/impl/Sn;-><init>(Lio/appmetrica/analytics/coreutils/internal/validation/Validator;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/ri;->h:Lio/appmetrica/analytics/impl/Sn;

    const-string p1, "20799a27-fa80-4b36-b2db-0f8141f24180"

    const-string p2, "0e5e9c33-f8c3-4568-86c5-2e4f57523f72"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/ri;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/impl/o0;)Lio/appmetrica/analytics/impl/Wa;
    .locals 0

    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/ri;->d(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/impl/o0;)Lio/appmetrica/analytics/impl/wc;

    move-result-object p0

    return-object p0
.end method

.method public final a()Lio/appmetrica/analytics/impl/cb;
    .locals 0

    .line 73
    return-object p0
.end method

.method public final declared-synchronized a(Lio/appmetrica/analytics/AppMetricaConfig;)Lio/appmetrica/analytics/impl/fb;
    .locals 4

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ri;->k:Lio/appmetrica/analytics/impl/w6;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/w6;->a(Lio/appmetrica/analytics/AppMetricaConfig;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 76
    :cond_0
    new-instance v0, Lio/appmetrica/analytics/impl/x6;

    .line 77
    iget-object v1, p0, Lio/appmetrica/analytics/impl/ri;->b:Lio/appmetrica/analytics/impl/Pf;

    .line 78
    iget-object v2, p0, Lio/appmetrica/analytics/impl/ri;->f:Lio/appmetrica/analytics/impl/Gc;

    .line 79
    iget-object v2, v2, Lio/appmetrica/analytics/impl/Gc;->e:Lio/appmetrica/analytics/impl/O8;

    .line 80
    iget-object v3, p0, Lio/appmetrica/analytics/impl/ri;->c:Lio/appmetrica/analytics/impl/Ei;

    .line 81
    invoke-direct {v0, v1, v2, v3, p1}, Lio/appmetrica/analytics/impl/x6;-><init>(Lio/appmetrica/analytics/impl/Pf;Lio/appmetrica/analytics/impl/O8;Lio/appmetrica/analytics/impl/Ei;Lio/appmetrica/analytics/AppMetricaConfig;)V

    .line 82
    new-instance p1, Lio/appmetrica/analytics/impl/w6;

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/w6;-><init>(Lio/appmetrica/analytics/impl/x6;)V

    .line 83
    iput-object p1, p0, Lio/appmetrica/analytics/impl/ri;->k:Lio/appmetrica/analytics/impl/w6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Lio/appmetrica/analytics/ReporterConfig;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ri;->g:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lio/appmetrica/analytics/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lio/appmetrica/analytics/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v0

    iget-object p1, p1, Lio/appmetrica/analytics/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/ApiKeyUtils;->createPartialApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Reporter with apiKey=%s already exists."

    invoke-virtual {v0, v1, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ri;->b(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/bb;

    sget-object v0, Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;->INSTANCE:Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activate reporter with APIKey "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lio/appmetrica/analytics/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/ApiKeyUtils;->createPartialApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AppMetrica"

    invoke-virtual {v0, v2, p1, v1}, Lio/appmetrica/analytics/logger/common/BaseImportantLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public final bridge synthetic b(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/impl/o0;)Lio/appmetrica/analytics/impl/Wa;
    .locals 0

    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/ri;->c(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/impl/o0;)Lio/appmetrica/analytics/impl/wc;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized b(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/bb;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ri;->g:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lio/appmetrica/analytics/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/bb;

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ri;->i:Ljava/util/List;

    iget-object v1, p1, Lio/appmetrica/analytics/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ri;->e:Lio/appmetrica/analytics/impl/em;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/em;->i()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_0
    :goto_0
    new-instance v0, Lio/appmetrica/analytics/impl/Mc;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ri;->a:Landroid/content/Context;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/ri;->b:Lio/appmetrica/analytics/impl/Pf;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/ri;->c:Lio/appmetrica/analytics/impl/Ei;

    new-instance v5, Lio/appmetrica/analytics/impl/Z9;

    invoke-direct {v5, v1}, Lio/appmetrica/analytics/impl/Z9;-><init>(Landroid/content/Context;)V

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/Mc;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Pf;Lio/appmetrica/analytics/ReporterConfig;Lio/appmetrica/analytics/impl/Ei;Lio/appmetrica/analytics/impl/Z9;)V

    new-instance p1, Lio/appmetrica/analytics/impl/Cb;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ri;->d:Landroid/os/Handler;

    invoke-direct {p1, v1, v0}, Lio/appmetrica/analytics/impl/Cb;-><init>(Landroid/os/Handler;Lio/appmetrica/analytics/impl/W2;)V

    iput-object p1, v0, Lio/appmetrica/analytics/impl/W2;->i:Lio/appmetrica/analytics/impl/Cb;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/ri;->e:Lio/appmetrica/analytics/impl/em;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    if-eqz p1, :cond_1

    iget-object v1, v1, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/em;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setUuid(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iget-object p1, v3, Lio/appmetrica/analytics/ReporterConfig;->appEnvironment:Ljava/util/Map;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/W2;->a(Ljava/util/Map;)V

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/W2;->k()V

    iget-object p1, p0, Lio/appmetrica/analytics/impl/ri;->g:Ljava/util/LinkedHashMap;

    iget-object v1, v3, Lio/appmetrica/analytics/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()Lio/appmetrica/analytics/impl/ri;
    .locals 0

    .line 97
    return-object p0
.end method

.method public final declared-synchronized c(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/impl/o0;)Lio/appmetrica/analytics/impl/wc;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ri;->j:Lio/appmetrica/analytics/impl/wc;

    if-eqz v0, :cond_0

    iget-object p3, p0, Lio/appmetrica/analytics/impl/ri;->f:Lio/appmetrica/analytics/impl/Gc;

    invoke-virtual {p3, p1, p2}, Lio/appmetrica/analytics/impl/Gc;->a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ri;->h:Lio/appmetrica/analytics/impl/Sn;

    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ri;->f:Lio/appmetrica/analytics/impl/Gc;

    invoke-virtual {v0, p1, p2}, Lio/appmetrica/analytics/impl/Gc;->a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    new-instance v0, Lio/appmetrica/analytics/impl/wc;

    iget-object p2, p0, Lio/appmetrica/analytics/impl/ri;->f:Lio/appmetrica/analytics/impl/Gc;

    invoke-direct {v0, p2}, Lio/appmetrica/analytics/impl/wc;-><init>(Lio/appmetrica/analytics/impl/Gc;)V

    new-instance p2, Lio/appmetrica/analytics/impl/Cb;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ri;->d:Landroid/os/Handler;

    invoke-direct {p2, v1, v0}, Lio/appmetrica/analytics/impl/Cb;-><init>(Landroid/os/Handler;Lio/appmetrica/analytics/impl/W2;)V

    iput-object p2, v0, Lio/appmetrica/analytics/impl/W2;->i:Lio/appmetrica/analytics/impl/Cb;

    iget-object p2, p0, Lio/appmetrica/analytics/impl/ri;->e:Lio/appmetrica/analytics/impl/em;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    if-eqz p2, :cond_1

    iget-object v1, v1, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/em;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setUuid(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0, p1, p3}, Lio/appmetrica/analytics/impl/wc;->a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/o0;)V

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/wc;->k()V

    iget-object p2, p0, Lio/appmetrica/analytics/impl/ri;->c:Lio/appmetrica/analytics/impl/Ei;

    new-instance p3, Lio/appmetrica/analytics/impl/qi;

    invoke-direct {p3, v0}, Lio/appmetrica/analytics/impl/qi;-><init>(Lio/appmetrica/analytics/impl/wc;)V

    iget-object p2, p2, Lio/appmetrica/analytics/impl/Ei;->f:Lio/appmetrica/analytics/impl/ok;

    iput-object p3, p2, Lio/appmetrica/analytics/impl/ok;->c:Lio/appmetrica/analytics/impl/sl;

    iget-object p2, p0, Lio/appmetrica/analytics/impl/ri;->g:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ri;->j:Lio/appmetrica/analytics/impl/wc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized d(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/impl/o0;)Lio/appmetrica/analytics/impl/wc;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ri;->j:Lio/appmetrica/analytics/impl/wc;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ri;->f:Lio/appmetrica/analytics/impl/Gc;

    invoke-virtual {v1, p1, p2}, Lio/appmetrica/analytics/impl/Gc;->b(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    invoke-virtual {v0, p1, p3}, Lio/appmetrica/analytics/impl/wc;->a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/o0;)V

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lio/appmetrica/analytics/impl/ri;->g:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ri;->h:Lio/appmetrica/analytics/impl/Sn;

    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ri;->f:Lio/appmetrica/analytics/impl/Gc;

    invoke-virtual {v0, p1, p2}, Lio/appmetrica/analytics/impl/Gc;->b(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    new-instance v0, Lio/appmetrica/analytics/impl/wc;

    iget-object p2, p0, Lio/appmetrica/analytics/impl/ri;->f:Lio/appmetrica/analytics/impl/Gc;

    invoke-direct {v0, p2}, Lio/appmetrica/analytics/impl/wc;-><init>(Lio/appmetrica/analytics/impl/Gc;)V

    new-instance p2, Lio/appmetrica/analytics/impl/Cb;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ri;->d:Landroid/os/Handler;

    invoke-direct {p2, v1, v0}, Lio/appmetrica/analytics/impl/Cb;-><init>(Landroid/os/Handler;Lio/appmetrica/analytics/impl/W2;)V

    iput-object p2, v0, Lio/appmetrica/analytics/impl/W2;->i:Lio/appmetrica/analytics/impl/Cb;

    iget-object p2, p0, Lio/appmetrica/analytics/impl/ri;->e:Lio/appmetrica/analytics/impl/em;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    if-eqz p2, :cond_1

    iget-object v1, v1, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/em;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setUuid(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0, p1, p3}, Lio/appmetrica/analytics/impl/wc;->a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/o0;)V

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/wc;->k()V

    iget-object p2, p0, Lio/appmetrica/analytics/impl/ri;->c:Lio/appmetrica/analytics/impl/Ei;

    new-instance p3, Lio/appmetrica/analytics/impl/qi;

    invoke-direct {p3, v0}, Lio/appmetrica/analytics/impl/qi;-><init>(Lio/appmetrica/analytics/impl/wc;)V

    iget-object p2, p2, Lio/appmetrica/analytics/impl/Ei;->f:Lio/appmetrica/analytics/impl/ok;

    iput-object p3, p2, Lio/appmetrica/analytics/impl/ok;->c:Lio/appmetrica/analytics/impl/sl;

    iget-object p2, p0, Lio/appmetrica/analytics/impl/ri;->g:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ri;->j:Lio/appmetrica/analytics/impl/wc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
