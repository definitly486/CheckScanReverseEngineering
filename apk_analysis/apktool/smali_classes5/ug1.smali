.class public final Lug1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.domain.interactor.chequeRequestQueue.ChequeRequestQueueInteractor$splashTimerFlow$1"
    f = "ChequeRequestQueueInteractor.kt"
    l = {
        0xd0,
        0xd1
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "Ljava/lang/Long;",
        ">;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:J

.field public m:I

.field public synthetic n:Ljava/lang/Object;


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

    new-instance p0, Lug1;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lpg8;-><init>(ILe02;)V

    iput-object p1, p0, Lug1;->n:Ljava/lang/Object;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lug1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lug1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lug1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lug1;->m:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-wide v4, p0, Lug1;->l:J

    iget-object v1, p0, Lug1;->n:Ljava/lang/Object;

    check-cast v1, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    :cond_0
    move-object p1, v1

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-wide v4, p0, Lug1;->l:J

    iget-object v1, p0, Lug1;->n:Ljava/lang/Object;

    check-cast v1, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lug1;->n:Ljava/lang/Object;

    check-cast p1, Lid3;

    const-wide/16 v4, 0x3

    :goto_0
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    iput-object p1, p0, Lug1;->n:Ljava/lang/Object;

    iput-wide v4, p0, Lug1;->l:J

    iput v3, p0, Lug1;->m:I

    invoke-interface {p1, v1, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, p1

    :goto_1
    sget-object p1, Lwt2;->c:Lwt2$a;

    sget-object p1, Lau2;->SECONDS:Lau2;

    invoke-static {v3, p1}, Lyt2;->e(ILau2;)J

    move-result-wide v6

    iput-object v1, p0, Lug1;->n:Ljava/lang/Object;

    iput-wide v4, p0, Lug1;->l:J

    iput v2, p0, Lug1;->m:I

    invoke-static {v6, v7}, Lyk2;->d(J)J

    move-result-wide v6

    invoke-static {v6, v7, p0}, Lyk2;->b(JLe02;)Ljava/lang/Object;

    move-result-object p1

    sget-object v6, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p1, v6, :cond_5

    goto :goto_2

    :cond_5
    sget-object p1, Lj59;->a:Lj59;

    :goto_2
    if-ne p1, v0, :cond_0

    :goto_3
    return-object v0

    :goto_4
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_6

    const-wide/16 v6, -0x1

    add-long/2addr v4, v6

    goto :goto_0

    :cond_6
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
