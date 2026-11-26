.class public abstract La0;
.super Lsb4;
.source "SourceFile"

# interfaces
.implements Le02;
.implements Ly22;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lsb4;",
        "Le02<",
        "TT;>;",
        "Ly22;"
    }
.end annotation


# instance fields
.field public final e:Lo22;


# direct methods
.method public constructor <init>(Lo22;ZZ)V
    .locals 0

    invoke-direct {p0, p3}, Lsb4;-><init>(Z)V

    if-eqz p2, :cond_0

    sget-object p2, Lmb4$a;->b:Lmb4$a;

    invoke-interface {p1, p2}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p2

    check-cast p2, Lmb4;

    invoke-virtual {p0, p2}, Lsb4;->O(Lmb4;)V

    :cond_0
    invoke-interface {p1, p0}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p1

    iput-object p1, p0, La0;->e:Lo22;

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, " was cancelled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final N(Lkotlinx/coroutines/CompletionHandlerException;)V
    .locals 0

    iget-object p0, p0, La0;->e:Lo22;

    invoke-static {p0, p1}, Lv22;->a(Lo22;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b0(Ljava/lang/Object;)V
    .locals 4

    instance-of v0, p1, Lyq1;

    if-eqz v0, :cond_1

    check-cast p1, Lyq1;

    iget-object v0, p1, Lyq1;->a:Ljava/lang/Throwable;

    sget-object v1, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lyq1;->b:J

    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, La0;->k0(Ljava/lang/Throwable;Z)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, La0;->l0(Ljava/lang/Object;)V

    return-void
.end method

.method public final getContext()Lo22;
    .locals 0

    iget-object p0, p0, La0;->e:Lo22;

    return-object p0
.end method

.method public final getCoroutineContext()Lo22;
    .locals 0

    iget-object p0, p0, La0;->e:Lo22;

    return-object p0
.end method

.method public k0(Ljava/lang/Throwable;Z)V
    .locals 0

    return-void
.end method

.method public l0(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final m0(Lc32;La0;Lbm3;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lc32$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_1
    :try_start_0
    iget-object p1, p0, La0;->e:Lo22;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Llt8;->c(Lo22;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    instance-of v2, p3, Lcd0;

    if-nez v2, :cond_2

    invoke-static {p3, p2, p0}, Lzya;->c(Lbm3;Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_2
    invoke-static {v0, p3}, Lv39;->c(ILjava/lang/Object;)V

    check-cast p3, Lbm3;

    invoke-interface {p3, p2, p0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {p1, v1}, Llt8;->a(Lo22;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-eq p2, p1, :cond_3

    invoke-virtual {p0, p2}, La0;->resumeWith(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_2
    :try_start_3
    invoke-static {p1, v1}, Llt8;->a(Lo22;Ljava/lang/Object;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    instance-of p2, p1, Lkotlinx/coroutines/DispatchException;

    if-eqz p2, :cond_4

    check-cast p1, Lkotlinx/coroutines/DispatchException;

    iget-object p1, p1, Lkotlinx/coroutines/DispatchException;->b:Ljava/lang/Throwable;

    :cond_4
    new-instance p2, Lk57$a;

    invoke-direct {p2, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, La0;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p0, p3}, Lzya;->a(Le02;Le02;Lbm3;)Le02;

    move-result-object p0

    invoke-static {p0}, Lzya;->b(Le02;)Le02;

    move-result-object p0

    sget-object p1, Lj59;->a:Lj59;

    invoke-interface {p0, p1}, Le02;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_6
    :try_start_4
    invoke-static {p2, p0, p3}, Lzya;->a(Le02;Le02;Lbm3;)Le02;

    move-result-object p1

    invoke-static {p1}, Lzya;->b(Le02;)Le02;

    move-result-object p1

    sget-object p2, Lj59;->a:Lj59;

    invoke-static {p1, p2}, Lgo2;->f(Le02;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    instance-of p2, p1, Lkotlinx/coroutines/DispatchException;

    if-eqz p2, :cond_7

    check-cast p1, Lkotlinx/coroutines/DispatchException;

    iget-object p1, p1, Lkotlinx/coroutines/DispatchException;->b:Ljava/lang/Throwable;

    :cond_7
    new-instance p2, Lk57$a;

    invoke-direct {p2, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, La0;->resumeWith(Ljava/lang/Object;)V

    throw p1
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lyq1;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lyq1;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    invoke-virtual {p0, p1}, Lsb4;->W(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lvp2;->d:Lbh8;

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, La0;->t(Ljava/lang/Object;)V

    return-void
.end method
