.class public final Lyads/wh;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lyads/xh;


# direct methods
.method public constructor <init>(Lyads/xh;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/wh;->b:Lyads/xh;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0

    new-instance p1, Lyads/wh;

    iget-object p0, p0, Lyads/wh;->b:Lyads/xh;

    invoke-direct {p1, p0, p2}, Lyads/wh;-><init>(Lyads/xh;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/wh;

    iget-object p0, p0, Lyads/wh;->b:Lyads/xh;

    invoke-direct {p1, p0, p2}, Lyads/wh;-><init>(Lyads/xh;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/wh;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lyads/wh;->b:Lyads/xh;

    iget-object v0, v0, Lyads/xh;->e:Lyads/ef;

    iget-object v0, v0, Lyads/ef;->a:Lyads/zu3;

    const-string v1, "ExitInfoAnrLastReportedTimestamp"

    check-cast v0, Lyads/av3;

    invoke-virtual {v0, v1}, Lyads/av3;->b(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lyads/wh;->b:Lyads/xh;

    iget-object v3, v2, Lyads/xh;->c:Lyads/uh;

    iget-object v2, v2, Lyads/xh;->a:Lyads/mf;

    iget v4, v2, Lyads/mf;->b:I

    iget v2, v2, Lyads/mf;->c:I

    invoke-virtual {v3, v4, v2, v0, v1}, Lyads/uh;->a(IIJ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lyads/wh;->b:Lyads/xh;

    iget-object p0, p0, Lyads/xh;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lyads/wh;->b:Lyads/xh;

    iget-object v1, v1, Lyads/xh;->g:Lyads/gf;

    invoke-static {v0}, Lyads/gf;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lyads/wh;->b:Lyads/xh;

    iget-object p0, p0, Lyads/xh;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object v0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lyads/wh;->b:Lyads/xh;

    iget-object v1, v1, Lyads/xh;->g:Lyads/gf;

    invoke-virtual {v1, v0}, Lyads/gf;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lyads/wh;->b:Lyads/xh;

    iget-object p0, p0, Lyads/xh;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object v0

    :cond_2
    :try_start_3
    iget-object v1, p0, Lyads/wh;->b:Lyads/xh;

    iget-object v1, v1, Lyads/xh;->d:Lyads/vh;

    invoke-virtual {v1, v0}, Lyads/vh;->a(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lyads/wh;->b:Lyads/xh;

    invoke-static {v1, v0}, Lyads/xh;->a(Lyads/xh;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p0, p0, Lyads/wh;->b:Lyads/xh;

    iget-object p0, p0, Lyads/xh;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :goto_0
    iget-object p0, p0, Lyads/wh;->b:Lyads/xh;

    iget-object p0, p0, Lyads/xh;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
