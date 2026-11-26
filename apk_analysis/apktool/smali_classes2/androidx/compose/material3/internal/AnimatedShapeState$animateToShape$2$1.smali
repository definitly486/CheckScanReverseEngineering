.class final Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.material3.internal.AnimatedShapeState$animateToShape$2$1"
    f = "AnimatedShape.kt"
    l = {
        0x52
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic $shape:Landroidx/compose/foundation/shape/CornerBasedShape;

.field label:I

.field final synthetic this$0:Landroidx/compose/material3/internal/AnimatedShapeState;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/internal/AnimatedShapeState;Landroidx/compose/foundation/shape/CornerBasedShape;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/internal/AnimatedShapeState;",
            "Landroidx/compose/foundation/shape/CornerBasedShape;",
            "Le02<",
            "-",
            "Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$1;->this$0:Landroidx/compose/material3/internal/AnimatedShapeState;

    iput-object p2, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$1;->$shape:Landroidx/compose/foundation/shape/CornerBasedShape;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

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

    new-instance p1, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$1;

    iget-object v0, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$1;->this$0:Landroidx/compose/material3/internal/AnimatedShapeState;

    iget-object p0, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$1;->$shape:Landroidx/compose/foundation/shape/CornerBasedShape;

    invoke-direct {p1, v0, p0, p2}, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$1;-><init>(Landroidx/compose/material3/internal/AnimatedShapeState;Landroidx/compose/foundation/shape/CornerBasedShape;Le02;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$1;->label:I

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

    iget-object p1, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$1;->this$0:Landroidx/compose/material3/internal/AnimatedShapeState;

    invoke-static {p1}, Landroidx/compose/material3/internal/AnimatedShapeState;->access$getTopStart$p(Landroidx/compose/material3/internal/AnimatedShapeState;)Landroidx/compose/animation/core/Animatable;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object p1, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$1;->$shape:Landroidx/compose/foundation/shape/CornerBasedShape;

    invoke-virtual {p1}, Landroidx/compose/foundation/shape/CornerBasedShape;->getTopStart()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object p1

    iget-object v1, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$1;->this$0:Landroidx/compose/material3/internal/AnimatedShapeState;

    invoke-virtual {v1}, Landroidx/compose/material3/internal/AnimatedShapeState;->getSize-NH-jbRc()J

    move-result-wide v4

    iget-object v1, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$1;->this$0:Landroidx/compose/material3/internal/AnimatedShapeState;

    invoke-virtual {v1}, Landroidx/compose/material3/internal/AnimatedShapeState;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v1

    invoke-interface {p1, v4, v5, v1}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    move-result p1

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, p1}, Ljava/lang/Float;-><init>(F)V

    iget-object p1, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$1;->this$0:Landroidx/compose/material3/internal/AnimatedShapeState;

    invoke-virtual {p1}, Landroidx/compose/material3/internal/AnimatedShapeState;->getSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v5

    iput v2, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$1;->label:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    move-object v8, p0

    invoke-static/range {v3 .. v10}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lnl3;Le02;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Landroidx/compose/animation/core/AnimationResult;

    :cond_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
