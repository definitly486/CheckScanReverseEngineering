.class public final Lne3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhd3<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lie3;


# direct methods
.method public constructor <init>(Lie3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lne3;->b:Lie3;

    return-void
.end method


# virtual methods
.method public final collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid3<",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lne3$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lne3$a;

    iget v1, v0, Lne3$a;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lne3$a;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Lne3$a;

    invoke-direct {v0, p0, p2}, Lne3$a;-><init>(Lne3;Le02;)V

    :goto_0
    iget-object p2, v0, Lne3$a;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lne3$a;->m:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lne3$a;->o:Ljava/lang/Object;

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lp07;

    invoke-direct {v2}, Lp07;-><init>()V

    :try_start_1
    iget-object p0, p0, Lne3;->b:Lie3;

    new-instance v4, Loe3;

    invoke-direct {v4, v2, p1, p2}, Loe3;-><init>(Lp07;Lid3;Ljava/lang/Object;)V

    iput-object p2, v0, Lne3$a;->o:Ljava/lang/Object;

    iput v3, v0, Lne3$a;->m:I

    invoke-virtual {p0, v4, v0}, Lie3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v1, :cond_3

    return-object v1

    :catch_1
    move-exception p1

    move-object p0, p2

    :goto_1
    iget-object p2, p1, Lkotlinx/coroutines/flow/internal/AbortFlowException;->b:Ljava/lang/Object;

    if-ne p2, p0, :cond_4

    :cond_3
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_4
    throw p1
.end method
