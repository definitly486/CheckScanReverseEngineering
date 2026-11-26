.class public final Lio/appmetrica/analytics/impl/Xl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ka;

.field public final b:Ljava/util/HashMap;

.field public c:Lio/appmetrica/analytics/impl/vm;

.field public final d:Lio/appmetrica/analytics/impl/Vl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/Ka;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Ka;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Xl;->a:Lio/appmetrica/analytics/impl/Ka;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Xl;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Xl;->c:Lio/appmetrica/analytics/impl/vm;

    new-instance v0, Lio/appmetrica/analytics/impl/Vl;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/Vl;-><init>(Lio/appmetrica/analytics/impl/Xl;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Xl;->d:Lio/appmetrica/analytics/impl/Vl;

    return-void
.end method

.method public static final a()Lio/appmetrica/analytics/impl/Xl;
    .locals 1

    .line 66
    sget-object v0, Lio/appmetrica/analytics/impl/Wl;->a:Lio/appmetrica/analytics/impl/Xl;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/pm;)Lio/appmetrica/analytics/impl/Qm;
    .locals 5

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Xl;->b:Ljava/util/HashMap;

    iget-object v1, p2, Lio/appmetrica/analytics/impl/b5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/Qm;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Xl;->b:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Xl;->b:Ljava/util/HashMap;

    iget-object v3, p2, Lio/appmetrica/analytics/impl/b5;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/Qm;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/Qm;

    new-instance v1, Lio/appmetrica/analytics/impl/Rm;

    iget-object v3, p2, Lio/appmetrica/analytics/impl/b5;->a:Ljava/lang/String;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/Xl;->d:Lio/appmetrica/analytics/impl/Vl;

    invoke-direct {v1, p1, v3, p3, v4}, Lio/appmetrica/analytics/impl/Rm;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/impl/pm;Lio/appmetrica/analytics/impl/Vl;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Qm;-><init>(Lio/appmetrica/analytics/impl/Rm;)V

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Qm;->f()V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Xl;->b:Ljava/util/HashMap;

    iget-object p1, p2, Lio/appmetrica/analytics/impl/b5;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v0, p3}, Lio/appmetrica/analytics/impl/Qm;->a(Lio/appmetrica/analytics/impl/pm;)V

    :cond_2
    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/gm;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Xl;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Xl;->a:Lio/appmetrica/analytics/impl/Ka;

    .line 69
    iget-object p1, p1, Lio/appmetrica/analytics/impl/b5;->a:Ljava/lang/String;

    .line 70
    invoke-virtual {v1, p1, p2}, Lio/appmetrica/analytics/impl/Ka;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Xl;->c:Lio/appmetrica/analytics/impl/vm;

    if-eqz p0, :cond_0

    .line 72
    invoke-interface {p2, p0}, Lio/appmetrica/analytics/impl/gm;->a(Lio/appmetrica/analytics/impl/vm;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 73
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 74
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
