.class public final Lb47;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.tasks.domain.usecase.ResolveTaskOpenTargetUseCase$invoke$1"
    f = "ResolveTaskOpenTargetUseCase.kt"
    l = {
        0xa,
        0xd,
        0x13
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "Lxn8;",
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
.field public l:Lum8;

.field public m:I

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lc47;

.field public final synthetic p:I


# direct methods
.method public constructor <init>(Lc47;ILe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc47;",
            "I",
            "Le02<",
            "-",
            "Lb47;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lb47;->o:Lc47;

    iput p2, p0, Lb47;->p:I

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

    new-instance v0, Lb47;

    iget-object v1, p0, Lb47;->o:Lc47;

    iget p0, p0, Lb47;->p:I

    invoke-direct {v0, v1, p0, p2}, Lb47;-><init>(Lc47;ILe02;)V

    iput-object p1, v0, Lb47;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lb47;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lb47;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lb47;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lb47;->o:Lc47;

    iget-object v0, v0, Lc47;->a:Lap8;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, p0, Lb47;->m:I

    const/4 v3, 0x0

    iget v4, p0, Lb47;->p:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_1
    iget-object v0, p0, Lb47;->l:Lum8;

    iget-object v2, p0, Lb47;->n:Ljava/lang/Object;

    check-cast v2, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lb47;->n:Ljava/lang/Object;

    check-cast v2, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lb47;->n:Ljava/lang/Object;

    check-cast p1, Lid3;

    iput-object p1, p0, Lb47;->n:Ljava/lang/Object;

    iput v7, p0, Lb47;->m:I

    invoke-interface {v0, v4, p0}, Lap8;->d(ILf02;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v8, v2

    move-object v2, p1

    move-object p1, v8

    :goto_0
    check-cast p1, Lum8;

    iget-boolean v7, p1, Lum8;->j:Z

    if-eqz v7, :cond_6

    iput-object v2, p0, Lb47;->n:Ljava/lang/Object;

    iput-object p1, p0, Lb47;->l:Lum8;

    iput v6, p0, Lb47;->m:I

    invoke-interface {v0, v4, p0}, Lap8;->t(ILf02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    :goto_1
    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Lum8;->f:Lum8$a;

    iget-boolean v0, v0, Lum8$a;->c:Z

    new-instance v4, Lxn8$a;

    invoke-direct {v4, p1, v0}, Lxn8$a;-><init>(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_6
    sget-object v4, Lxn8$b;->a:Lxn8$b;

    :goto_2
    iput-object v3, p0, Lb47;->n:Ljava/lang/Object;

    iput-object v3, p0, Lb47;->l:Lum8;

    iput v5, p0, Lb47;->m:I

    invoke-interface {v2, v4, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    :goto_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
