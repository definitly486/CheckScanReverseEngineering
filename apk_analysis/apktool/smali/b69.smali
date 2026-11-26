.class public final Lb69;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.component.unityofferwall.UnityOfferwallController$present$2"
    f = "UnityOfferwallController.kt"
    l = {
        0x7c
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

.field public final synthetic n:Lnu5;

.field public final synthetic o:Ls59$c$c;


# direct methods
.method public constructor <init>(Ls59;Lnu5;Ls59$c$c;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls59;",
            "Lnu5;",
            "Ls59$c$c;",
            "Le02<",
            "-",
            "Lb69;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lb69;->m:Ls59;

    iput-object p2, p0, Lb69;->n:Lnu5;

    iput-object p3, p0, Lb69;->o:Ls59$c$c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

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

    new-instance p1, Lb69;

    iget-object v0, p0, Lb69;->n:Lnu5;

    iget-object v1, p0, Lb69;->o:Ls59$c$c;

    iget-object p0, p0, Lb69;->m:Ls59;

    invoke-direct {p1, p0, v0, v1, p2}, Lb69;-><init>(Ls59;Lnu5;Ls59$c$c;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lb69;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lb69;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lb69;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lb69;->l:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iput v2, p0, Lb69;->l:I

    const-wide/16 v1, 0x1388

    invoke-static {v1, v2, p0}, Lyk2;->b(JLe02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lb69;->m:Ls59;

    iget-object v0, p1, Ls59;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lb69;->n:Lnu5;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Ls59;->f:Ls59$c;

    iget-object p0, p0, Lb69;->o:Ls59$c$c;

    if-eq v0, p0, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Ls59$c$a;->a:Ls59$c$a;

    iput-object v0, p1, Ls59;->f:Ls59$c;

    iget-object p0, p0, Ls59$c$c;->b:Lyp1;

    new-instance p1, Lm69$b;

    sget-object v0, Lj69;->NOT_SHOWN:Lj69;

    invoke-direct {p1, v0}, Lm69$b;-><init>(Lj69;)V

    invoke-virtual {p0, p1}, Lsb4;->T(Ljava/lang/Object;)Z

    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
