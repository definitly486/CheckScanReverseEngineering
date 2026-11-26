.class public final Lau5;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.offerLanding.domain.interactor.OfferLandingInteractor$subscribeOnLanding$1"
    f = "OfferLandingInteractor.kt"
    l = {
        0x16,
        0x16
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "Lhu5;",
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
.field public l:Lcu5;

.field public m:I

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lcu5;

.field public final synthetic p:Ljava/lang/String;


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
            "Lau5;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lau5;->o:Lcu5;

    iput-object p2, p0, Lau5;->p:Ljava/lang/String;

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

    new-instance v0, Lau5;

    iget-object v1, p0, Lau5;->o:Lcu5;

    iget-object p0, p0, Lau5;->p:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p2}, Lau5;-><init>(Lcu5;Ljava/lang/String;Le02;)V

    iput-object p1, v0, Lau5;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lau5;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lau5;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lau5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lau5;->m:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_1
    iget-object v1, p0, Lau5;->l:Lcu5;

    iget-object v3, p0, Lau5;->n:Ljava/lang/Object;

    check-cast v3, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lau5;->n:Ljava/lang/Object;

    check-cast p1, Lid3;

    iget-object v1, p0, Lau5;->o:Lcu5;

    iget-object v5, v1, Lcu5;->a:Lfu5;

    iput-object p1, p0, Lau5;->n:Ljava/lang/Object;

    iput-object v1, p0, Lau5;->l:Lcu5;

    iput v3, p0, Lau5;->m:I

    iget-object v3, p0, Lau5;->p:Ljava/lang/String;

    invoke-interface {v5, v3, p0}, Lfu5;->b(Ljava/lang/String;Lau5;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    goto/16 :goto_b

    :cond_3
    move-object v13, v3

    move-object v3, p1

    move-object p1, v13

    :goto_0
    check-cast p1, Lrj4;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lrj4;->a()Lii0;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lii0;->a()Ljava/util/List;

    move-result-object v5

    goto :goto_1

    :cond_4
    move-object v5, v4

    :goto_1
    sget-object v6, Lkx2;->b:Lkx2;

    if-nez v5, :cond_5

    move-object v5, v6

    :cond_5
    check-cast v5, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v5, v8}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lii0$a;

    new-instance v10, Lut5;

    invoke-virtual {v9}, Lii0$a;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lii0$a;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lii0$a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v11, v12, v9}, Lut5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Lmu5;

    invoke-virtual {p1}, Lrj4;->d()Lw88;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lw88;->b()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_7
    move-object v7, v4

    :goto_3
    const-string v9, ""

    if-nez v7, :cond_8

    move-object v7, v9

    :cond_8
    invoke-direct {v5, v7}, Lmu5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lrj4;->d()Lw88;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lw88;->a()Ljava/util/List;

    move-result-object v5

    goto :goto_4

    :cond_9
    move-object v5, v4

    :goto_4
    if-nez v5, :cond_a

    goto :goto_5

    :cond_a
    move-object v6, v5

    :goto_5
    check-cast v6, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v6, v8}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lw88$a;

    new-instance v8, Lku5;

    invoke-virtual {v7}, Lw88$a;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lw88$a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v10, v7}, Lku5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Lhu5;

    invoke-virtual {p1}, Lrj4;->c()Lkv4;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lkv4;->a()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_c
    move-object v6, v4

    :goto_7
    if-nez v6, :cond_d

    move-object v6, v9

    :cond_d
    invoke-virtual {p1}, Lrj4;->b()Ljv0;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Ljv0;->a()Lsy4;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Lsy4;->a()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_e
    move-object v7, v4

    :goto_8
    if-nez v7, :cond_f

    goto :goto_9

    :cond_f
    move-object v9, v7

    :goto_9
    invoke-virtual {p1}, Lrj4;->b()Ljv0;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljv0;->a()Lsy4;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lsy4;->b()Ljava/lang/Boolean;

    move-result-object p1

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v7}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_a

    :cond_10
    const/4 p1, 0x0

    :goto_a
    invoke-direct {v5, v6, v9, p1, v1}, Lhu5;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;)V

    iput-object v4, p0, Lau5;->n:Ljava/lang/Object;

    iput-object v4, p0, Lau5;->l:Lcu5;

    iput v2, p0, Lau5;->m:I

    invoke-interface {v3, v5, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_11

    :goto_b
    return-object v0

    :cond_11
    :goto_c
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
