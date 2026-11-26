.class final Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.foundation.gestures.TransformableStateKt$animateRotateBy$3"
    f = "TransformableState.kt"
    l = {
        0x120
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/TransformableStateKt;->animateRotateBy-Fgt4K4Q(Landroidx/compose/foundation/gestures/TransformableState;FLandroidx/compose/animation/core/AnimationSpec;JLe02;)Ljava/lang/Object;
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
.field final synthetic $animationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $centroid:J

.field final synthetic $degrees:F

.field final synthetic $previous:Lo07;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lo07;FLandroidx/compose/animation/core/AnimationSpec;JLe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo07;",
            "F",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;J",
            "Le02<",
            "-",
            "Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;->$previous:Lo07;

    iput p2, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;->$degrees:F

    iput-object p3, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iput-wide p4, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;->$centroid:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lpg8;-><init>(ILe02;)V

    return-void
.end method

.method public static synthetic g(Lo07;Landroidx/compose/foundation/gestures/TransformScope;JLandroidx/compose/animation/core/AnimationScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;->invokeSuspend$lambda$0(Lo07;Landroidx/compose/foundation/gestures/TransformScope;JLandroidx/compose/animation/core/AnimationScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Lo07;Landroidx/compose/foundation/gestures/TransformScope;JLandroidx/compose/animation/core/AnimationScope;)Lj59;
    .locals 11

    invoke-virtual {p4}, Landroidx/compose/animation/core/AnimationScope;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget v1, p0, Lo07;->b:F

    sub-float v8, v0, v1

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p1

    move-wide v3, p2

    invoke-static/range {v2 .. v10}, Landroidx/compose/foundation/gestures/TransformScope;->transformByWithCentroid-IEwrmTk$default(Landroidx/compose/foundation/gestures/TransformScope;JFJFILjava/lang/Object;)V

    invoke-virtual {p4}, Landroidx/compose/animation/core/AnimationScope;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lo07;->b:F

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

    new-instance v0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;->$previous:Lo07;

    iget v2, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;->$degrees:F

    iget-object v3, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iget-wide v4, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;->$centroid:J

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;-><init>(Lo07;FLandroidx/compose/animation/core/AnimationSpec;JLe02;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Landroidx/compose/foundation/gestures/TransformScope;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;->invoke(Landroidx/compose/foundation/gestures/TransformScope;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v5, p0

    sget-object v8, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, v5, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;->label:I

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

    iget-object v0, v5, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/TransformScope;

    iget-object v2, v5, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;->$previous:Lo07;

    iget v9, v2, Lo07;->b:F

    const/16 v16, 0x1e

    const/16 v17, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v17}, Landroidx/compose/animation/core/AnimationStateKt;->AnimationState$default(FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v2

    iget v3, v5, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;->$degrees:F

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v3}, Ljava/lang/Float;-><init>(F)V

    move-object v3, v2

    iget-object v2, v5, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iget-object v6, v5, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;->$previous:Lo07;

    iget-wide v9, v5, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;->$centroid:J

    move-object v7, v4

    new-instance v4, Landroidx/compose/foundation/gestures/g0;

    invoke-direct {v4, v6, v0, v9, v10}, Landroidx/compose/foundation/gestures/g0;-><init>(Lo07;Landroidx/compose/foundation/gestures/TransformScope;J)V

    iput v1, v5, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$3;->label:I

    move-object v0, v3

    const/4 v3, 0x0

    const/4 v6, 0x4

    move-object v1, v7

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
