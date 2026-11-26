.class public final Loo3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.features.games.presentation.GamesViewModel$refreshLinkAndPlay$1"
    f = "GamesViewModel.kt"
    l = {
        0x67,
        0x67
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
.field public l:Lid3;

.field public m:I

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lno3;


# direct methods
.method public constructor <init>(Lno3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lno3;",
            "Le02<",
            "-",
            "Loo3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Loo3;->o:Lno3;

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

    new-instance v0, Loo3;

    iget-object p0, p0, Loo3;->o:Lno3;

    invoke-direct {v0, p0, p2}, Loo3;-><init>(Lno3;Le02;)V

    iput-object p1, v0, Loo3;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Loo3;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Loo3;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Loo3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Loo3;->n:Ljava/lang/Object;

    check-cast v0, Lid3;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, p0, Loo3;->m:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_1
    iget-object v0, p0, Loo3;->l:Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Loo3;->o:Lno3;

    iget-object p1, p1, Lno3;->b:Le17;

    iput-object v5, p0, Loo3;->n:Ljava/lang/Object;

    iput-object v0, p0, Loo3;->l:Lid3;

    iput v4, p0, Loo3;->m:I

    iget-object p1, p1, Le17;->a:Lmo3;

    invoke-interface {p1, p0}, Lmo3;->c(Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    iput-object v5, p0, Loo3;->n:Ljava/lang/Object;

    iput-object v5, p0, Loo3;->l:Lid3;

    iput v3, p0, Loo3;->m:I

    invoke-interface {v0, p1, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    :goto_1
    return-object v1

    :cond_4
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
