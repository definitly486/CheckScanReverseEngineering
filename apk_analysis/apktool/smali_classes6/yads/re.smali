.class public abstract Lyads/re;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;Lyads/lm6;)Lyads/q84;
    .locals 2

    sget-object v0, Lyads/r84;->b:Lyads/q84;

    if-nez v0, :cond_1

    sget-object v0, Lyads/q84;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/r84;->b:Lyads/q84;

    if-nez v1, :cond_0

    invoke-static {p0}, Lyads/w60;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lyads/r84;->a:Lyads/zg5;

    invoke-virtual {v1, p0}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lyads/r84;->a(Landroid/content/Context;Lyads/fe5;Lyads/lm6;)Lyads/q84;

    move-result-object p0

    sput-object p0, Lyads/r84;->b:Lyads/q84;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lyads/r84;->b:Lyads/q84;

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
