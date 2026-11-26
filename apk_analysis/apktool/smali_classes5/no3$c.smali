.class public final Lno3$c;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.features.games.presentation.GamesViewModel$loadBanner$2"
    f = "GamesViewModel.kt"
    l = {
        0x4d
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Ldm3<",
        "Lid3<",
        "-",
        "Lkn3;",
        ">;",
        "Ljava/lang/Throwable;",
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

.field public synthetic m:Lid3;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Le02;

    new-instance p0, Lno3$c;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p3}, Lpg8;-><init>(ILe02;)V

    iput-object p1, p0, Lno3$c;->m:Lid3;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lno3$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lno3$c;->m:Lid3;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, p0, Lno3$c;->l:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lno3$c;->m:Lid3;

    iput v3, p0, Lno3$c;->l:I

    invoke-interface {v0, p1, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
