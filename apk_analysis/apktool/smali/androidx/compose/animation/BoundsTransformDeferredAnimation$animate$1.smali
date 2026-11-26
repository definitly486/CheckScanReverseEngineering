.class final Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.animation.BoundsTransformDeferredAnimation$animate$1"
    f = "AnimateBoundsModifier.kt"
    l = {
        0x219
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/BoundsTransformDeferredAnimation;->animate(Ly22;Landroidx/compose/animation/BoundsTransform;)Landroidx/compose/ui/geometry/Rect;
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
.field final synthetic $anim:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Landroidx/compose/ui/geometry/Rect;",
            "Landroidx/compose/animation/core/AnimationVector4D;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $boundsTransform:Landroidx/compose/animation/BoundsTransform;

.field final synthetic $target:Landroidx/compose/ui/geometry/Rect;

.field label:I

.field final synthetic this$0:Landroidx/compose/animation/BoundsTransformDeferredAnimation;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/animation/BoundsTransform;Landroidx/compose/animation/BoundsTransformDeferredAnimation;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Animatable<",
            "Landroidx/compose/ui/geometry/Rect;",
            "Landroidx/compose/animation/core/AnimationVector4D;",
            ">;",
            "Landroidx/compose/ui/geometry/Rect;",
            "Landroidx/compose/animation/BoundsTransform;",
            "Landroidx/compose/animation/BoundsTransformDeferredAnimation;",
            "Le02<",
            "-",
            "Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;->$anim:Landroidx/compose/animation/core/Animatable;

    iput-object p2, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;->$target:Landroidx/compose/ui/geometry/Rect;

    iput-object p3, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;->$boundsTransform:Landroidx/compose/animation/BoundsTransform;

    iput-object p4, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;->this$0:Landroidx/compose/animation/BoundsTransformDeferredAnimation;

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

    new-instance v0, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;

    iget-object v1, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;->$anim:Landroidx/compose/animation/core/Animatable;

    iget-object v2, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;->$target:Landroidx/compose/ui/geometry/Rect;

    iget-object v3, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;->$boundsTransform:Landroidx/compose/animation/BoundsTransform;

    iget-object v4, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;->this$0:Landroidx/compose/animation/BoundsTransformDeferredAnimation;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;-><init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/animation/BoundsTransform;Landroidx/compose/animation/BoundsTransformDeferredAnimation;Le02;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;->label:I

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

    iget-object v1, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;->$anim:Landroidx/compose/animation/core/Animatable;

    move p1, v2

    iget-object v2, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;->$target:Landroidx/compose/ui/geometry/Rect;

    iget-object v3, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;->$boundsTransform:Landroidx/compose/animation/BoundsTransform;

    iget-object v4, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;->this$0:Landroidx/compose/animation/BoundsTransformDeferredAnimation;

    invoke-virtual {v4}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->getCurrentBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;->$target:Landroidx/compose/ui/geometry/Rect;

    invoke-interface {v3, v4, v5}, Landroidx/compose/animation/BoundsTransform;->createAnimationSpec(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v3

    iput p1, p0, Landroidx/compose/animation/BoundsTransformDeferredAnimation$animate$1;->label:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v6, p0

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lnl3;Le02;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
