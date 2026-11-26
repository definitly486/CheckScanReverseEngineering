.class public final Lyads/lg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/zg5;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/lg;->a:Lyads/zg5;

    invoke-static {p1}, Lyads/w60;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/lg;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object p0, p0, Lyads/lg;->b:Landroid/content/Context;

    sget-object v0, Lyads/hw3;->i:Lyads/hw3;

    iget-object v0, v0, Lyads/hw3;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Lyads/gw3;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final b()Z
    .locals 5

    iget-object v0, p0, Lyads/lg;->a:Lyads/zg5;

    iget-object v1, p0, Lyads/lg;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lyads/fe5;->u0:Z

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lyads/lg;->b:Landroid/content/Context;

    sget-object v4, Lyads/hw3;->h:Lyads/hw3;

    iget-object v4, v4, Lyads/hw3;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lyads/gw3;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {p0}, Lyads/lg;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Lyads/lg;->a:Lyads/zg5;

    iget-object v1, p0, Lyads/lg;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lyads/fe5;->L:Z

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lyads/lg;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1
.end method
