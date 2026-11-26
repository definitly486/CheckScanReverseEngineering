.class public final Lnd3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.internal.FlowCoroutineKt$scopedFlow$1$1"
    f = "FlowCoroutine.kt"
    l = {
        0x2f
    }
    m = "invokeSuspend"
    v = 0x1
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

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ldm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldm3<",
            "Ly22;",
            "Lid3<",
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
.end field

.field public final synthetic o:Lid3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid3<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldm3;Lid3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldm3<",
            "-",
            "Ly22;",
            "-",
            "Lid3<",
            "Ljava/lang/Object;",
            ">;-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lid3<",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Lnd3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnd3;->n:Ldm3;

    iput-object p2, p0, Lnd3;->o:Lid3;

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

    new-instance v0, Lnd3;

    iget-object v1, p0, Lnd3;->n:Ldm3;

    iget-object p0, p0, Lnd3;->o:Lid3;

    invoke-direct {v0, v1, p0, p2}, Lnd3;-><init>(Ldm3;Lid3;Le02;)V

    iput-object p1, v0, Lnd3;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lnd3;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lnd3;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lnd3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lnd3;->m:Ljava/lang/Object;

    check-cast v0, Ly22;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, p0, Lnd3;->l:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iput-object v3, p0, Lnd3;->m:Ljava/lang/Object;

    iput v4, p0, Lnd3;->l:I

    iget-object p1, p0, Lnd3;->n:Ldm3;

    iget-object v2, p0, Lnd3;->o:Lid3;

    invoke-interface {p1, v0, v2, p0}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
