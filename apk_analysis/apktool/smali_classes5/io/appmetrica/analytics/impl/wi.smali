.class public final Lio/appmetrica/analytics/impl/wi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Lio/appmetrica/analytics/impl/C0;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/C0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/wi;->a:Ljava/util/HashMap;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/wi;->b:Lio/appmetrica/analytics/impl/C0;

    return-void
.end method

.method public static a()Lio/appmetrica/analytics/impl/wi;
    .locals 1

    .line 84
    sget-object v0, Lio/appmetrica/analytics/impl/vi;->a:Lio/appmetrica/analytics/impl/wi;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/impl/oi;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/wi;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/oi;

    if-nez v0, :cond_2

    iget-object v1, p0, Lio/appmetrica/analytics/impl/wi;->a:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/wi;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/oi;

    if-nez v0, :cond_1

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/p4;->c:Lio/appmetrica/analytics/impl/f4;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/f4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/wi;->b:Lio/appmetrica/analytics/impl/C0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lio/appmetrica/analytics/impl/B0;->e:Lio/appmetrica/analytics/impl/B0;

    if-nez v2, :cond_0

    new-instance v2, Lio/appmetrica/analytics/impl/ui;

    invoke-direct {v2, p0, p1}, Lio/appmetrica/analytics/impl/ui;-><init>(Lio/appmetrica/analytics/impl/wi;Landroid/content/Context;)V

    check-cast v0, Lio/appmetrica/analytics/impl/M9;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/M9;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Lio/appmetrica/analytics/impl/oi;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v2, Lio/appmetrica/analytics/impl/C0;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/C0;-><init>()V

    invoke-direct {v0, p1, p2, v2}, Lio/appmetrica/analytics/impl/oi;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/impl/C0;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/wi;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Lio/appmetrica/analytics/impl/oi;->c(Ljava/lang/String;)V

    :cond_1
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-object v0
.end method
