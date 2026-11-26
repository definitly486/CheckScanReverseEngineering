.class public final Lio/appmetrica/analytics/impl/mg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Lio/appmetrica/analytics/impl/Ei;

.field public final c:Lio/appmetrica/analytics/impl/if;

.field public final d:Lio/appmetrica/analytics/impl/X7;

.field public final e:Lio/appmetrica/analytics/impl/tg;

.field public final f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Ei;Lio/appmetrica/analytics/impl/if;Landroid/os/Handler;)V
    .locals 1

    .line 19
    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/if;->s()Z

    move-result v0

    .line 20
    invoke-direct {p0, p1, p2, p3, v0}, Lio/appmetrica/analytics/impl/mg;-><init>(Lio/appmetrica/analytics/impl/Ei;Lio/appmetrica/analytics/impl/if;Landroid/os/Handler;Z)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Ei;Lio/appmetrica/analytics/impl/if;Landroid/os/Handler;Z)V
    .locals 7

    new-instance v5, Lio/appmetrica/analytics/impl/X7;

    invoke-direct {v5, p4}, Lio/appmetrica/analytics/impl/X7;-><init>(Z)V

    new-instance v6, Lio/appmetrica/analytics/impl/tg;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/tg;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/mg;-><init>(Lio/appmetrica/analytics/impl/Ei;Lio/appmetrica/analytics/impl/if;Landroid/os/Handler;ZLio/appmetrica/analytics/impl/X7;Lio/appmetrica/analytics/impl/tg;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Ei;Lio/appmetrica/analytics/impl/if;Landroid/os/Handler;ZLio/appmetrica/analytics/impl/X7;Lio/appmetrica/analytics/impl/tg;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lio/appmetrica/analytics/impl/mg;->b:Lio/appmetrica/analytics/impl/Ei;

    .line 23
    iput-object p2, p0, Lio/appmetrica/analytics/impl/mg;->c:Lio/appmetrica/analytics/impl/if;

    .line 24
    iput-boolean p4, p0, Lio/appmetrica/analytics/impl/mg;->a:Z

    .line 25
    iput-object p5, p0, Lio/appmetrica/analytics/impl/mg;->d:Lio/appmetrica/analytics/impl/X7;

    .line 26
    iput-object p6, p0, Lio/appmetrica/analytics/impl/mg;->e:Lio/appmetrica/analytics/impl/tg;

    .line 27
    iput-object p3, p0, Lio/appmetrica/analytics/impl/mg;->f:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/mg;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/mg;->b:Lio/appmetrica/analytics/impl/Ei;

    new-instance v1, Lio/appmetrica/analytics/impl/zg;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/mg;->f:Landroid/os/Handler;

    invoke-direct {v1, v2, p0}, Lio/appmetrica/analytics/impl/zg;-><init>(Landroid/os/Handler;Lio/appmetrica/analytics/impl/mg;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "io.appmetrica.analytics.impl.referrer.common.ReferrerResultReceiver"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v8

    sget-object v1, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    new-instance v3, Lio/appmetrica/analytics/impl/a4;

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const/16 v6, 0x1002

    const/4 v7, 0x0

    const-string v4, ""

    const-string v5, ""

    invoke-direct/range {v3 .. v8}, Lio/appmetrica/analytics/impl/a4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iput-object p0, v3, Lio/appmetrica/analytics/impl/a6;->m:Landroid/os/Bundle;

    iget-object p0, v0, Lio/appmetrica/analytics/impl/Ei;->a:Lio/appmetrica/analytics/impl/Q4;

    invoke-static {v3, p0}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p0, v3, v2}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;ILjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Lio/appmetrica/analytics/DeferredDeeplinkListener;)V
    .locals 1

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mg;->d:Lio/appmetrica/analytics/impl/X7;

    .line 76
    iput-object p1, v0, Lio/appmetrica/analytics/impl/X7;->b:Lio/appmetrica/analytics/DeferredDeeplinkListener;

    .line 77
    iget-boolean p1, v0, Lio/appmetrica/analytics/impl/X7;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 78
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/X7;->a(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/X7;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :goto_0
    :try_start_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/mg;->c:Lio/appmetrica/analytics/impl/if;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/if;->u()Lio/appmetrica/analytics/impl/if;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 81
    :goto_1
    :try_start_2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mg;->c:Lio/appmetrica/analytics/impl/if;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/if;->u()Lio/appmetrica/analytics/impl/if;

    .line 82
    throw p1

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final declared-synchronized a(Lio/appmetrica/analytics/DeferredDeeplinkParametersListener;)V
    .locals 1

    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mg;->d:Lio/appmetrica/analytics/impl/X7;

    .line 68
    iput-object p1, v0, Lio/appmetrica/analytics/impl/X7;->c:Lio/appmetrica/analytics/DeferredDeeplinkParametersListener;

    .line 69
    iget-boolean p1, v0, Lio/appmetrica/analytics/impl/X7;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 70
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/X7;->a(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 71
    :cond_0
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/X7;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_0
    :try_start_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/mg;->c:Lio/appmetrica/analytics/impl/if;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/if;->u()Lio/appmetrica/analytics/impl/if;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 73
    :goto_1
    :try_start_2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mg;->c:Lio/appmetrica/analytics/impl/if;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/if;->u()Lio/appmetrica/analytics/impl/if;

    .line 74
    throw p1

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/og;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p1, Lio/appmetrica/analytics/impl/og;->a:Ljava/lang/String;

    .line 61
    :goto_0
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/mg;->a:Z

    if-nez v0, :cond_1

    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mg;->d:Lio/appmetrica/analytics/impl/X7;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/mg;->e:Lio/appmetrica/analytics/impl/tg;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/tg;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/V7;

    move-result-object p1

    .line 64
    iput-object p1, v0, Lio/appmetrica/analytics/impl/X7;->d:Lio/appmetrica/analytics/impl/V7;

    .line 65
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/X7;->a()V

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method
