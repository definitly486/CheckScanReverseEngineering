.class final Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material3/SearchBarScrollBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$Companion;


# instance fields
.field private _offset:Landroidx/compose/runtime/MutableFloatState;

.field private final canScroll:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final flingAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final nestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

.field private final reverseLayout:Z

.field private final scrollOffsetLimit$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->Companion:Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$Companion;

    return-void
.end method

.method public constructor <init>(FFLll3;ZLandroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Lll3<",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->canScroll:Lll3;

    iput-boolean p4, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->reverseLayout:Z

    iput-object p5, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iput-object p6, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->flingAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->_offset:Landroidx/compose/runtime/MutableFloatState;

    invoke-static {p2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->scrollOffsetLimit$delegate:Landroidx/compose/runtime/MutableFloatState;

    new-instance p1, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$nestedScrollConnection$1;

    invoke-direct {p1, p0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$nestedScrollConnection$1;-><init>(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;)V

    iput-object p1, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->nestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    return-void
.end method

.method public static synthetic a(Lo07;Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Lo07;Landroidx/compose/animation/core/AnimationScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->settleSearchBar_OhffZ5M$lambda$4(Lo07;Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Lo07;Landroidx/compose/animation/core/AnimationScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$settleSearchBar-OhffZ5M(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;FLe02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->settleSearchBar-OhffZ5M(FLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->searchBarScrollBehavior$lambda$2$lambda$1(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Landroidx/compose/animation/core/AnimationScope;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->settleSearchBar_OhffZ5M$lambda$5(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Landroidx/compose/animation/core/AnimationScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->searchBarScrollBehavior$lambda$2(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;F)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->searchBarScrollBehavior$lambda$0(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;F)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Landroidx/compose/ui/unit/IntSize;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->searchBarScrollBehavior$lambda$3(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Landroidx/compose/ui/unit/IntSize;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final searchBarScrollBehavior$lambda$0(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;F)Lj59;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffset()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->setScrollOffset(F)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final searchBarScrollBehavior$lambda$2(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffset()F

    move-result p0

    invoke-static {p0}, Lw65;->b(F)I

    move-result p0

    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p3

    add-int/2addr p3, p0

    if-gez p3, :cond_0

    const/4 p3, 0x0

    :cond_0
    move v2, p3

    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    new-instance v4, Landroidx/compose/material3/l1;

    invoke-direct {v4, p0, p2}, Landroidx/compose/material3/l1;-><init>(ILandroidx/compose/ui/layout/Placeable;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lnl3;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method private static final searchBarScrollBehavior$lambda$2$lambda$1(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 8

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFLnl3;ILjava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final searchBarScrollBehavior$lambda$3(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Landroidx/compose/ui/unit/IntSize;)Lj59;
    .locals 4

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p1, v0

    int-to-float p1, p1

    neg-float p1, p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->setScrollOffsetLimit(F)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final settleSearchBar-OhffZ5M(FLe02;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Le02<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;

    iget v3, v2, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->label:I

    :goto_0
    move-object v7, v2

    goto :goto_1

    :cond_0
    new-instance v2, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;

    invoke-direct {v2, v0, v1}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;-><init>(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Le02;)V

    goto :goto_0

    :goto_1
    iget-object v1, v7, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->result:Ljava/lang/Object;

    sget-object v2, La32;->COROUTINE_SUSPENDED:La32;

    iget v3, v7, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->label:I

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v4, :cond_2

    if-ne v3, v10, :cond_1

    iget-object v0, v7, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lo07;

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    iget v3, v7, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->F$0:F

    iget-object v4, v7, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lo07;

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffsetLimit()F

    move-result v1

    cmpg-float v1, v1, v11

    if-nez v1, :cond_4

    move v1, v11

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffset()F

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffsetLimit()F

    move-result v3

    div-float/2addr v1, v3

    :goto_2
    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_b

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v5, v1, v3

    if-nez v5, :cond_5

    goto/16 :goto_7

    :cond_5
    new-instance v12, Lo07;

    invoke-direct {v12}, Lo07;-><init>()V

    move/from16 v14, p1

    iput v14, v12, Lo07;->b:F

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v3, v5, v3

    if-lez v3, :cond_7

    new-instance v3, Lo07;

    invoke-direct {v3}, Lo07;-><init>()V

    const/16 v20, 0x1c

    const/16 v21, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    invoke-static/range {v13 .. v21}, Landroidx/compose/animation/core/AnimationStateKt;->AnimationState$default(FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v5

    iget-object v6, v0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->flingAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    move-object v8, v6

    new-instance v6, Landroidx/compose/material3/j1;

    invoke-direct {v6, v3, v0, v12}, Landroidx/compose/material3/j1;-><init>(Lo07;Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Lo07;)V

    iput-object v12, v7, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->L$0:Ljava/lang/Object;

    iput v1, v7, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->F$0:F

    iput v4, v7, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->label:I

    move-object v3, v5

    const/4 v5, 0x0

    move-object v4, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateDecay$default(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;ZLnl3;Le02;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_6

    goto :goto_5

    :cond_6
    move v3, v1

    move-object v4, v12

    :goto_3
    move v1, v3

    move-object v12, v4

    :cond_7
    invoke-virtual {v0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffsetLimit()F

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffset()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_a

    invoke-virtual {v0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffset()F

    move-result v3

    cmpg-float v3, v3, v11

    if-gez v3, :cond_a

    invoke-virtual {v0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffset()F

    move-result v13

    const/16 v20, 0x1e

    const/16 v21, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    invoke-static/range {v13 .. v21}, Landroidx/compose/animation/core/AnimationStateKt;->AnimationState$default(FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_8

    move v1, v11

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffsetLimit()F

    move-result v1

    :goto_4
    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v1}, Ljava/lang/Float;-><init>(F)V

    iget-object v5, v0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    new-instance v1, Landroidx/compose/material3/k1;

    invoke-direct {v1, v0}, Landroidx/compose/material3/k1;-><init>(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;)V

    iput-object v12, v7, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->L$0:Ljava/lang/Object;

    iput v10, v7, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->label:I

    const/4 v6, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v8, v7

    move-object v7, v1

    invoke-static/range {v3 .. v10}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateTo$default(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLnl3;Le02;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_9

    :goto_5
    return-object v2

    :cond_9
    move-object v0, v12

    :goto_6
    move-object v12, v0

    :cond_a
    iget v0, v12, Lo07;->b:F

    invoke-static {v11, v0}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object v0

    return-object v0

    :cond_b
    :goto_7
    sget-object v0, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object v0

    return-object v0
.end method

.method private static final settleSearchBar_OhffZ5M$lambda$4(Lo07;Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Lo07;Landroidx/compose/animation/core/AnimationScope;)Lj59;
    .locals 3

    invoke-virtual {p3}, Landroidx/compose/animation/core/AnimationScope;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget v1, p0, Lo07;->b:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffset()F

    move-result v1

    add-float v2, v1, v0

    invoke-virtual {p1, v2}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->setScrollOffset(F)V

    invoke-virtual {p1}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffset()F

    move-result p1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p3}, Landroidx/compose/animation/core/AnimationScope;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iput v1, p0, Lo07;->b:F

    invoke-virtual {p3}, Landroidx/compose/animation/core/AnimationScope;->getVelocity()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    iput p0, p2, Lo07;->b:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    invoke-virtual {p3}, Landroidx/compose/animation/core/AnimationScope;->cancelAnimation()V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final settleSearchBar_OhffZ5M$lambda$5(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Landroidx/compose/animation/core/AnimationScope;)Lj59;
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->setScrollOffset(F)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final getCanScroll()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->canScroll:Lll3;

    return-object p0
.end method

.method public final getFlingAnimationSpec()Landroidx/compose/animation/core/DecayAnimationSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->flingAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    return-object p0
.end method

.method public getNestedScrollConnection()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->nestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    return-object p0
.end method

.method public final getReverseLayout()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->reverseLayout:Z

    return p0
.end method

.method public getScrollOffset()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->_offset:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0}, Landroidx/compose/runtime/MutableFloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method public getScrollOffsetLimit()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->scrollOffsetLimit$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method public final getSnapAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object p0
.end method

.method public searchBarScrollBehavior(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 11

    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    new-instance v0, Landroidx/compose/material3/m1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/material3/m1;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Landroidx/compose/foundation/gestures/DraggableKt;->DraggableState(Lnl3;)Landroidx/compose/foundation/gestures/DraggableState;

    move-result-object v1

    iget-object v0, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->canScroll:Lll3;

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    new-instance v7, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$searchBarScrollBehavior$2;

    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$searchBarScrollBehavior$2;-><init>(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Le02;)V

    const/16 v9, 0xb8

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/gestures/DraggableKt;->draggable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLdm3;Ldm3;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    new-instance v0, Landroidx/compose/material3/n1;

    invoke-direct {v0, p0}, Landroidx/compose/material3/n1;-><init>(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;)V

    invoke-static {p1, v0}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Ldm3;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    new-instance v0, Landroidx/compose/material3/o1;

    invoke-direct {v0, p0}, Landroidx/compose/material3/o1;-><init>(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;)V

    invoke-static {p1, v0}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->onSizeChanged(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public setScrollOffset(F)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->_offset:Landroidx/compose/runtime/MutableFloatState;

    invoke-virtual {p0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffsetLimit()F

    move-result p0

    const/4 v1, 0x0

    invoke-static {p1, p0, v1}, Lkx6;->d(FFF)F

    move-result p0

    invoke-interface {v0, p0}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public setScrollOffsetLimit(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->scrollOffsetLimit$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method
