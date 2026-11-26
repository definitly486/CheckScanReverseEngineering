.class final Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.material3.TooltipStateImpl$show$cancellableShow$1"
    f = "Tooltip.kt"
    l = {
        0x677
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TooltipStateImpl;->show(Landroidx/compose/foundation/MutatePriority;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lnl3<",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/material3/TooltipStateImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/TooltipStateImpl;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/TooltipStateImpl;",
            "Le02<",
            "-",
            "Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->this$0:Landroidx/compose/material3/TooltipStateImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Le02;)Le02;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;

    iget-object p0, p0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->this$0:Landroidx/compose/material3/TooltipStateImpl;

    invoke-direct {v0, p0, p1}, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;-><init>(Landroidx/compose/material3/TooltipStateImpl;Le02;)V

    return-object v0
.end method

.method public final invoke(Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->create(Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Le02;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->invoke(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/material3/TooltipStateImpl;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->this$0:Landroidx/compose/material3/TooltipStateImpl;

    iput-object p1, p0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->label:I

    new-instance v1, Lc31;

    invoke-static {p0}, Lzya;->b(Le02;)Le02;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v1}, Lc31;->u()V

    invoke-virtual {p1}, Landroidx/compose/material3/TooltipStateImpl;->getTransition()Landroidx/compose/animation/core/MutableTransitionState;

    move-result-object p0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v2}, Landroidx/compose/animation/core/MutableTransitionState;->setTargetState(Ljava/lang/Object;)V

    invoke-static {p1, v1}, Landroidx/compose/material3/TooltipStateImpl;->access$setJob$p(Landroidx/compose/material3/TooltipStateImpl;La31;)V

    invoke-virtual {v1}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
