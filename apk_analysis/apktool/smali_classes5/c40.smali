.class public final Lc40;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.domain.interactor.balance.BalanceInteractor$alfaTransferCashback$1"
    f = "BalanceInteractor.kt"
    l = {
        0xaf,
        0xb0,
        0xb1
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "La40;",
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
.field public l:Lkc;

.field public m:I

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lb40;


# direct methods
.method public constructor <init>(Lb40;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb40;",
            "Le02<",
            "-",
            "Lc40;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lc40;->o:Lb40;

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

    new-instance v0, Lc40;

    iget-object p0, p0, Lc40;->o:Lb40;

    invoke-direct {v0, p0, p2}, Lc40;-><init>(Lb40;Le02;)V

    iput-object p1, v0, Lc40;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lc40;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lc40;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lc40;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lc40;->m:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lc40;->o:Lb40;

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_1
    iget-object v1, p0, Lc40;->l:Lkc;

    iget-object v3, p0, Lc40;->n:Ljava/lang/Object;

    check-cast v3, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lc40;->n:Ljava/lang/Object;

    check-cast v1, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v4, p1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lc40;->n:Ljava/lang/Object;

    check-cast v1, Lid3;

    iget-object v7, v6, Lb40;->a:Ln60;

    iput-object v1, p0, Lc40;->n:Ljava/lang/Object;

    iput v4, p0, Lc40;->m:I

    invoke-interface {v7, p0}, Ln60;->h(Lc40;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_4

    goto/16 :goto_3

    :cond_4
    :goto_0
    check-cast v4, Lkc;

    invoke-virtual {v4}, Lkc;->b()Ll20;

    move-result-object v7

    sget-object v8, Ll20;->SUCCESS:Ll20;

    if-ne v7, v8, :cond_6

    iput-object v1, p0, Lc40;->n:Ljava/lang/Object;

    iput-object v4, p0, Lc40;->l:Lkc;

    iput v3, p0, Lc40;->m:I

    invoke-virtual {v6, p0}, Lb40;->A(Lf02;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_5

    goto/16 :goto_3

    :cond_5
    move-object v3, v1

    move-object v1, v4

    :goto_1
    move-object v4, v1

    move-object v1, v3

    :cond_6
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lkc;->a()Lkc$a;

    move-result-object v3

    invoke-virtual {v3}, Lkc$a;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lkc;->a()Lkc$a;

    move-result-object v3

    invoke-virtual {v3}, Lkc$a;->d()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    const-string v3, ""

    :cond_7
    move-object v8, v3

    invoke-virtual {v4}, Lkc;->a()Lkc$a;

    move-result-object v3

    invoke-virtual {v3}, Lkc$a;->a()Ljava/lang/String;

    move-result-object v9

    new-instance v10, La40$a;

    invoke-virtual {v4}, Lkc;->a()Lkc$a;

    move-result-object v3

    invoke-virtual {v3}, Lkc$a;->b()Lkc$a$a;

    move-result-object v3

    invoke-virtual {v3}, Lkc$a$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lkc;->a()Lkc$a;

    move-result-object v6

    invoke-virtual {v6}, Lkc$a;->b()Lkc$a$a;

    move-result-object v6

    invoke-virtual {v6}, Lkc$a$a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v10, v3, v6}, La40$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lkc;->a()Lkc$a;

    move-result-object v3

    invoke-virtual {v3}, Lkc$a;->c()Lkc$a$a;

    move-result-object v3

    if-eqz v3, :cond_8

    new-instance v4, La40$a;

    invoke-virtual {v3}, Lkc$a$a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lkc$a$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v6, v3}, La40$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v4

    goto :goto_2

    :cond_8
    move-object v11, v5

    :goto_2
    new-instance v6, La40;

    const/4 v12, 0x0

    const/16 v13, 0x20

    invoke-direct/range {v6 .. v13}, La40;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La40$a;La40$a;Ljava/lang/Integer;I)V

    iput-object v5, p0, Lc40;->n:Ljava/lang/Object;

    iput-object v5, p0, Lc40;->l:Lkc;

    iput v2, p0, Lc40;->m:I

    invoke-interface {v1, v6, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_9

    :goto_3
    return-object v0

    :cond_9
    :goto_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
