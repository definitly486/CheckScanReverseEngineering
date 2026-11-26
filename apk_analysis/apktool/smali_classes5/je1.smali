.class public final Lje1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.domain.interactor.cheque.ChequeInteractor$subscribeOnCheques$1"
    f = "ChequeInteractor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lg89;",
        "Le02<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lhd1;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;


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

    new-instance p0, Lje1;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lpg8;-><init>(ILe02;)V

    iput-object p1, p0, Lje1;->l:Ljava/lang/Object;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg89;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lje1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lje1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lje1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lje1;->l:Ljava/lang/Object;

    check-cast p0, Lg89;

    iget-object p0, p0, Lg89;->a:Ljava/util/List;

    return-object p0
.end method
