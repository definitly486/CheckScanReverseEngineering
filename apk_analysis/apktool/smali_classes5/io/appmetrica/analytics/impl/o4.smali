.class public final Lio/appmetrica/analytics/impl/o4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lio/appmetrica/analytics/impl/o5;

.field public final c:Ljava/util/HashMap;

.field public final d:Lio/appmetrica/analytics/impl/Ka;

.field public final e:Landroid/content/Context;

.field public final f:Lio/appmetrica/analytics/impl/w4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/o5;)V
    .locals 1

    .line 35
    new-instance v0, Lio/appmetrica/analytics/impl/w4;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/w4;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/appmetrica/analytics/impl/o4;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/w4;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/w4;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/o4;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/o4;->c:Ljava/util/HashMap;

    new-instance v0, Lio/appmetrica/analytics/impl/Ka;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Ka;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/o4;->d:Lio/appmetrica/analytics/impl/Ka;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/o4;->e:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/o4;->b:Lio/appmetrica/analytics/impl/o5;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/o4;->f:Lio/appmetrica/analytics/impl/w4;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/d4;Lio/appmetrica/analytics/impl/B4;)Lio/appmetrica/analytics/impl/t4;
    .locals 5

    .line 91
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o4;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/o4;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/t4;

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lio/appmetrica/analytics/impl/o4;->f:Lio/appmetrica/analytics/impl/w4;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/w4;->a(Lio/appmetrica/analytics/impl/d4;)Lio/appmetrica/analytics/impl/u4;

    move-result-object v1

    iget-object v2, p0, Lio/appmetrica/analytics/impl/o4;->e:Landroid/content/Context;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/o4;->b:Lio/appmetrica/analytics/impl/o5;

    .line 94
    invoke-interface {v1, v2, v3, p1, p2}, Lio/appmetrica/analytics/impl/u4;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/d4;Lio/appmetrica/analytics/impl/B4;)Lio/appmetrica/analytics/impl/t4;

    move-result-object v1

    .line 95
    iget-object p2, p0, Lio/appmetrica/analytics/impl/o4;->c:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object p0, p0, Lio/appmetrica/analytics/impl/o4;->d:Lio/appmetrica/analytics/impl/Ka;

    new-instance p2, Lio/appmetrica/analytics/impl/n4;

    .line 97
    iget-object v2, p1, Lio/appmetrica/analytics/impl/d4;->b:Ljava/lang/String;

    .line 98
    iget-object v3, p1, Lio/appmetrica/analytics/impl/d4;->c:Ljava/lang/Integer;

    .line 99
    iget-object v4, p1, Lio/appmetrica/analytics/impl/d4;->d:Ljava/lang/String;

    .line 100
    invoke-direct {p2, v2, v3, v4}, Lio/appmetrica/analytics/impl/n4;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/impl/Ka;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 102
    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    .line 103
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/o4;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/o4;->d:Lio/appmetrica/analytics/impl/Ka;

    new-instance v2, Lio/appmetrica/analytics/impl/n4;

    invoke-direct {v2, p1, p2, p3}, Lio/appmetrica/analytics/impl/n4;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object p1, v1, Lio/appmetrica/analytics/impl/Ka;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/appmetrica/analytics/impl/d4;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/o4;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/appmetrica/analytics/impl/t4;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/t4;

    invoke-interface {p1}, Lio/appmetrica/analytics/impl/t4;->a()V

    goto :goto_1

    :cond_2
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
