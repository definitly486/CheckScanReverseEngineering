.class public final Landroidx/camera/camera2/pipe/core/MutexesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic access$lockAndSuspend(Lyg5;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/core/MutexesKt;->lockAndSuspend(Lyg5;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$lockWithoutOwner(Lyg5;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/core/MutexesKt;->lockWithoutOwner(Lyg5;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final acquireToken(Lyg5;Le02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg5;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/core/Token;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/camera/camera2/pipe/core/MutexesKt$acquireToken$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/camera/camera2/pipe/core/MutexesKt$acquireToken$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/core/MutexesKt$acquireToken$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/core/MutexesKt$acquireToken$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/core/MutexesKt$acquireToken$1;

    invoke-direct {v0, p1}, Landroidx/camera/camera2/pipe/core/MutexesKt$acquireToken$1;-><init>(Le02;)V

    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/pipe/core/MutexesKt$acquireToken$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/core/MutexesKt$acquireToken$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Landroidx/camera/camera2/pipe/core/MutexesKt$acquireToken$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lyg5;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iput-object p0, v0, Landroidx/camera/camera2/pipe/core/MutexesKt$acquireToken$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/camera/camera2/pipe/core/MutexesKt$acquireToken$1;->label:I

    invoke-interface {p0, v3, v0}, Lyg5;->lock(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    new-instance p1, Landroidx/camera/camera2/pipe/core/MutexToken;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/pipe/core/MutexToken;-><init>(Lyg5;)V

    return-object p1
.end method

.method private static final acquireToken$$forInline(Lyg5;Le02;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg5;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/core/Token;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lyg5;->lock(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    new-instance p1, Landroidx/camera/camera2/pipe/core/MutexToken;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/pipe/core/MutexToken;-><init>(Lyg5;)V

    return-object p1
.end method

.method public static final acquireTokenAndSuspend(Lyg5;Le02;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg5;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/core/Token;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/camera/camera2/pipe/core/MutexesKt$acquireTokenAndSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/camera/camera2/pipe/core/MutexesKt$acquireTokenAndSuspend$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/core/MutexesKt$acquireTokenAndSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/core/MutexesKt$acquireTokenAndSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/core/MutexesKt$acquireTokenAndSuspend$1;

    invoke-direct {v0, p1}, Landroidx/camera/camera2/pipe/core/MutexesKt$acquireTokenAndSuspend$1;-><init>(Le02;)V

    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/pipe/core/MutexesKt$acquireTokenAndSuspend$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/core/MutexesKt$acquireTokenAndSuspend$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/camera/camera2/pipe/core/MutexesKt$acquireTokenAndSuspend$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lyg5;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iput-object p0, v0, Landroidx/camera/camera2/pipe/core/MutexesKt$acquireTokenAndSuspend$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/camera/camera2/pipe/core/MutexesKt$acquireTokenAndSuspend$1;->label:I

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/core/MutexesKt;->access$lockAndSuspend(Lyg5;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    new-instance p1, Landroidx/camera/camera2/pipe/core/MutexToken;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/pipe/core/MutexToken;-><init>(Lyg5;)V

    return-object p1
.end method

.method private static final acquireTokenAndSuspend$$forInline(Lyg5;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg5;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/core/Token;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/core/MutexesKt;->access$lockAndSuspend(Lyg5;Le02;)Ljava/lang/Object;

    new-instance p1, Landroidx/camera/camera2/pipe/core/MutexToken;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/pipe/core/MutexToken;-><init>(Lyg5;)V

    return-object p1
.end method

.method private static final lockAndSuspend(Lyg5;Le02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg5;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/pipe/core/MutexesKt$lockAndSuspend$lockFn$1;->INSTANCE:Landroidx/camera/camera2/pipe/core/MutexesKt$lockAndSuspend$lockFn$1;

    invoke-static {v0, p0, p1}, Lzya;->c(Lbm3;Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    if-eq p0, v0, :cond_0

    invoke-static {p1}, Lzya;->b(Le02;)Le02;

    move-result-object p0

    sget-object v1, Lj59;->a:Lj59;

    invoke-interface {p0, v1}, Le02;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method private static final lockWithoutOwner(Lyg5;Le02;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg5;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lyg5;->lock(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final tryAcquireToken(Lyg5;)Landroidx/camera/camera2/pipe/core/Token;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lyg5;->tryLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroidx/camera/camera2/pipe/core/MutexToken;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/core/MutexToken;-><init>(Lyg5;)V

    :cond_0
    return-object v0
.end method

.method public static final withLockAsync(Landroidx/camera/camera2/pipe/core/CoroutineMutex;Ly22;Lbm3;)Lmk2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/camera/camera2/pipe/core/CoroutineMutex;",
            "Ly22;",
            "Lbm3<",
            "-",
            "Ly22;",
            "-",
            "Le02<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lmk2<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lc32;->UNDISPATCHED:Lc32;

    new-instance v1, Landroidx/camera/camera2/pipe/core/MutexesKt$withLockAsync$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Landroidx/camera/camera2/pipe/core/MutexesKt$withLockAsync$1;-><init>(Landroidx/camera/camera2/pipe/core/CoroutineMutex;Lbm3;Le02;)V

    const/4 p0, 0x1

    invoke-static {p1, v2, v0, v1, p0}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p0

    return-object p0
.end method

.method public static final withLockLaunch(Landroidx/camera/camera2/pipe/core/CoroutineMutex;Ly22;Lbm3;)Lmb4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/core/CoroutineMutex;",
            "Ly22;",
            "Lbm3<",
            "-",
            "Ly22;",
            "-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lmb4;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lc32;->UNDISPATCHED:Lc32;

    new-instance v1, Landroidx/camera/camera2/pipe/core/MutexesKt$withLockLaunch$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Landroidx/camera/camera2/pipe/core/MutexesKt$withLockLaunch$1;-><init>(Landroidx/camera/camera2/pipe/core/CoroutineMutex;Lbm3;Le02;)V

    const/4 p0, 0x1

    invoke-static {p1, v2, v0, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p0

    return-object p0
.end method

.method private static final withLockSuspend(Lyg5;Lll3;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lyg5;",
            "Lll3<",
            "+TT;>;",
            "Le02<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p2}, Landroidx/camera/camera2/pipe/core/MutexesKt;->access$lockAndSuspend(Lyg5;Le02;)Ljava/lang/Object;

    const/4 p2, 0x0

    :try_start_0
    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0, p2}, Lyg5;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0, p2}, Lyg5;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
