.class public final Lio/appmetrica/analytics/impl/A1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/A1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Lio/appmetrica/analytics/impl/Bj;->a:Lio/appmetrica/analytics/impl/ek;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/A1;->a:Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/ek;->b:Lio/appmetrica/analytics/impl/oi;

    if-nez v1, :cond_1

    sget-object v1, Lio/appmetrica/analytics/impl/vi;->a:Lio/appmetrica/analytics/impl/wi;

    const-string v2, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-virtual {v1, p0, v2}, Lio/appmetrica/analytics/impl/wi;->a(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/impl/oi;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/impl/ek;->b:Lio/appmetrica/analytics/impl/oi;

    iget-object p0, v0, Lio/appmetrica/analytics/impl/ek;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/ab;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/ek;->b:Lio/appmetrica/analytics/impl/oi;

    invoke-interface {v1, v2}, Lio/appmetrica/analytics/impl/ab;->a(Lio/appmetrica/analytics/impl/bb;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, v0, Lio/appmetrica/analytics/impl/ek;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method
