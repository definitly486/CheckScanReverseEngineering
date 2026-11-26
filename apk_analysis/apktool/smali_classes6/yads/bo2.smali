.class public final Lyads/bo2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lyads/bo2;->a:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a(Lyads/db1;Lyads/qb1;)Lyads/ao2;
    .locals 2

    iget-object v0, p0, Lyads/bo2;->a:Ljava/util/LinkedHashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lyads/bo2;->a:Ljava/util/LinkedHashMap;

    iget-object p2, p2, Lyads/qb1;->a:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lyads/ao2;

    invoke-direct {v1}, Lyads/ao2;-><init>()V

    invoke-interface {p0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    move-object p0, v1

    check-cast p0, Lyads/ao2;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lyads/db1;->h:Ljava/util/List;

    if-nez p1, :cond_2

    :cond_1
    sget-object p1, Lkx2;->b:Lkx2;

    :cond_2
    iput-object p1, p0, Lyads/ao2;->c:Ljava/util/List;

    invoke-virtual {p0}, Lyads/ao2;->a()V

    check-cast v1, Lyads/ao2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final b(Lyads/db1;Lyads/qb1;)Lyads/ao2;
    .locals 1

    iget-object v0, p0, Lyads/bo2;->a:Ljava/util/LinkedHashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lyads/bo2;->a:Ljava/util/LinkedHashMap;

    iget-object p2, p2, Lyads/qb1;->a:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ao2;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_0

    iget-object p1, p1, Lyads/db1;->h:Ljava/util/List;

    if-nez p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    sget-object p1, Lkx2;->b:Lkx2;

    :cond_1
    iput-object p1, p0, Lyads/ao2;->c:Ljava/util/List;

    invoke-virtual {p0}, Lyads/ao2;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0

    throw p0
.end method
