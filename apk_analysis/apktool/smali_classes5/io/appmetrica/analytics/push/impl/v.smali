.class public final Lio/appmetrica/analytics/push/impl/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public volatile b:Lio/appmetrica/analytics/push/impl/u0;

.field public volatile c:Lio/appmetrica/analytics/push/impl/v0;

.field public volatile d:Lio/appmetrica/analytics/push/impl/j1;

.field public volatile e:Lio/appmetrica/analytics/push/impl/N;

.field public volatile f:Lio/appmetrica/analytics/push/impl/u;

.field public volatile g:Lio/appmetrica/analytics/push/settings/AutoTrackingConfiguration;

.field public volatile h:Lio/appmetrica/analytics/push/impl/L1;

.field public volatile i:Lio/appmetrica/analytics/push/impl/W1;

.field public volatile j:Lio/appmetrica/analytics/push/impl/z1;

.field public volatile k:Lio/appmetrica/analytics/push/impl/l1;

.field public volatile l:Lio/appmetrica/analytics/push/impl/h1;

.field public volatile m:Lio/appmetrica/analytics/push/impl/Q1;

.field public volatile n:Lio/appmetrica/analytics/push/impl/K1;

.field public o:Lio/appmetrica/analytics/push/settings/PassportUidProvider;

.field public final p:Landroid/content/Context;

.field public final q:Lio/appmetrica/analytics/push/impl/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/push/impl/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/push/impl/v;->a:Ljava/lang/Object;

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/v;->p:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/push/impl/v;->q:Lio/appmetrica/analytics/push/impl/r;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/push/settings/AutoTrackingConfiguration;
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/v;->g:Lio/appmetrica/analytics/push/settings/AutoTrackingConfiguration;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/v;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/v;->g:Lio/appmetrica/analytics/push/settings/AutoTrackingConfiguration;

    if-nez v1, :cond_0

    invoke-static {}, Lio/appmetrica/analytics/push/settings/AutoTrackingConfiguration;->newBuilder()Lio/appmetrica/analytics/push/settings/AutoTrackingConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/push/settings/AutoTrackingConfiguration$Builder;->build()Lio/appmetrica/analytics/push/settings/AutoTrackingConfiguration;

    move-result-object v1

    iput-object v1, p0, Lio/appmetrica/analytics/push/impl/v;->g:Lio/appmetrica/analytics/push/settings/AutoTrackingConfiguration;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/v;->g:Lio/appmetrica/analytics/push/settings/AutoTrackingConfiguration;

    return-object p0
.end method

.method public final b()Lio/appmetrica/analytics/push/impl/j1;
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/v;->d:Lio/appmetrica/analytics/push/impl/j1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/v;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/v;->d:Lio/appmetrica/analytics/push/impl/j1;

    if-nez v1, :cond_0

    new-instance v1, Lio/appmetrica/analytics/push/impl/j1;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/impl/j1;-><init>()V

    iput-object v1, p0, Lio/appmetrica/analytics/push/impl/v;->d:Lio/appmetrica/analytics/push/impl/j1;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/v;->d:Lio/appmetrica/analytics/push/impl/j1;

    return-object p0
.end method

.method public final c()Lio/appmetrica/analytics/push/impl/L1;
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/v;->h:Lio/appmetrica/analytics/push/impl/L1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/v;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/v;->h:Lio/appmetrica/analytics/push/impl/L1;

    if-nez v1, :cond_0

    new-instance v1, Lio/appmetrica/analytics/push/impl/L1;

    iget-object v2, p0, Lio/appmetrica/analytics/push/impl/v;->p:Landroid/content/Context;

    const-string v3, ".STORAGE"

    invoke-direct {v1, v2, v3}, Lio/appmetrica/analytics/push/impl/L1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lio/appmetrica/analytics/push/impl/v;->h:Lio/appmetrica/analytics/push/impl/L1;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/v;->h:Lio/appmetrica/analytics/push/impl/L1;

    return-object p0
.end method

.method public final d()Lio/appmetrica/analytics/push/impl/T0;
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/v;->f:Lio/appmetrica/analytics/push/impl/u;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/v;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/v;->f:Lio/appmetrica/analytics/push/impl/u;

    if-nez v1, :cond_0

    new-instance v1, Lio/appmetrica/analytics/push/impl/u;

    iget-object v2, p0, Lio/appmetrica/analytics/push/impl/v;->p:Landroid/content/Context;

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/v;->c()Lio/appmetrica/analytics/push/impl/L1;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/appmetrica/analytics/push/impl/u;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/push/impl/L1;)V

    iput-object v1, p0, Lio/appmetrica/analytics/push/impl/v;->f:Lio/appmetrica/analytics/push/impl/u;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/v;->f:Lio/appmetrica/analytics/push/impl/u;

    return-object p0
.end method
