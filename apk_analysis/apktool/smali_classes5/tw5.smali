.class public final Ltw5;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.domain.interactor.onboarding.OnboardingCardSlidesInteractor$fetchSlides$1"
    f = "OnboardingCardSlidesInteractor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ljava/util/List<",
        "+",
        "Lsw5;",
        ">;",
        "Le02<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Luw5;


# direct methods
.method public constructor <init>(Luw5;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luw5;",
            "Le02<",
            "-",
            "Ltw5;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltw5;->m:Luw5;

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

    new-instance v0, Ltw5;

    iget-object p0, p0, Ltw5;->m:Luw5;

    invoke-direct {v0, p0, p2}, Ltw5;-><init>(Luw5;Le02;)V

    iput-object p1, v0, Ltw5;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Ltw5;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Ltw5;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Ltw5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Ltw5;->l:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Ltw5;->m:Luw5;

    iget-object v2, v0, Luw5;->c:Lz68;

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v10, v6, 0x1

    if-ltz v6, :cond_7

    check-cast v7, Lsw5;

    invoke-static {v1}, Lu96;->g(Ljava/util/List;)I

    move-result v8

    if-ne v8, v6, :cond_0

    goto :goto_1

    :cond_0
    move v9, v5

    :goto_1
    new-instance v11, Lzj3;

    int-to-long v12, v6

    invoke-virtual {v7}, Lsw5;->c()Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    if-nez v6, :cond_1

    move-object v14, v8

    goto :goto_2

    :cond_1
    move-object v14, v6

    :goto_2
    invoke-virtual {v7}, Lsw5;->e()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    move-object v15, v8

    goto :goto_3

    :cond_2
    move-object v15, v6

    :goto_3
    invoke-virtual {v7}, Lsw5;->d()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    move-object/from16 v16, v8

    goto :goto_4

    :cond_3
    move-object/from16 v16, v6

    :goto_4
    invoke-virtual {v7}, Lsw5;->a()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    move-object/from16 v17, v8

    goto :goto_5

    :cond_4
    move-object/from16 v17, v6

    :goto_5
    if-eqz v9, :cond_6

    new-instance v6, La41$a;

    invoke-virtual {v7}, Lsw5;->b()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_6

    :cond_5
    move-object v8, v7

    :goto_6
    invoke-direct {v6, v8}, La41$a;-><init>(Ljava/lang/String;)V

    :goto_7
    move-object/from16 v18, v6

    goto :goto_8

    :cond_6
    sget-object v6, La41$b;->a:La41$b;

    goto :goto_7

    :goto_8
    invoke-direct/range {v11 .. v18}, Lzj3;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La41;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v10

    goto :goto_0

    :cond_7
    invoke-static {}, Lu96;->o()V

    throw v8

    :cond_8
    invoke-virtual {v2, v8, v4}, Lz68;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, v0, Luw5;->c:Lz68;

    invoke-virtual {v0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
