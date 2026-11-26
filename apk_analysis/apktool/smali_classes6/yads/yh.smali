.class public final Lyads/yh;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lyads/q84;

.field public final synthetic d:Ly22;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/q84;Ly22;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/yh;->b:Landroid/content/Context;

    iput-object p2, p0, Lyads/yh;->c:Lyads/q84;

    iput-object p3, p0, Lyads/yh;->d:Ly22;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2

    new-instance p1, Lyads/yh;

    iget-object v0, p0, Lyads/yh;->b:Landroid/content/Context;

    iget-object v1, p0, Lyads/yh;->c:Lyads/q84;

    iget-object p0, p0, Lyads/yh;->d:Ly22;

    invoke-direct {p1, v0, v1, p0, p2}, Lyads/yh;-><init>(Landroid/content/Context;Lyads/q84;Ly22;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/yh;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/yh;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/yh;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    :try_start_0
    sget-object v0, Lyads/zh;->b:Lyads/xh;

    if-eqz v0, :cond_0

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lyads/zh;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_7

    :cond_0
    :try_start_1
    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_2

    sget-object v1, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_1

    new-instance v0, Lyads/zg5;

    invoke-direct {v0}, Lyads/zg5;-><init>()V

    sput-object v0, Lyads/zg5;->l:Lyads/zg5;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    :cond_2
    :goto_2
    iget-object v1, p0, Lyads/yh;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-boolean v1, v0, Lyads/fe5;->m0:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    new-instance v4, Lyads/mf;

    iget-object v1, v0, Lyads/fe5;->r0:Ljava/util/Set;

    if-nez v1, :cond_3

    sget-object v1, Lox2;->b:Lox2;

    :cond_3
    iget-object v3, v0, Lyads/fe5;->n0:Ljava/lang/Integer;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_3

    :cond_4
    const/16 v3, 0xa

    :goto_3
    iget-object v5, v0, Lyads/fe5;->o0:Ljava/lang/Integer;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_4

    :cond_5
    const/16 v5, 0x5b

    :goto_4
    iget-object v0, v0, Lyads/fe5;->p0:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_5

    :cond_6
    move v0, p1

    :goto_5
    invoke-direct {v4, v1, v3, v5, v0}, Lyads/mf;-><init>(Ljava/util/Set;IIZ)V

    new-instance v6, Lyads/uh;

    iget-object v1, p0, Lyads/yh;->b:Landroid/content/Context;

    invoke-direct {v6, v1}, Lyads/uh;-><init>(Landroid/content/Context;)V

    new-instance v7, Lyads/vh;

    iget-object v1, p0, Lyads/yh;->c:Lyads/q84;

    invoke-direct {v7, v1, v0}, Lyads/vh;-><init>(Lyads/q84;Z)V

    new-instance v8, Lyads/ef;

    iget-object v0, p0, Lyads/yh;->b:Landroid/content/Context;

    const-string v1, "YadPreferenceFile"

    invoke-static {v0, v1}, Lyads/bv3;->a(Landroid/content/Context;Ljava/lang/String;)Lyads/zu3;

    move-result-object v0

    invoke-direct {v8, v0}, Lyads/ef;-><init>(Lyads/zu3;)V

    sget-object v0, Lyads/zh;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Lyads/xh;

    iget-object v5, p0, Lyads/yh;->d:Ly22;

    iget-object v9, p0, Lyads/yh;->c:Lyads/q84;

    invoke-direct/range {v3 .. v9}, Lyads/xh;-><init>(Lyads/mf;Ly22;Lyads/uh;Lyads/vh;Lyads/ef;Lyads/q84;)V

    sput-object v3, Lyads/zh;->b:Lyads/xh;

    sget-object p0, Lyads/zh;->b:Lyads/xh;

    if-eqz p0, :cond_8

    iget-object v0, p0, Lyads/xh;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lyads/xh;->b:Ly22;

    iget-object v1, p0, Lyads/xh;->f:Lyads/j90;

    new-instance v2, Lyads/wh;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lyads/wh;-><init>(Lyads/xh;Le02;)V

    const/4 p0, 0x2

    invoke-static {v0, v1, v3, v2, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    :goto_6
    sget-object p0, Lyads/zh;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :goto_7
    sget-object v0, Lyads/zh;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p0
.end method
