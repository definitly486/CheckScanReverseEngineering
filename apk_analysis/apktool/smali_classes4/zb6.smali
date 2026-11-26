.class public final Lzb6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lta6;

    new-instance v1, Laq5;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lsa6;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, p1, p2, v2}, Lnb6;-><init>(Ljava/lang/String;Ljava/lang/String;Lsa6;)V

    iput-object v1, v0, Lta6;->N:Laq5;

    const/16 p1, 0xf

    iput p1, v0, Lnb6;->i:I

    const/4 p2, 0x5

    iput p2, v0, Lnb6;->f:I

    iput p1, v0, Lnb6;->k:I

    const/16 p1, 0x1388

    iput p1, v0, Lnb6;->g:I

    const/4 p1, 0x0

    iput-boolean p1, v0, Lnb6;->c:Z

    iput-boolean p1, v0, Lnb6;->b:Z

    sget-object p1, Lj59;->a:Lj59;

    sget-object p1, Lra6;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p2

    :goto_0
    invoke-static {p0, v0}, Lra6$a;->a(Landroid/content/Context;Lta6;)V

    sget-object p0, Loa6;->I:Loa6$a;

    invoke-virtual {p0, v0}, Loa6$a;->d(Lnb6;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method
