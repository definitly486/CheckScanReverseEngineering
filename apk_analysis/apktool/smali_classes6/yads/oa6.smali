.class public abstract Lyads/oa6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lyads/pa6;
    .locals 2

    sget-object v0, Lyads/pa6;->c:Lyads/pa6;

    if-nez v0, :cond_1

    sget-object v0, Lyads/pa6;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/pa6;->c:Lyads/pa6;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lyads/cm6;->a(Landroid/content/Context;I)Lyads/e85;

    move-result-object p0

    new-instance v1, Lyads/t75;

    invoke-direct {v1}, Lyads/t75;-><init>()V

    invoke-virtual {p0, v1}, Lyads/e85;->a(Lyads/t75;)V

    new-instance v1, Lyads/pa6;

    invoke-direct {v1, p0}, Lyads/pa6;-><init>(Lyads/e85;)V

    sput-object v1, Lyads/pa6;->c:Lyads/pa6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    return-object v0
.end method
