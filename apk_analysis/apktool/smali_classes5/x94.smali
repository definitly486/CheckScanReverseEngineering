.class public final Lx94;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.InterruptibleKt$runInterruptible$2"
    f = "Interruptible.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lll3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Lx94;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx94;->m:Lll3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Lx94;

    iget-object p0, p0, Lx94;->m:Lll3;

    invoke-direct {v0, p0, p2}, Lx94;-><init>(Lll3;Le02;)V

    iput-object p1, v0, Lx94;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lx94;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lx94;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lx94;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lx94;->l:Ljava/lang/Object;

    check-cast v0, Ly22;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ly22;->getCoroutineContext()Lo22;

    move-result-object p1

    iget-object p0, p0, Lx94;->m:Lll3;

    :try_start_0
    new-instance v1, Lut8;

    invoke-direct {v1}, Lut8;-><init>()V

    invoke-static {p1}, Lqb4;->f(Lo22;)Lmb4;

    move-result-object p1

    invoke-static {p1, v1}, Lqb4;->g(Lmb4;Lrb4;)Lhp2;

    move-result-object p1

    iput-object p1, v1, Lut8;->g:Lhp2;

    :cond_0
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lut8;->h:J

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 p1, 0x2

    if-eq v4, p1, :cond_3

    const/4 p1, 0x3

    if-ne v4, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lut8;->n(I)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    :cond_3
    :goto_0
    :try_start_1
    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lut8;->m()V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {v1}, Lut8;->m()V

    throw p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string v0, "Blocking call was interrupted due to parent cancellation"

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method
