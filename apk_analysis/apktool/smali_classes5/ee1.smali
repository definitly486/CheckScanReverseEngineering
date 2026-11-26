.class public final Lee1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.domain.interactor.cheque.ChequeInteractor$getChequesBanner$1"
    f = "ChequeInteractor.kt"
    l = {
        0xc4,
        0xc4
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "Lci1;",
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
.field public l:Lxd1;

.field public m:I

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lxd1;


# direct methods
.method public constructor <init>(Lxd1;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxd1;",
            "Le02<",
            "-",
            "Lee1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lee1;->o:Lxd1;

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

    new-instance v0, Lee1;

    iget-object p0, p0, Lee1;->o:Lxd1;

    invoke-direct {v0, p0, p2}, Lee1;-><init>(Lxd1;Le02;)V

    iput-object p1, v0, Lee1;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lee1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lee1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lee1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lee1;->m:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_1
    iget-object v1, p0, Lee1;->l:Lxd1;

    iget-object v3, p0, Lee1;->n:Ljava/lang/Object;

    check-cast v3, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lee1;->n:Ljava/lang/Object;

    check-cast p1, Lid3;

    iget-object v1, p0, Lee1;->o:Lxd1;

    iget-object v5, v1, Lxd1;->a:Lcf1;

    iput-object p1, p0, Lee1;->n:Ljava/lang/Object;

    iput-object v1, p0, Lee1;->l:Lxd1;

    iput v3, p0, Lee1;->m:I

    invoke-interface {v5, p0}, Lcf1;->q(Lee1;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v8, v3

    move-object v3, p1

    move-object p1, v8

    :goto_0
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lke1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lci1;

    invoke-virtual {p1}, Lke1;->a()I

    move-result v5

    invoke-virtual {p1}, Lke1;->c()Lc06;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lc06;->f()Lb06;

    move-result-object v6

    goto :goto_1

    :cond_4
    move-object v6, v4

    :goto_1
    invoke-virtual {p1}, Lke1;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lke1;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v5, v6, v7, p1}, Lci1;-><init>(ILb06;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lee1;->n:Ljava/lang/Object;

    iput-object v4, p0, Lee1;->l:Lxd1;

    iput v2, p0, Lee1;->m:I

    invoke-interface {v3, v1, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    :goto_2
    return-object v0

    :cond_5
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
