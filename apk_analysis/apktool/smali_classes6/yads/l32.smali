.class public final Lyads/l32;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ff3;

.field public final b:Lyads/sv5;

.field public final c:Landroidx/collection/ArrayMap;


# direct methods
.method public constructor <init>(Lyads/ff3;Lyads/sv5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/l32;->a:Lyads/ff3;

    iput-object p2, p0, Lyads/l32;->b:Lyads/sv5;

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lyads/l32;->c:Landroidx/collection/ArrayMap;

    return-void
.end method


# virtual methods
.method public final a(Lyads/qb1;)Lyads/bi2;
    .locals 4

    .line 73
    iget-object v0, p0, Lyads/l32;->c:Landroidx/collection/ArrayMap;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lyads/l32;->c:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/bi2;

    if-nez v1, :cond_1

    .line 75
    iget-object v1, p0, Lyads/l32;->a:Lyads/ff3;

    .line 76
    iget-object v2, p1, Lyads/qb1;->a:Ljava/lang/String;

    .line 77
    iget-object v1, v1, Lyads/ff3;->b:Ljava/util/Map;

    .line 78
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 79
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    new-instance v3, Lyads/bi2;

    invoke-direct {v3, v1, v2}, Lyads/bi2;-><init>(J)V

    move-object v1, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 80
    :goto_0
    iget-object p0, p0, Lyads/l32;->c:Landroidx/collection/ArrayMap;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_1
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final a(Lyads/qb1;JZ)V
    .locals 5

    sget-object v0, Lyads/qb1;->b:Lyads/qb1;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lyads/l32;->c:Landroidx/collection/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lyads/l32;->a(Lyads/qb1;)Lyads/bi2;

    move-result-object v1

    iget-object v2, p0, Lyads/l32;->c:Landroidx/collection/ArrayMap;

    if-nez v1, :cond_0

    new-instance v1, Lyads/bi2;

    invoke-direct {v1, p2, p3}, Lyads/bi2;-><init>(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v3, Lyads/bi2;

    iget-object v1, v1, Lyads/bi2;->b:Landroidx/collection/ArrayMap;

    invoke-direct {v3, p2, p3, v1}, Lyads/bi2;-><init>(JLandroidx/collection/ArrayMap;)V

    move-object v1, v3

    :goto_0
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lyads/l32;->b:Lyads/sv5;

    iget-object v2, p1, Lyads/qb1;->a:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v1, v2, v4, v3}, Lyads/sv5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_1

    iget-object p0, p0, Lyads/l32;->a:Lyads/ff3;

    iget-object p1, p1, Lyads/qb1;->a:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lyads/ff3;->b:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0

    :cond_2
    return-void
.end method
