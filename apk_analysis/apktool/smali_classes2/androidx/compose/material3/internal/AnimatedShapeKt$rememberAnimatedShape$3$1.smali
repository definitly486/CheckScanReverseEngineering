.class final Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.material3.internal.AnimatedShapeKt$rememberAnimatedShape$3$1"
    f = "AnimatedShape.kt"
    l = {
        0x8c
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/internal/AnimatedShapeKt;->rememberAnimatedShape(Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
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
.field final synthetic $channel:Lx81;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx81<",
            "Landroidx/compose/foundation/shape/RoundedCornerShape;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/material3/internal/AnimatedShapeState;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lx81;Landroidx/compose/material3/internal/AnimatedShapeState;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx81<",
            "Landroidx/compose/foundation/shape/RoundedCornerShape;",
            ">;",
            "Landroidx/compose/material3/internal/AnimatedShapeState;",
            "Le02<",
            "-",
            "Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;->$channel:Lx81;

    iput-object p2, p0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;->$state:Landroidx/compose/material3/internal/AnimatedShapeState;

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

    new-instance v0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;

    iget-object v1, p0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;->$channel:Lx81;

    iget-object p0, p0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;->$state:Landroidx/compose/material3/internal/AnimatedShapeState;

    invoke-direct {v0, v1, p0, p2}, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;-><init>(Lx81;Landroidx/compose/material3/internal/AnimatedShapeState;Le02;)V

    iput-object p1, v0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ly22;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lk91;

    iget-object v4, p0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;->L$0:Ljava/lang/Object;

    check-cast v4, Ly22;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ly22;

    iget-object v1, p0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;->$channel:Lx81;

    invoke-interface {v1}, Lqz6;->iterator()Lk91;

    move-result-object v1

    move-object v4, p1

    :goto_0
    iput-object v4, p0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;->label:I

    invoke-interface {v1, p0}, Lk91;->b(Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v1}, Lk91;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/shape/RoundedCornerShape;

    iget-object v5, p0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;->$channel:Lx81;

    invoke-interface {v5}, Lqz6;->i()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lp91;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/shape/RoundedCornerShape;

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, v5

    :goto_2
    new-instance v5, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1$1;

    iget-object v6, p0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1;->$state:Landroidx/compose/material3/internal/AnimatedShapeState;

    invoke-direct {v5, v6, p1, v2}, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$3$1$1;-><init>(Landroidx/compose/material3/internal/AnimatedShapeState;Landroidx/compose/foundation/shape/RoundedCornerShape;Le02;)V

    const/4 p1, 0x3

    invoke-static {v4, v2, v2, v5, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    goto :goto_0

    :cond_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
