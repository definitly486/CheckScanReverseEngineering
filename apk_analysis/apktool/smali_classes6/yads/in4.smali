.class public abstract Lyads/in4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;)I
    .locals 2

    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_1

    sget-object v0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/zg5;->l:Lyads/zg5;

    if-nez v1, :cond_0

    new-instance v1, Lyads/zg5;

    invoke-direct {v1}, Lyads/zg5;-><init>()V

    sput-object v1, Lyads/zg5;->l:Lyads/zg5;
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
    invoke-virtual {v0, p0}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p0, p0, Lyads/fe5;->v0:Ljava/lang/Integer;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    const/4 p0, 0x0

    :goto_3
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
