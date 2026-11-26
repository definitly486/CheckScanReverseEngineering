.class public final Lyads/qi5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
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

    iget-boolean p0, p0, Lyads/fe5;->j:Z

    if-eqz p0, :cond_2

    goto :goto_3

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_3
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lyads/yg5;->a()Lyads/zg5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-boolean v0, p0, Lyads/fe5;->i:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, Lyads/qi5;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p0}, Lyads/u50;->a(Lyads/fe5;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lyads/zg5;->l:Lyads/zg5;

    if-nez p0, :cond_1

    sget-object p0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object p1, Lyads/zg5;->l:Lyads/zg5;

    if-nez p1, :cond_0

    new-instance p1, Lyads/zg5;

    invoke-direct {p1}, Lyads/zg5;-><init>()V

    sput-object p1, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    move-object p0, p1

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lyads/zg5;->c()Ljava/lang/Boolean;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_3

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_3
    const/4 p0, 0x1

    return p0
.end method
