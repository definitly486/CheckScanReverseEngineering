.class public final Lio/appmetrica/analytics/impl/n6;
.super Lio/appmetrica/analytics/impl/Sg;
.source "SourceFile"


# instance fields
.field public final f:Landroid/content/Context;

.field public final g:Lio/appmetrica/analytics/impl/Ch;

.field public final h:Z

.field public final i:Lio/appmetrica/analytics/impl/E6;

.field public final j:Lio/appmetrica/analytics/impl/Z1;

.field public final k:Lio/appmetrica/analytics/impl/z6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/s0;Lio/appmetrica/analytics/impl/sl;Lio/appmetrica/analytics/impl/Ch;Z)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lio/appmetrica/analytics/impl/Sg;-><init>(Lio/appmetrica/analytics/impl/s0;Lio/appmetrica/analytics/impl/sl;Lio/appmetrica/analytics/impl/Ch;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/n6;->f:Landroid/content/Context;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/n6;->g:Lio/appmetrica/analytics/impl/Ch;

    iput-boolean p5, p0, Lio/appmetrica/analytics/impl/n6;->h:Z

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object p2

    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/p4;->i()Lio/appmetrica/analytics/impl/E6;

    move-result-object p2

    iput-object p2, p0, Lio/appmetrica/analytics/impl/n6;->i:Lio/appmetrica/analytics/impl/E6;

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object p2

    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/p4;->f()Lio/appmetrica/analytics/impl/Z1;

    move-result-object p2

    iput-object p2, p0, Lio/appmetrica/analytics/impl/n6;->j:Lio/appmetrica/analytics/impl/Z1;

    new-instance p2, Lio/appmetrica/analytics/impl/z6;

    invoke-direct {p2, p1}, Lio/appmetrica/analytics/impl/z6;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/n6;->k:Lio/appmetrica/analytics/impl/z6;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/s0;Lio/appmetrica/analytics/impl/sl;Lio/appmetrica/analytics/impl/Ch;ZILjh2;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 37
    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/n6;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/s0;Lio/appmetrica/analytics/impl/sl;Lio/appmetrica/analytics/impl/Ch;Z)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/Eh;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/Eh;->c:Z

    iget-object v0, p0, Lio/appmetrica/analytics/impl/n6;->i:Lio/appmetrica/analytics/impl/E6;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/E6;->a:Lio/appmetrica/analytics/impl/Qf;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Qf;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/n6;->j:Lio/appmetrica/analytics/impl/Z1;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/n6;->f:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Lio/appmetrica/analytics/internal/AppMetricaService;

    invoke-static {v2, v1}, Lio/appmetrica/analytics/coreutils/internal/services/PackageManagerUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Lio/appmetrica/analytics/impl/n6;->h:Z

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/n6;->k:Lio/appmetrica/analytics/impl/z6;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/n6;->g:Lio/appmetrica/analytics/impl/Ch;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/z6;->a(Lio/appmetrica/analytics/impl/Ch;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Eh;->a:Lio/appmetrica/analytics/impl/s0;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/s0;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/Eh;->c:Z

    invoke-super {p0}, Lio/appmetrica/analytics/impl/Eh;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/n6;->k:Lio/appmetrica/analytics/impl/z6;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/n6;->g:Lio/appmetrica/analytics/impl/Ch;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/z6;->a(Lio/appmetrica/analytics/impl/Ch;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/n6;->a()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
