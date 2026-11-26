.class public final Lyads/s4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/z75;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lyads/z75;->b:Lyads/z75;

    if-nez v0, :cond_1

    sget-object v0, Lyads/z75;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/z75;->b:Lyads/z75;

    if-nez v1, :cond_0

    new-instance v1, Lyads/z75;

    invoke-direct {v1}, Lyads/z75;-><init>()V

    sput-object v1, Lyads/z75;->b:Lyads/z75;
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

    iput-object v0, p0, Lyads/s4;->a:Lyads/z75;

    sget v0, Lyads/ya;->b:I

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    iput-object v0, p0, Lyads/s4;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/s4;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lnl3;Lyads/ep;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lc31;

    invoke-static {p2}, Lzya;->b(Le02;)Le02;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v0}, Lc31;->u()V

    new-instance p2, Lyads/r4;

    invoke-direct {p2, v0}, Lyads/r4;-><init>(Lc31;)V

    invoke-interface {p1, p2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/cp;

    iget-object p2, p0, Lyads/s4;->b:Ljava/lang/String;

    iput-object p2, p1, Lyads/r75;->q:Ljava/lang/Object;

    iget-object p2, p0, Lyads/s4;->a:Lyads/z75;

    iget-object v1, p0, Lyads/s4;->c:Landroid/content/Context;

    monitor-enter p2

    :try_start_0
    invoke-static {v1}, Lyads/qn4;->a(Landroid/content/Context;)Lyads/e85;

    move-result-object v1

    invoke-virtual {v1, p1}, Lyads/e85;->a(Lyads/r75;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    new-instance p1, Lyads/q4;

    invoke-direct {p1, p0}, Lyads/q4;-><init>(Lyads/s4;)V

    invoke-virtual {v0, p1}, Lc31;->n(Lnl3;)V

    invoke-virtual {v0}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method
