.class public final Lhx7;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.auth.domain.useCases.SignInUseCase$invoke$1"
    f = "SignInUseCase.kt"
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
        "Lev;",
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

.field public final synthetic n:Lix7;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Z

.field public final synthetic r:Ldw1;


# direct methods
.method public constructor <init>(Lix7;Ljava/lang/String;Ljava/lang/String;ZLdw1;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lix7;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ldw1;",
            "Le02<",
            "-",
            "Lhx7;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lhx7;->n:Lix7;

    iput-object p2, p0, Lhx7;->o:Ljava/lang/String;

    iput-object p3, p0, Lhx7;->p:Ljava/lang/String;

    iput-boolean p4, p0, Lhx7;->q:Z

    iput-object p5, p0, Lhx7;->r:Ldw1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 7
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

    new-instance v0, Lhx7;

    iget-boolean v4, p0, Lhx7;->q:Z

    iget-object v5, p0, Lhx7;->r:Ldw1;

    iget-object v1, p0, Lhx7;->n:Lix7;

    iget-object v2, p0, Lhx7;->o:Ljava/lang/String;

    iget-object v3, p0, Lhx7;->p:Ljava/lang/String;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lhx7;-><init>(Lix7;Ljava/lang/String;Ljava/lang/String;ZLdw1;Le02;)V

    iput-object p1, v0, Lhx7;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lhx7;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lhx7;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lhx7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v7, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p0, Lhx7;->l:I

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    if-ne v0, v9, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v8

    :cond_1
    iget-object v0, p0, Lhx7;->m:Ljava/lang/Object;

    check-cast v0, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v10, v0

    move-object v0, p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lhx7;->m:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lid3;

    iget-object v0, p0, Lhx7;->n:Lix7;

    iget-object v2, v0, Lix7;->a:Lvw;

    new-instance v3, Laq8;

    iget-object v4, p0, Lhx7;->p:Ljava/lang/String;

    iget-boolean v5, p0, Lhx7;->q:Z

    iget-object v11, p0, Lhx7;->o:Ljava/lang/String;

    invoke-direct {v3, v11, v4, v5}, Laq8;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v2, v3}, Lvw;->i(Laq8;)V

    iget-object v2, v0, Lix7;->a:Lvw;

    iget-object v0, v0, Lix7;->b:Lmw5;

    invoke-interface {v0}, Lmw5;->c()Ljava/lang/Boolean;

    move-result-object v5

    iput-object v10, p0, Lhx7;->m:Ljava/lang/Object;

    iput v1, p0, Lhx7;->l:I

    move-object v0, v2

    iget-boolean v2, p0, Lhx7;->q:Z

    iget-object v3, p0, Lhx7;->r:Ldw1;

    iget-object v4, p0, Lhx7;->p:Ljava/lang/String;

    move-object v6, p0

    move-object v1, v11

    invoke-interface/range {v0 .. v6}, Lvw;->e(Ljava/lang/String;ZLdw1;Ljava/lang/String;Ljava/lang/Boolean;Lf02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    iput-object v8, p0, Lhx7;->m:Ljava/lang/Object;

    iput v9, p0, Lhx7;->l:I

    invoke-interface {v10, v0, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_4

    :goto_1
    return-object v7

    :cond_4
    :goto_2
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method
