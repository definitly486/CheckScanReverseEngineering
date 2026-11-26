.class public final Ld69;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.component.unityofferwall.UnityOfferwallController$show$2"
    f = "UnityOfferwallController.kt"
    l = {
        0x2d
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
        "Lm69;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public final synthetic m:Ls59;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Ltj1$c;


# direct methods
.method public constructor <init>(Ls59;Ljava/lang/String;Ljava/lang/String;Ltj1$c;Le02;)V
    .locals 0

    iput-object p1, p0, Ld69;->m:Ls59;

    iput-object p2, p0, Ld69;->n:Ljava/lang/String;

    iput-object p3, p0, Ld69;->o:Ljava/lang/String;

    iput-object p4, p0, Ld69;->p:Ltj1$c;

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

    new-instance v0, Ld69;

    iget-object v3, p0, Ld69;->o:Ljava/lang/String;

    iget-object v4, p0, Ld69;->p:Ltj1$c;

    iget-object v1, p0, Ld69;->m:Ls59;

    iget-object v2, p0, Ld69;->n:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ld69;-><init>(Ls59;Ljava/lang/String;Ljava/lang/String;Ltj1$c;Le02;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Ld69;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Ld69;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Ld69;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Ld69;->l:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iput v2, p0, Ld69;->l:I

    iget-object p1, p0, Ld69;->m:Ls59;

    iget-object v1, p0, Ld69;->n:Ljava/lang/String;

    iget-object v2, p0, Ld69;->o:Ljava/lang/String;

    iget-object v3, p0, Ld69;->p:Ltj1$c;

    invoke-virtual {p1, v1, v2, v3, p0}, Ls59;->g(Ljava/lang/String;Ljava/lang/String;Ltj1$c;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method
