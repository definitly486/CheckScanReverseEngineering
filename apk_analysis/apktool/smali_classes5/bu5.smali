.class public final Lbu5;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.offerLanding.domain.interactor.OfferLandingInteractor$subscribeOnLink$1"
    f = "OfferLandingInteractor.kt"
    l = {
        0x1d,
        0x1c
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "Ljava/lang/String;",
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

.field public final synthetic n:Lcu5;

.field public final synthetic o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcu5;Ljava/lang/String;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcu5;",
            "Ljava/lang/String;",
            "Le02<",
            "-",
            "Lbu5;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbu5;->n:Lcu5;

    iput-object p2, p0, Lbu5;->o:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2
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

    new-instance v0, Lbu5;

    iget-object v1, p0, Lbu5;->n:Lcu5;

    iget-object p0, p0, Lbu5;->o:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p2}, Lbu5;-><init>(Lcu5;Ljava/lang/String;Le02;)V

    iput-object p1, v0, Lbu5;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lbu5;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lbu5;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lbu5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lbu5;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v5, p0, Lbu5;->n:Lcu5;

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget-object v1, p0, Lbu5;->m:Ljava/lang/Object;

    check-cast v1, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    :cond_2
    move-object v4, v1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lbu5;->m:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lid3;

    iget-object p1, v5, Lcu5;->b:Lz68;

    invoke-virtual {p1}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_5

    iget-object p1, v5, Lcu5;->a:Lfu5;

    iput-object v1, p0, Lbu5;->m:Ljava/lang/Object;

    iput v4, p0, Lbu5;->l:I

    iget-object v4, p0, Lbu5;->o:Ljava/lang/String;

    invoke-interface {p1, v4, p0}, Lfu5;->a(Ljava/lang/String;Lbu5;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    goto :goto_1

    :goto_0
    check-cast p1, Ldu5;

    invoke-virtual {p1}, Ldu5;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lcu5;->b:Lz68;

    :cond_4
    invoke-virtual {v5}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, p1, v6}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move-object v1, v4

    move-object p1, v6

    :cond_5
    iput-object v2, p0, Lbu5;->m:Ljava/lang/Object;

    iput v3, p0, Lbu5;->l:I

    invoke-interface {v1, p1, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    :goto_1
    return-object v0

    :cond_6
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
