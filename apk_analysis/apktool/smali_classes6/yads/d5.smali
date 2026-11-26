.class public final Lyads/d5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/f5;

.field public final b:Lyads/e5;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lyads/f5;->d:Lyads/f5;

    if-nez v0, :cond_1

    sget-object v0, Lyads/f5;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/f5;->d:Lyads/f5;

    if-nez v1, :cond_0

    new-instance v1, Lyads/f5;

    invoke-direct {v1}, Lyads/f5;-><init>()V

    sput-object v1, Lyads/f5;->d:Lyads/f5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    new-instance v1, Lyads/e5;

    invoke-direct {v1}, Lyads/e5;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/d5;->a:Lyads/f5;

    iput-object v1, p0, Lyads/d5;->b:Lyads/e5;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 77
    iget-object v0, p0, Lyads/d5;->a:Lyads/f5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    sget-object v1, Lyads/f5;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lyads/f5;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 79
    invoke-virtual {p0, p1, v0}, Lyads/d5;->a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 80
    monitor-exit v1

    throw p0
.end method

.method public final a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 7

    iget-object p0, p0, Lyads/d5;->b:Lyads/e5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lyads/zg5;->l:Lyads/zg5;

    if-nez p0, :cond_1

    sget-object p0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_0

    new-instance v0, Lyads/zg5;

    invoke-direct {v0}, Lyads/zg5;-><init>()V

    sput-object v0, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    move-object p0, v0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    :goto_2
    invoke-virtual {p0, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p0

    if-eqz p0, :cond_2

    iget p0, p0, Lyads/fe5;->a:I

    if-eqz p0, :cond_2

    goto :goto_3

    :cond_2
    const/4 p0, 0x5

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-le p0, p1, :cond_3

    move p0, p1

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p2, p1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    const-string v1, ","

    const/4 v5, 0x0

    const/16 v6, 0x3e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lyads/d5;->a:Lyads/f5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lyads/f5;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lyads/f5;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-virtual {p0, p1, v0}, Lyads/d5;->a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method
