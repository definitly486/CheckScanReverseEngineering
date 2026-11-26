.class public abstract Lyads/e1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lyads/g1;
    .locals 2

    sget-object v0, Lyads/g1;->d:Lyads/g1;

    if-nez v0, :cond_1

    sget-object v0, Lyads/g1;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/g1;->d:Lyads/g1;

    if-nez v1, :cond_0

    new-instance v1, Lyads/g1;

    invoke-direct {v1}, Lyads/g1;-><init>()V

    sput-object v1, Lyads/g1;->d:Lyads/g1;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lyads/g1;->d:Lyads/g1;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    const-string v0, "Required value was null."

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
