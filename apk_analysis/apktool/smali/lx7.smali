.class public final Llx7;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.auth.domain.useCases.SignUpConfirmInteractor$invoke$1"
    f = "SignUpConfirmInteractor.kt"
    l = {
        0x14,
        0x21,
        0x23
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "Laq8;",
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
.field public l:Laq8;

.field public m:I

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lmx7;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmx7;Ljava/lang/String;Ljava/lang/String;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmx7;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Le02<",
            "-",
            "Llx7;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Llx7;->o:Lmx7;

    iput-object p2, p0, Llx7;->p:Ljava/lang/String;

    iput-object p3, p0, Llx7;->q:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 3
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

    new-instance v0, Llx7;

    iget-object v1, p0, Llx7;->p:Ljava/lang/String;

    iget-object v2, p0, Llx7;->q:Ljava/lang/String;

    iget-object p0, p0, Llx7;->o:Lmx7;

    invoke-direct {v0, p0, v1, v2, p2}, Llx7;-><init>(Lmx7;Ljava/lang/String;Ljava/lang/String;Le02;)V

    iput-object p1, v0, Llx7;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Llx7;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Llx7;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Llx7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Llx7;->o:Lmx7;

    iget-object v1, v0, Lmx7;->a:Lvw;

    sget-object v8, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, p0, Llx7;->m:I

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v12, :cond_2

    if-eq v2, v10, :cond_1

    if-ne v2, v9, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v11

    :cond_1
    iget-object v1, p0, Llx7;->l:Laq8;

    iget-object v2, p0, Llx7;->n:Ljava/lang/Object;

    check-cast v2, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v7, p0

    goto/16 :goto_4

    :cond_2
    iget-object v1, p0, Llx7;->l:Laq8;

    iget-object v2, p0, Llx7;->n:Ljava/lang/Object;

    check-cast v2, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v7, p0

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Llx7;->n:Ljava/lang/Object;

    check-cast p1, Lid3;

    invoke-interface {v1}, Lvw;->g()Laq8;

    move-result-object v13

    if-eqz v13, :cond_4

    iget-boolean v2, v13, Laq8;->c:Z

    :goto_0
    move v4, v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    if-eqz v13, :cond_5

    iget-object v2, v13, Laq8;->b:Ljava/lang/String;

    move-object v5, v2

    goto :goto_2

    :cond_5
    move-object v5, v11

    :goto_2
    iget-object v2, v0, Lmx7;->c:Lmw5;

    invoke-interface {v2}, Lmw5;->c()Ljava/lang/Boolean;

    move-result-object v6

    iput-object p1, p0, Llx7;->n:Ljava/lang/Object;

    iput-object v13, p0, Llx7;->l:Laq8;

    iput v12, p0, Llx7;->m:I

    iget-object v2, p0, Llx7;->p:Ljava/lang/String;

    iget-object v3, p0, Llx7;->q:Ljava/lang/String;

    move-object v7, p0

    invoke-interface/range {v1 .. v7}, Lvw;->h(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Boolean;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v8, :cond_6

    goto :goto_5

    :cond_6
    move-object v2, p1

    move-object v1, v13

    move-object p1, p0

    :goto_3
    check-cast p1, Lj3;

    iget-object p0, v0, Lmx7;->d:Ljf6;

    iget-object v3, p1, Lj3;->b:Ljava/lang/String;

    invoke-interface {p0, v3}, Ljf6;->k1(Ljava/lang/String;)V

    iget-object v3, p1, Lj3;->d:Ljava/lang/String;

    invoke-interface {p0, v3}, Ljf6;->n(Ljava/lang/String;)V

    iget-object v3, p1, Lj3;->b:Ljava/lang/String;

    invoke-interface {p0, v3}, Ljf6;->I(Ljava/lang/String;)V

    iget-boolean v3, p1, Lj3;->c:Z

    xor-int/2addr v3, v12

    invoke-interface {p0, v3}, Ljf6;->J(Z)V

    iget-object p0, v0, Lmx7;->b:Le89;

    iget-object p1, p1, Lj3;->f:Ljava/lang/String;

    iput-object v2, v7, Llx7;->n:Ljava/lang/Object;

    iput-object v1, v7, Llx7;->l:Laq8;

    iput v10, v7, Llx7;->m:I

    invoke-virtual {p0, p1, v7}, Le89;->a(Ljava/lang/String;Lpg8;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v8, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    iget-object p0, v0, Lmx7;->e:Lg6;

    sget-object p1, Lg6$a$c;->a:Lg6$a$c;

    iget-object p0, p0, Lg6;->a:Lzs7;

    invoke-virtual {p0, p1}, Lzs7;->e(Ljava/lang/Object;)Z

    iput-object v11, v7, Llx7;->n:Ljava/lang/Object;

    iput-object v11, v7, Llx7;->l:Laq8;

    iput v9, v7, Llx7;->m:I

    invoke-interface {v2, v1, v7}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v8, :cond_8

    :goto_5
    return-object v8

    :cond_8
    :goto_6
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
