.class final Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.foundation.gestures.TransformableStateKt$animateBy$4"
    f = "TransformableState.kt"
    l = {
        0x19d
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/TransformableStateKt;->animateBy-jlnHOkQ(Landroidx/compose/foundation/gestures/TransformableState;FJFLandroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;JLe02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Landroidx/compose/foundation/gestures/TransformScope;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $animationSpec:Landroidx/compose/foundation/gestures/DelegatingAnimationSpec;

.field final synthetic $centroid:J

.field final synthetic $previousState:Lr07;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr07<",
            "Landroidx/compose/foundation/gestures/AnimationData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $targetState:Landroidx/compose/foundation/gestures/AnimationData;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lr07;Landroidx/compose/foundation/gestures/AnimationData;Landroidx/compose/foundation/gestures/DelegatingAnimationSpec;JLe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr07<",
            "Landroidx/compose/foundation/gestures/AnimationData;",
            ">;",
            "Landroidx/compose/foundation/gestures/AnimationData;",
            "Landroidx/compose/foundation/gestures/DelegatingAnimationSpec;",
            "J",
            "Le02<",
            "-",
            "Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;->$previousState:Lr07;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;->$targetState:Landroidx/compose/foundation/gestures/AnimationData;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;->$animationSpec:Landroidx/compose/foundation/gestures/DelegatingAnimationSpec;

    iput-wide p4, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;->$centroid:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lpg8;-><init>(ILe02;)V

    return-void
.end method

.method public static synthetic g(Lr07;Landroidx/compose/foundation/gestures/TransformScope;JLandroidx/compose/animation/core/AnimationScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;->invokeSuspend$lambda$0(Lr07;Landroidx/compose/foundation/gestures/TransformScope;JLandroidx/compose/animation/core/AnimationScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Lr07;Landroidx/compose/foundation/gestures/TransformScope;JLandroidx/compose/animation/core/AnimationScope;)Lj59;
    .locals 8

    iget-object v0, p0, Lr07;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/AnimationData;

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/AnimationData;->getZoom()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p4}, Landroidx/compose/animation/core/AnimationScope;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/gestures/AnimationData;

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/AnimationData;->getZoom()F

    move-result v0

    iget-object v1, p0, Lr07;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/gestures/AnimationData;

    invoke-virtual {v1}, Landroidx/compose/foundation/gestures/AnimationData;->getZoom()F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_0

    :goto_1
    invoke-virtual {p4}, Landroidx/compose/animation/core/AnimationScope;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/gestures/AnimationData;

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/AnimationData;->getDegrees()F

    move-result v0

    iget-object v1, p0, Lr07;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/gestures/AnimationData;

    invoke-virtual {v1}, Landroidx/compose/foundation/gestures/AnimationData;->getDegrees()F

    move-result v1

    sub-float v7, v0, v1

    invoke-virtual {p4}, Landroidx/compose/animation/core/AnimationScope;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/gestures/AnimationData;

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/AnimationData;->getOffset-F1C5BW0()J

    move-result-wide v0

    iget-object v2, p0, Lr07;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/gestures/AnimationData;

    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/AnimationData;->getOffset-F1C5BW0()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v5

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v1 .. v7}, Landroidx/compose/foundation/gestures/TransformScope;->transformByWithCentroid-IEwrmTk(JFJF)V

    invoke-virtual {p4}, Landroidx/compose/animation/core/AnimationScope;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lr07;->b:Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 7
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

    new-instance v0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;->$previousState:Lr07;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;->$targetState:Landroidx/compose/foundation/gestures/AnimationData;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;->$animationSpec:Landroidx/compose/foundation/gestures/DelegatingAnimationSpec;

    iget-wide v4, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;->$centroid:J

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;-><init>(Lr07;Landroidx/compose/foundation/gestures/AnimationData;Landroidx/compose/foundation/gestures/DelegatingAnimationSpec;JLe02;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/gestures/TransformScope;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/TransformScope;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Landroidx/compose/foundation/gestures/TransformScope;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;->invoke(Landroidx/compose/foundation/gestures/TransformScope;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v5, p0

    sget-object v8, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, v5, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;->label:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v0, v5, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/TransformScope;

    sget-object v9, Landroidx/compose/foundation/gestures/AnimationDataConverter;->INSTANCE:Landroidx/compose/foundation/gestures/AnimationDataConverter;

    iget-object v2, v5, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;->$previousState:Lr07;

    iget-object v10, v2, Lr07;->b:Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/foundation/gestures/TransformableStateKt;->access$getZeroAnimationVelocity$p()Landroidx/compose/foundation/gestures/AnimationData;

    move-result-object v11

    const/16 v17, 0x38

    const/16 v18, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v9 .. v18}, Landroidx/compose/animation/core/AnimationStateKt;->AnimationState$default(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;JJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v2

    iget-object v3, v5, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;->$targetState:Landroidx/compose/foundation/gestures/AnimationData;

    move-object v4, v2

    iget-object v2, v5, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;->$animationSpec:Landroidx/compose/foundation/gestures/DelegatingAnimationSpec;

    iget-object v6, v5, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;->$previousState:Lr07;

    iget-wide v9, v5, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;->$centroid:J

    move-object v7, v4

    new-instance v4, Landroidx/compose/foundation/gestures/e0;

    invoke-direct {v4, v6, v0, v9, v10}, Landroidx/compose/foundation/gestures/e0;-><init>(Lr07;Landroidx/compose/foundation/gestures/TransformScope;J)V

    iput v1, v5, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;->label:I

    move-object v1, v3

    const/4 v3, 0x0

    const/4 v6, 0x4

    move-object v0, v7

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateTo$default(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLnl3;Le02;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_2

    return-object v8

    :cond_2
    :goto_0
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method
