.class public final Lz68;
.super Lp1;
.source "SourceFile"

# interfaces
.implements Lxg5;
.implements Lhd3;
.implements Lwm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lp1<",
        "La78;",
        ">;",
        "Lxg5<",
        "TT;>;",
        "Lhd3;",
        "Lwm3<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final synthetic g:J


# instance fields
.field private volatile synthetic _state$volatile:Ljava/lang/Object;

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    const-class v1, Lz68;

    const-string v2, "_state$volatile"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lz68;->g:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lp1;-><init>()V

    iput-object p1, p0, Lz68;->_state$volatile:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    sget-object v0, Laq5;->b:Lbh8;

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lz68;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final b()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "MutableStateFlow.resetReplayCache is not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Lo22;ILcu0;)Lhd3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22;",
            "I",
            "Lcu0;",
            ")",
            "Lhd3<",
            "TT;>;"
        }
    .end annotation

    if-ltz p2, :cond_0

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    :goto_0
    sget-object v0, Lcu0;->DROP_OLDEST:Lcu0;

    if-ne p3, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lbt7;->d(Lys7;Lo22;ILcu0;)Lhd3;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid3<",
            "-TT;>;",
            "Le02<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lz68$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lz68$a;

    iget v1, v0, Lz68$a;->s:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lz68$a;->s:I

    goto :goto_0

    :cond_0
    new-instance v0, Lz68$a;

    invoke-direct {v0, p0, p2}, Lz68$a;-><init>(Lz68;Le02;)V

    :goto_0
    iget-object p2, v0, Lz68$a;->q:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lz68$a;->s:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lz68$a;->o:Ljava/lang/Object;

    iget-object v2, v0, Lz68$a;->n:Lmb4;

    iget-object v7, v0, Lz68$a;->m:La78;

    iget-object v8, v0, Lz68$a;->l:Lid3;

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget-object p1, v0, Lz68$a;->p:Ljava/lang/Object;

    iget-object v2, v0, Lz68$a;->n:Lmb4;

    iget-object v7, v0, Lz68$a;->m:La78;

    iget-object v8, v0, Lz68$a;->l:Lid3;

    :try_start_1
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    :cond_3
    iget-object v7, v0, Lz68$a;->m:La78;

    iget-object p1, v0, Lz68$a;->l:Lid3;

    :try_start_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lp1;->g()Lr1;

    move-result-object p2

    move-object v7, p2

    check-cast v7, La78;

    :try_start_3
    instance-of p2, p1, Lub8;

    if-eqz p2, :cond_5

    move-object p2, p1

    check-cast p2, Lub8;

    iput-object p1, v0, Lz68$a;->l:Lid3;

    iput-object v7, v0, Lz68$a;->m:La78;

    iput v6, v0, Lz68$a;->s:I

    invoke-virtual {p2, v0}, Lub8;->c(Lf02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto/16 :goto_8

    :cond_5
    :goto_1
    invoke-interface {v0}, Le02;->getContext()Lo22;

    move-result-object p2

    sget-object v2, Lmb4$a;->b:Lmb4$a;

    invoke-interface {p2, v2}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p2

    check-cast p2, Lmb4;

    move-object v8, p1

    move-object v2, p2

    move-object p1, v5

    :cond_6
    :goto_2
    sget-object p2, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v9, Lz68;->g:J

    invoke-virtual {p2, p0, v9, v10}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lmb4;->isActive()Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_3

    :cond_7
    invoke-interface {v2}, Lmb4;->y()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    throw p1

    :cond_8
    :goto_3
    if-eqz p1, :cond_9

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    :cond_9
    sget-object p1, Laq5;->b:Lbh8;

    if-ne p2, p1, :cond_a

    move-object p1, v5

    goto :goto_4

    :cond_a
    move-object p1, p2

    :goto_4
    iput-object v8, v0, Lz68$a;->l:Lid3;

    iput-object v7, v0, Lz68$a;->m:La78;

    iput-object v2, v0, Lz68$a;->n:Lmb4;

    iput-object v5, v0, Lz68$a;->o:Ljava/lang/Object;

    iput-object p2, v0, Lz68$a;->p:Ljava/lang/Object;

    iput v4, v0, Lz68$a;->s:I

    invoke-interface {v8, p1, v0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    goto :goto_8

    :cond_b
    move-object p1, p2

    :cond_c
    :goto_5
    iget-object p2, v7, La78;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v9, Lpx;->e:Lbh8;

    invoke-virtual {p2, v9}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lpx;->f:Lbh8;

    if-ne p2, v10, :cond_d

    goto :goto_2

    :cond_d
    iput-object v8, v0, Lz68$a;->l:Lid3;

    iput-object v7, v0, Lz68$a;->m:La78;

    iput-object v2, v0, Lz68$a;->n:Lmb4;

    iput-object p1, v0, Lz68$a;->o:Ljava/lang/Object;

    iput-object v5, v0, Lz68$a;->p:Ljava/lang/Object;

    iput v3, v0, Lz68$a;->s:I

    new-instance p2, Lc31;

    invoke-static {v0}, Lzya;->b(Le02;)Le02;

    move-result-object v10

    invoke-direct {p2, v6, v10}, Lc31;-><init>(ILe02;)V

    invoke-virtual {p2}, Lc31;->u()V

    iget-object v10, v7, La78;->a:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_e
    invoke-virtual {v10, v9, p2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    goto :goto_6

    :cond_f
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v11

    if-eq v11, v9, :cond_e

    sget-object v9, Lj59;->a:Lj59;

    invoke-virtual {p2, v9}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :goto_6
    invoke-virtual {p2}, Lc31;->s()Ljava/lang/Object;

    move-result-object p2

    sget-object v9, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p2, v9, :cond_10

    goto :goto_7

    :cond_10
    sget-object p2, Lj59;->a:Lj59;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_7
    if-ne p2, v1, :cond_6

    :goto_8
    return-object v1

    :goto_9
    invoke-virtual {p0, v7}, Lp1;->j(Lr1;)V

    throw p1
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz68;->setValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz68;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Laq5;->b:Lbh8;

    sget-object v1, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lz68;->g:J

    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final h()Lr1;
    .locals 0

    new-instance p0, La78;

    invoke-direct {p0}, La78;-><init>()V

    return-object p0
.end method

.method public final i()[Lr1;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [La78;

    return-object p0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    monitor-enter p0

    :try_start_0
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lz68;->g:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-static {v3, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    :try_start_1
    invoke-static {v3, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    monitor-exit p0

    return v3

    :cond_1
    :try_start_2
    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    iget p1, p0, Lz68;->f:I

    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_b

    add-int/2addr p1, v3

    iput p1, p0, Lz68;->f:I

    iget-object p2, p0, Lp1;->b:[Lr1;

    sget-object v0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    :goto_0
    check-cast p2, [La78;

    if-eqz p2, :cond_9

    array-length v0, p2

    move v1, v4

    :goto_1
    if-ge v1, v0, :cond_9

    aget-object v2, p2, v1

    if-eqz v2, :cond_8

    iget-object v2, v2, La78;->a:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    sget-object v6, Lpx;->f:Lbh8;

    if-ne v5, v6, :cond_3

    goto :goto_3

    :cond_3
    sget-object v7, Lpx;->e:Lbh8;

    if-ne v5, v7, :cond_6

    :cond_4
    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v5, :cond_4

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v5, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    check-cast v5, Lc31;

    sget-object v2, Lj59;->a:Lj59;

    invoke-virtual {v5, v2}, Lc31;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v5, :cond_6

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    monitor-enter p0

    :try_start_3
    iget p2, p0, Lz68;->f:I

    if-ne p2, p1, :cond_a

    add-int/2addr p1, v3

    iput p1, p0, Lz68;->f:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return v3

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_a
    :try_start_4
    iget-object p1, p0, Lp1;->b:[Lr1;

    sget-object v0, Lj59;->a:Lj59;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    move v8, p2

    move-object p2, p1

    move p1, v8

    goto :goto_0

    :goto_4
    monitor-exit p0

    throw p1

    :cond_b
    add-int/lit8 p1, p1, 0x2

    :try_start_5
    iput p1, p0, Lz68;->f:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v3

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Laq5;->b:Lbh8;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lz68;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
