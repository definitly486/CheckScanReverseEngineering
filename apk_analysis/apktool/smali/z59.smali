.class public final Lz59;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.component.unityofferwall.UnityOfferwallController$observeConnection$1"
    f = "UnityOfferwallController.kt"
    l = {
        0xa0
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
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

.field public final synthetic m:Ls59;

.field public final synthetic n:Ls59$c$c;


# direct methods
.method public constructor <init>(Le02;Ls59$c$c;Ls59;)V
    .locals 0

    iput-object p3, p0, Lz59;->m:Ls59;

    iput-object p2, p0, Lz59;->n:Ls59$c$c;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lpg8;-><init>(ILe02;)V

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

    new-instance p1, Lz59;

    iget-object v0, p0, Lz59;->m:Ls59;

    iget-object p0, p0, Lz59;->n:Ls59$c$c;

    invoke-direct {p1, p2, p0, v0}, Lz59;-><init>(Le02;Ls59$c$c;Ls59;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lz59;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lz59;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lz59;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lz59;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lz59;->m:Ls59;

    iget-object v1, p1, Ls59;->b:Lhd3;

    invoke-static {v1}, Lzd3;->c(Lhd3;)Lhd3;

    move-result-object v1

    new-instance v4, Lz59$a;

    iget-object v5, p0, Lz59;->n:Ls59$c$c;

    invoke-direct {v4, v2, v5, p1}, Lz59$a;-><init>(Le02;Ls59$c$c;Ls59;)V

    iput v3, p0, Lz59;->l:I

    invoke-static {v1, v4, p0}, Lpx;->c(Lhd3;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
