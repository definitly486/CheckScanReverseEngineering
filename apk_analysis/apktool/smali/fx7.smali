.class public final Lfx7;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.auth.domain.useCases.SignInRetryUseCase$invoke$1"
    f = "SignInRetryUseCase.kt"
    l = {
        0x13,
        0x16,
        0x15
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "Ljava/lang/Object;",
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

.field public final synthetic n:Lgx7;

.field public final synthetic o:Ldw1;


# direct methods
.method public constructor <init>(Lgx7;Ldw1;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx7;",
            "Ldw1;",
            "Le02<",
            "-",
            "Lfx7;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfx7;->n:Lgx7;

    iput-object p2, p0, Lfx7;->o:Ldw1;

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

    new-instance v0, Lfx7;

    iget-object v1, p0, Lfx7;->n:Lgx7;

    iget-object p0, p0, Lfx7;->o:Ldw1;

    invoke-direct {v0, v1, p0, p2}, Lfx7;-><init>(Lgx7;Ldw1;Le02;)V

    iput-object p1, v0, Lfx7;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lfx7;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lfx7;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lfx7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lfx7;->n:Lgx7;

    iget-object v1, v0, Lgx7;->a:Lvw;

    sget-object v8, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, p0, Lfx7;->l:I

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    if-ne v2, v10, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v9

    :cond_1
    iget-object v0, p0, Lfx7;->m:Ljava/lang/Object;

    check-cast v0, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v7, p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lfx7;->m:Ljava/lang/Object;

    check-cast p1, Lid3;

    invoke-interface {v1}, Lvw;->g()Laq8;

    move-result-object v2

    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Temp data can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput v4, p0, Lfx7;->l:I

    invoke-interface {p1, v0, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v8, :cond_6

    goto :goto_2

    :cond_4
    move-object v4, v2

    iget-object v2, v4, Laq8;->a:Ljava/lang/String;

    move v5, v3

    iget-boolean v3, v4, Laq8;->c:Z

    iget-object v4, v4, Laq8;->b:Ljava/lang/String;

    iget-object v0, v0, Lgx7;->b:Lmw5;

    invoke-interface {v0}, Lmw5;->c()Ljava/lang/Boolean;

    move-result-object v6

    iput-object p1, p0, Lfx7;->m:Ljava/lang/Object;

    iput v5, p0, Lfx7;->l:I

    move-object v5, v4

    iget-object v4, p0, Lfx7;->o:Ldw1;

    move-object v7, p0

    invoke-interface/range {v1 .. v7}, Lvw;->e(Ljava/lang/String;ZLdw1;Ljava/lang/String;Ljava/lang/Boolean;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v8, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, p1

    move-object p1, p0

    :goto_1
    iput-object v9, v7, Lfx7;->m:Ljava/lang/Object;

    iput v10, v7, Lfx7;->l:I

    invoke-interface {v0, p1, v7}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v8, :cond_6

    :goto_2
    return-object v8

    :cond_6
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
