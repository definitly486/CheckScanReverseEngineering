.class public final Lyads/dd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qg6;


# instance fields
.field public final a:Lyads/zt4;

.field public final b:Lyads/dg6;

.field public final c:Landroidx/collection/ArrayMap;


# direct methods
.method public constructor <init>(Lyads/zt4;Lyads/dg6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/dd;->a:Lyads/zt4;

    iput-object p2, p0, Lyads/dd;->b:Lyads/dg6;

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lyads/dd;->c:Landroidx/collection/ArrayMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .line 38
    iget-object v0, p0, Lyads/dd;->c:Landroidx/collection/ArrayMap;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object p0, p0, Lyads/dd;->c:Landroidx/collection/ArrayMap;

    const-string v1, "Factory is not registered"

    .line 40
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 41
    check-cast p0, Lyads/cd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v0

    .line 43
    invoke-virtual {p0}, Lyads/cd;->a()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 44
    :cond_0
    :try_start_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public final a(Ljava/lang/String;Lyads/gg6;I)V
    .locals 8

    iget-object v1, p0, Lyads/dd;->c:Landroidx/collection/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lyads/dd;->c:Landroidx/collection/ArrayMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lyads/dd;->c:Landroidx/collection/ArrayMap;

    new-instance v2, Lyads/cd;

    iget-object v4, p0, Lyads/dd;->a:Lyads/zt4;

    iget-object v6, p0, Lyads/dd;->b:Lyads/dg6;

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lyads/cd;-><init>(Ljava/lang/String;Lyads/zt4;Lyads/gg6;Lyads/dg6;I)V

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0
.end method
