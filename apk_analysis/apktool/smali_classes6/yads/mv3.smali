.class public final Lyads/mv3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lyads/kr3;

    invoke-direct {v1, p0}, Lyads/kr3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lyads/yg5;->a()Lyads/zg5;

    move-result-object v1

    invoke-virtual {v1, p0}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-boolean v1, v1, Lyads/fe5;->g:Z

    if-nez v1, :cond_3

    sget-object v1, Lyads/r73;->b:Lyads/c23;

    if-nez v1, :cond_1

    sget-object v1, Lyads/r73;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lyads/r73;->b:Lyads/c23;

    if-nez v2, :cond_0

    new-instance v2, Lyads/c23;

    const-string v3, "com.google.android.gms.location.LocationServices"

    invoke-direct {v2, p0, v3}, Lyads/c23;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v2, Lyads/r73;->b:Lyads/c23;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v2, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    :cond_1
    :goto_2
    sget-object v1, Lyads/r73;->b:Lyads/c23;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lyads/q93;->a(Landroid/content/Context;)Lyads/c23;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_2
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    return-object v0
.end method
