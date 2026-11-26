.class public abstract Lyads/k94;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyads/bf5;)Lyads/m94;
    .locals 5

    sget-object v0, Lyads/m94;->g:Lyads/m94;

    if-nez v0, :cond_1

    sget-object v0, Lyads/m94;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/m94;->g:Lyads/m94;

    if-nez v1, :cond_0

    new-instance v1, Lyads/m94;

    new-instance v2, Lyads/g94;

    new-instance v3, Lyads/h94;

    invoke-direct {v3}, Lyads/h94;-><init>()V

    invoke-direct {v2, v3}, Lyads/g94;-><init>(Lyads/h94;)V

    new-instance v3, Lyads/j94;

    invoke-direct {v3}, Lyads/j94;-><init>()V

    new-instance v4, Lyads/jf5;

    invoke-direct {v4}, Lyads/jf5;-><init>()V

    invoke-direct {v1, v2, v3, v4, p0}, Lyads/m94;-><init>(Lyads/g94;Lyads/j94;Lyads/jf5;Lyads/bf5;)V

    sput-object v1, Lyads/m94;->g:Lyads/m94;

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
    sget-object p0, Lyads/m94;->g:Lyads/m94;

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
