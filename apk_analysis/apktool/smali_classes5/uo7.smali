.class public final Luo7;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.domain.interactor.balance.SendSBPTransferUseCase$invoke$1"
    f = "SendSBPTransferUseCase.kt"
    l = {
        0x14,
        0x14
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "Lxz8;",
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
.field public l:I

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:I

.field public final synthetic q:Lvo7;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILvo7;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lvo7;",
            "Le02<",
            "-",
            "Luo7;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Luo7;->n:Ljava/lang/String;

    iput-object p2, p0, Luo7;->o:Ljava/lang/String;

    iput p3, p0, Luo7;->p:I

    iput-object p4, p0, Luo7;->q:Lvo7;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 6
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

    new-instance v0, Luo7;

    iget v3, p0, Luo7;->p:I

    iget-object v4, p0, Luo7;->q:Lvo7;

    iget-object v1, p0, Luo7;->n:Ljava/lang/String;

    iget-object v2, p0, Luo7;->o:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Luo7;-><init>(Ljava/lang/String;Ljava/lang/String;ILvo7;Le02;)V

    iput-object p1, v0, Luo7;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Luo7;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Luo7;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Luo7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Luo7;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget-object v1, p0, Luo7;->m:Ljava/lang/Object;

    check-cast v1, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Luo7;->m:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lid3;

    new-instance p1, Lwz8;

    iget-object v5, p0, Luo7;->o:Ljava/lang/String;

    iget v6, p0, Luo7;->p:I

    iget-object v7, p0, Luo7;->n:Ljava/lang/String;

    invoke-direct {p1, v7, v5, v6}, Lwz8;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v5, p0, Luo7;->q:Lvo7;

    iget-object v5, v5, Lvo7;->a:Lb09;

    iput-object v1, p0, Luo7;->m:Ljava/lang/Object;

    iput v4, p0, Luo7;->l:I

    invoke-interface {v5, p1, p0}, Lb09;->d(Lwz8;Luo7;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Lyz8;

    invoke-virtual {p1}, Lyz8;->a()Lxz8;

    move-result-object p1

    iput-object v2, p0, Luo7;->m:Ljava/lang/Object;

    iput v3, p0, Luo7;->l:I

    invoke-interface {v1, p1, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
