.class public final Ly90;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.domain.interactor.bank.BankInteractor$checkVerificationCanBeSkipped$1"
    f = "BankInteractor.kt"
    l = {
        0x7a,
        0x82
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "Ljava/lang/Boolean;",
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
.field public l:Ljava/lang/Boolean;

.field public m:I

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lca0;


# direct methods
.method public constructor <init>(Lca0;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca0;",
            "Le02<",
            "-",
            "Ly90;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ly90;->o:Lca0;

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

    new-instance v0, Ly90;

    iget-object p0, p0, Ly90;->o:Lca0;

    invoke-direct {v0, p0, p2}, Ly90;-><init>(Lca0;Le02;)V

    iput-object p1, v0, Ly90;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Ly90;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Ly90;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Ly90;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Ly90;->m:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget-object v1, p0, Ly90;->l:Ljava/lang/Boolean;

    iget-object v4, p0, Ly90;->n:Ljava/lang/Object;

    check-cast v4, Lid3;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Ly90;->n:Ljava/lang/Object;

    check-cast p1, Lid3;

    iget-object v1, p0, Ly90;->o:Lca0;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :try_start_1
    iget-object v1, v1, Lca0;->b:Lj5;

    iput-object p1, p0, Ly90;->n:Ljava/lang/Object;

    iput-object v5, p0, Ly90;->l:Ljava/lang/Boolean;

    iput v4, p0, Ly90;->m:I

    invoke-interface {v1, p0}, Lj5;->m(Ly90;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v1, v0, :cond_3

    goto :goto_4

    :cond_3
    move-object v4, p1

    move-object p1, v1

    move-object v1, v5

    :goto_0
    :try_start_2
    check-cast p1, La57;

    iget-object p1, p1, La57;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lrc9;

    invoke-virtual {p1}, Lrc9;->a()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v4, p1

    move-object p1, v1

    move-object v1, v5

    :goto_1
    new-instance v5, Lk57$a;

    invoke-direct {v5, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v5

    :goto_2
    invoke-static {p1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_5

    instance-of v6, v5, Ljava/util/concurrent/CancellationException;

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    throw v5

    :cond_5
    :goto_3
    instance-of v5, p1, Lk57$a;

    if-eqz v5, :cond_6

    move-object p1, v1

    :cond_6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Ly90;->n:Ljava/lang/Object;

    iput-object v2, p0, Ly90;->l:Ljava/lang/Boolean;

    iput v3, p0, Ly90;->m:I

    invoke-interface {v4, p1, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    :goto_4
    return-object v0

    :cond_7
    :goto_5
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
