.class public final Lbx7;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.auth.domain.useCases.SignInConfirmInteractor$invoke$1"
    f = "SignInConfirmInteractor.kt"
    l = {
        0x1c,
        0x30,
        0x38
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "Lj3;",
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
.field public l:Lj3;

.field public m:Ljava/util/Iterator;

.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Lcx7;

.field public final synthetic q:Ljava/lang/String;

.field public final synthetic r:Lam2;

.field public final synthetic s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcx7;Ljava/lang/String;Lam2;Ljava/lang/String;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcx7;",
            "Ljava/lang/String;",
            "Lam2;",
            "Ljava/lang/String;",
            "Le02<",
            "-",
            "Lbx7;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbx7;->p:Lcx7;

    iput-object p2, p0, Lbx7;->q:Ljava/lang/String;

    iput-object p3, p0, Lbx7;->r:Lam2;

    iput-object p4, p0, Lbx7;->s:Ljava/lang/String;

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

    new-instance v0, Lbx7;

    iget-object v3, p0, Lbx7;->r:Lam2;

    iget-object v4, p0, Lbx7;->s:Ljava/lang/String;

    iget-object v1, p0, Lbx7;->p:Lcx7;

    iget-object v2, p0, Lbx7;->q:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbx7;-><init>(Lcx7;Ljava/lang/String;Lam2;Ljava/lang/String;Le02;)V

    iput-object p1, v0, Lbx7;->o:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lbx7;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lbx7;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lbx7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lbx7;->n:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v5, p0, Lbx7;->p:Lcx7;

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v6

    :cond_1
    iget-object v1, p0, Lbx7;->m:Ljava/util/Iterator;

    iget-object v4, p0, Lbx7;->l:Lj3;

    iget-object v7, p0, Lbx7;->o:Ljava/lang/Object;

    check-cast v7, Lid3;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_2
    iget-object v1, p0, Lbx7;->o:Ljava/lang/Object;

    check-cast v1, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lbx7;->o:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lid3;

    iget-object p1, v5, Lcx7;->a:Lvw;

    iget-object v7, p0, Lbx7;->q:Ljava/lang/String;

    if-nez v7, :cond_5

    invoke-interface {p1}, Lvw;->g()Laq8;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, v7, Laq8;->a:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move-object v7, v6

    :goto_0
    if-nez v7, :cond_5

    const-string v7, ""

    :cond_5
    iput-object v1, p0, Lbx7;->o:Ljava/lang/Object;

    iput v4, p0, Lbx7;->n:I

    iget-object v8, p0, Lbx7;->r:Lam2;

    iget-object v9, p0, Lbx7;->s:Ljava/lang/String;

    invoke-interface {p1, v7, v8, v9, p0}, Lvw;->a(Ljava/lang/String;Lam2;Ljava/lang/String;Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    goto/16 :goto_6

    :cond_6
    :goto_1
    check-cast p1, Lj3;

    iget-object v7, v5, Lcx7;->e:Ljf6;

    iget-object v8, p1, Lj3;->b:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljf6;->k1(Ljava/lang/String;)V

    iget-object v8, p1, Lj3;->d:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljf6;->n(Ljava/lang/String;)V

    iget-object v8, p1, Lj3;->b:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljf6;->I(Ljava/lang/String;)V

    iget-boolean v8, p1, Lj3;->c:Z

    xor-int/2addr v8, v4

    invoke-interface {v7, v8}, Ljf6;->J(Z)V

    new-instance v7, Lbx7$a;

    invoke-direct {v7, v5, p1, v6}, Lbx7$a;-><init>(Lcx7;Lj3;Le02;)V

    new-instance v8, Lbx7$b;

    invoke-direct {v8, v5, v6}, Lbx7$b;-><init>(Lcx7;Le02;)V

    new-instance v9, Lbx7$c;

    invoke-direct {v9, v5, v6}, Lbx7$c;-><init>(Lcx7;Le02;)V

    new-array v10, v2, [Lnl3;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    aput-object v8, v10, v4

    aput-object v9, v10, v3

    invoke-static {v10}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v7, v1

    move-object v1, v4

    move-object v4, p1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnl3;

    :try_start_1
    iput-object v7, p0, Lbx7;->o:Ljava/lang/Object;

    iput-object v4, p0, Lbx7;->l:Lj3;

    iput-object v1, p0, Lbx7;->m:Ljava/util/Iterator;

    iput v3, p0, Lbx7;->n:I

    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    goto :goto_6

    :cond_8
    :goto_3
    sget-object p1, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_4
    new-instance v8, Lk57$a;

    invoke-direct {v8, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v8

    :goto_5
    invoke-static {p1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_7

    instance-of v8, p1, Ljava/util/concurrent/CancellationException;

    if-nez v8, :cond_9

    goto :goto_2

    :cond_9
    throw p1

    :cond_a
    iget-object p1, v5, Lcx7;->f:Lg6;

    sget-object v1, Lg6$a$a;->a:Lg6$a$a;

    iget-object p1, p1, Lg6;->a:Lzs7;

    invoke-virtual {p1, v1}, Lzs7;->e(Ljava/lang/Object;)Z

    iput-object v6, p0, Lbx7;->o:Ljava/lang/Object;

    iput-object v6, p0, Lbx7;->l:Lj3;

    iput-object v6, p0, Lbx7;->m:Ljava/util/Iterator;

    iput v2, p0, Lbx7;->n:I

    invoke-interface {v7, v4, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_b

    :goto_6
    return-object v0

    :cond_b
    :goto_7
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
