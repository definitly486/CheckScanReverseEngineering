.class public final Lio/appmetrica/analytics/impl/Gc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/Ei;

.field public final c:Lio/appmetrica/analytics/impl/Nd;

.field public final d:Lio/appmetrica/analytics/impl/Z9;

.field public final e:Lio/appmetrica/analytics/impl/O8;

.field public final f:Lio/appmetrica/analytics/impl/Mh;

.field public final g:Lio/appmetrica/analytics/impl/t2;

.field public final h:Lio/appmetrica/analytics/impl/E6;

.field public final i:Lio/appmetrica/analytics/impl/q;

.field public final j:Lio/appmetrica/analytics/impl/Ve;

.field public final k:Lio/appmetrica/analytics/impl/do;

.field public final l:Lio/appmetrica/analytics/impl/Hg;

.field public final m:Lio/appmetrica/analytics/impl/I6;

.field public final n:Lio/appmetrica/analytics/impl/g0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Pf;Lio/appmetrica/analytics/impl/Ei;Lio/appmetrica/analytics/impl/em;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Gc;->a:Landroid/content/Context;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Gc;->b:Lio/appmetrica/analytics/impl/Ei;

    new-instance p3, Lio/appmetrica/analytics/impl/Nd;

    invoke-direct {p3, p2}, Lio/appmetrica/analytics/impl/Nd;-><init>(Lio/appmetrica/analytics/impl/Pf;)V

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Gc;->c:Lio/appmetrica/analytics/impl/Nd;

    new-instance p3, Lio/appmetrica/analytics/impl/Z9;

    invoke-direct {p3, p1}, Lio/appmetrica/analytics/impl/Z9;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Gc;->d:Lio/appmetrica/analytics/impl/Z9;

    new-instance p1, Lio/appmetrica/analytics/impl/O8;

    new-instance p4, Lio/appmetrica/analytics/impl/Kl;

    invoke-static {}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getMainPublicOrAnonymousLogger()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v0

    const-string v1, "Crash Environment"

    invoke-direct {p4, v0, v1}, Lio/appmetrica/analytics/impl/Kl;-><init>(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Ljava/lang/String;)V

    invoke-direct {p1, p4}, Lio/appmetrica/analytics/impl/O8;-><init>(Lio/appmetrica/analytics/impl/Kl;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Gc;->e:Lio/appmetrica/analytics/impl/O8;

    new-instance p4, Lio/appmetrica/analytics/impl/Mh;

    new-instance v0, Lio/appmetrica/analytics/internal/CounterConfiguration;

    sget-object v1, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->MAIN:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;)V

    invoke-direct {p4, p2, v0, p1}, Lio/appmetrica/analytics/impl/Mh;-><init>(Lio/appmetrica/analytics/impl/Pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Lio/appmetrica/analytics/impl/O8;)V

    iput-object p4, p0, Lio/appmetrica/analytics/impl/Gc;->f:Lio/appmetrica/analytics/impl/Mh;

    new-instance p1, Lio/appmetrica/analytics/impl/t2;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/t2;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Gc;->g:Lio/appmetrica/analytics/impl/t2;

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/p4;->n()Lio/appmetrica/analytics/impl/E6;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Gc;->h:Lio/appmetrica/analytics/impl/E6;

    new-instance p1, Lio/appmetrica/analytics/impl/q;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/q;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Gc;->i:Lio/appmetrica/analytics/impl/q;

    new-instance p1, Lio/appmetrica/analytics/impl/Ve;

    invoke-direct {p1, p3}, Lio/appmetrica/analytics/impl/Ve;-><init>(Lio/appmetrica/analytics/impl/Z9;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Gc;->j:Lio/appmetrica/analytics/impl/Ve;

    new-instance p1, Lio/appmetrica/analytics/impl/do;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/do;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Gc;->k:Lio/appmetrica/analytics/impl/do;

    new-instance p1, Lio/appmetrica/analytics/impl/Hg;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Hg;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Gc;->l:Lio/appmetrica/analytics/impl/Hg;

    new-instance p1, Lio/appmetrica/analytics/impl/I6;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/I6;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Gc;->m:Lio/appmetrica/analytics/impl/I6;

    new-instance p1, Lio/appmetrica/analytics/impl/g0;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/g0;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Gc;->n:Lio/appmetrica/analytics/impl/g0;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/g0;
    .locals 0

    .line 70
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gc;->n:Lio/appmetrica/analytics/impl/g0;

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Update anonymous config with value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/AppMetricaConfig;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Gc;->f:Lio/appmetrica/analytics/impl/Mh;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->applyFromAnonymousConfig(Lio/appmetrica/analytics/AppMetricaConfig;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Gc;->f:Lio/appmetrica/analytics/impl/Mh;

    iget-object v2, p1, Lio/appmetrica/analytics/AppMetricaConfig;->userProfileID:Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    iput-object v2, v0, Lio/appmetrica/analytics/impl/Mh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gc;->f:Lio/appmetrica/analytics/impl/Mh;

    new-instance v0, Lio/appmetrica/analytics/impl/Hf;

    iget-object v2, p1, Lio/appmetrica/analytics/AppMetricaConfig;->preloadInfo:Lio/appmetrica/analytics/PreloadInfo;

    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->additionalConfig:Ljava/util/Map;

    const-string v3, "YMM_preloadInfoAutoTracking"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_0
    invoke-direct {v0, v2, p2, v1}, Lio/appmetrica/analytics/impl/Hf;-><init>(Lio/appmetrica/analytics/PreloadInfo;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Z)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mh;->d:Lio/appmetrica/analytics/impl/Hf;

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final b()Landroid/content/Context;
    .locals 0

    .line 105
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gc;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final b(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Update config with value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/AppMetricaConfig;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Gc;->f:Lio/appmetrica/analytics/impl/Mh;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->applyFromConfig(Lio/appmetrica/analytics/AppMetricaConfig;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Gc;->f:Lio/appmetrica/analytics/impl/Mh;

    iget-object v2, p1, Lio/appmetrica/analytics/AppMetricaConfig;->userProfileID:Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    iput-object v2, v0, Lio/appmetrica/analytics/impl/Mh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gc;->f:Lio/appmetrica/analytics/impl/Mh;

    new-instance v0, Lio/appmetrica/analytics/impl/Hf;

    iget-object v2, p1, Lio/appmetrica/analytics/AppMetricaConfig;->preloadInfo:Lio/appmetrica/analytics/PreloadInfo;

    iget-object v3, p1, Lio/appmetrica/analytics/AppMetricaConfig;->additionalConfig:Ljava/util/Map;

    const-string v4, "YMM_preloadInfoAutoTracking"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-direct {v0, v2, p2, v3}, Lio/appmetrica/analytics/impl/Hf;-><init>(Lio/appmetrica/analytics/PreloadInfo;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Z)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mh;->d:Lio/appmetrica/analytics/impl/Hf;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Actual session timeout is "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->sessionTimeout:Ljava/lang/Integer;

    if-nez p1, :cond_1

    const/16 p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final c()Lio/appmetrica/analytics/impl/I6;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gc;->m:Lio/appmetrica/analytics/impl/I6;

    return-object p0
.end method

.method public final d()Lio/appmetrica/analytics/impl/Z9;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gc;->d:Lio/appmetrica/analytics/impl/Z9;

    return-object p0
.end method

.method public final e()Lio/appmetrica/analytics/impl/Ve;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gc;->j:Lio/appmetrica/analytics/impl/Ve;

    return-object p0
.end method

.method public final f()Lio/appmetrica/analytics/impl/E6;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gc;->h:Lio/appmetrica/analytics/impl/E6;

    return-object p0
.end method

.method public final g()Lio/appmetrica/analytics/impl/Hg;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gc;->l:Lio/appmetrica/analytics/impl/Hg;

    return-object p0
.end method

.method public final h()Lio/appmetrica/analytics/impl/Mh;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gc;->f:Lio/appmetrica/analytics/impl/Mh;

    return-object p0
.end method

.method public final i()Lio/appmetrica/analytics/impl/Ei;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gc;->b:Lio/appmetrica/analytics/impl/Ei;

    return-object p0
.end method

.method public final j()Lio/appmetrica/analytics/impl/do;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gc;->k:Lio/appmetrica/analytics/impl/do;

    return-object p0
.end method
