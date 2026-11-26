.class public abstract Lyads/jv3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lyads/kv3;
    .locals 2

    sget-object v0, Lyads/kv3;->g:Lyads/kv3;

    if-nez v0, :cond_1

    sget-object v0, Lyads/kv3;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/kv3;->g:Lyads/kv3;

    if-nez v1, :cond_0

    new-instance v1, Lyads/kv3;

    invoke-direct {v1, p0}, Lyads/kv3;-><init>(Landroid/content/Context;)V

    sput-object v1, Lyads/kv3;->g:Lyads/kv3;

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
    sget-object p0, Lyads/kv3;->g:Lyads/kv3;

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
