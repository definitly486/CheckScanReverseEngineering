.class public final Landroidx/camera/camera2/pipe/internal/GraphSessionLock;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/camera/camera2/pipe/config/CameraGraphScope;
.end annotation


# instance fields
.field private final mutex:Lyg5;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lch5;

    invoke-direct {v0}, Lch5;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->mutex:Lyg5;

    return-void
.end method

.method public static synthetic a(Lnb4;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->asyncUndispatched$lambda$0(Lhq1;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMutex$p(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;)Lyg5;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->mutex:Lyg5;

    return-object p0
.end method

.method public static final synthetic access$use(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Landroidx/camera/camera2/pipe/core/Token;Lbm3;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->use(Landroidx/camera/camera2/pipe/core/Token;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final asyncUndispatched(Ly22;Lbm3;)Lmk2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
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

    invoke-interface {p1}, Ly22;->getCoroutineContext()Lo22;

    move-result-object p0

    sget-object v0, Lmb4$a;->b:Lmb4$a;

    invoke-interface {p0, v0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p0

    check-cast p0, Lmb4;

    new-instance v0, Lnb4;

    invoke-direct {v0, p0}, Lnb4;-><init>(Lmb4;)V

    invoke-interface {p1}, Ly22;->getCoroutineContext()Lo22;

    move-result-object p0

    invoke-interface {p0, v0}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p0

    sget-object v1, Lc32;->UNDISPATCHED:Lc32;

    new-instance v2, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$asyncUndispatched$result$1;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$asyncUndispatched$result$1;-><init>(Lbm3;Le02;)V

    invoke-static {p1, p0}, Lq22;->b(Ly22;Lo22;)Lo22;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lc32;->LAZY:Lc32;

    if-ne v1, p1, :cond_0

    new-instance p1, Lel4;

    invoke-direct {p1, p0, v2}, Lel4;-><init>(Lo22;Lbm3;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lnk2;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2, p2}, La0;-><init>(Lo22;ZZ)V

    :goto_0
    invoke-virtual {p1, v1, p1, v2}, La0;->m0(Lc32;La0;Lbm3;)V

    new-instance p0, Lvr3;

    const/4 p2, 0x0

    invoke-direct {p0, v0, p2}, Lvr3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p0}, Lsb4;->g(Lnl3;)Lhp2;

    return-object p1
.end method

.method private static final asyncUndispatched$lambda$0(Lhq1;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-interface {p0}, Lhq1;->complete()Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final use(Landroidx/camera/camera2/pipe/core/Token;Lbm3;Le02;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/camera/camera2/pipe/core/Token;",
            "Lbm3<",
            "-",
            "Landroidx/camera/camera2/pipe/core/Token;",
            "-",
            "Le02<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$use$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$use$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$use$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$use$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$use$1;

    invoke-direct {v0, p0, p3}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$use$1;-><init>(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Le02;)V

    :goto_0
    iget-object p0, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$use$1;->result:Ljava/lang/Object;

    sget-object p3, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$use$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$use$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/pipe/core/Token;

    :try_start_0
    invoke-static {p0}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p0}, Lr57;->b(Ljava/lang/Object;)V

    :try_start_1
    iput-object p1, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$use$1;->L$0:Ljava/lang/Object;

    iput v2, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$use$1;->label:I

    invoke-interface {p2, p1, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, p3, :cond_3

    return-object p3

    :cond_3
    :goto_1
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/core/Token;->release()Z

    return-object p0

    :goto_2
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/core/Token;->release()Z

    throw p0
.end method


# virtual methods
.method public final acquireToken$camera_camera2_pipe(Le02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/core/Token;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$acquireToken$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$acquireToken$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$acquireToken$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$acquireToken$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$acquireToken$1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$acquireToken$1;-><init>(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Le02;)V

    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$acquireToken$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$acquireToken$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$acquireToken$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lyg5;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->mutex:Lyg5;

    iput-object p0, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$acquireToken$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$acquireToken$1;->label:I

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

.method public final tryAcquireToken$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/Token;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->mutex:Lyg5;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/core/MutexesKt;->tryAcquireToken(Lyg5;)Landroidx/camera/camera2/pipe/core/Token;

    move-result-object p0

    return-object p0
.end method

.method public final withTokenIn$camera_camera2_pipe(Ly22;Lbm3;)Lmk2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ly22;",
            "Lbm3<",
            "-",
            "Landroidx/camera/camera2/pipe/core/Token;",
            "-",
            "Le02<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lmk2<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;-><init>(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Lbm3;Le02;)V

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->asyncUndispatched(Ly22;Lbm3;)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public final withTokenInAsync$camera_camera2_pipe(Ly22;Lbm3;)Lmk2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ly22;",
            "Lbm3<",
            "-",
            "Landroidx/camera/camera2/pipe/core/Token;",
            "-",
            "Le02<",
            "-",
            "Lmk2<",
            "+TT;>;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lmk2<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;-><init>(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Lbm3;Le02;)V

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->asyncUndispatched(Ly22;Lbm3;)Lmk2;

    move-result-object p0

    return-object p0
.end method
