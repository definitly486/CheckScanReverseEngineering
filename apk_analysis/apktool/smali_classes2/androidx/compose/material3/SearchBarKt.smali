.class public final Landroidx/compose/material3/SearchBarKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AnimationDelayMillis:I = 0x64

.field private static final AnimationEnterDurationMillis:I = 0x258

.field private static final AnimationEnterEasing:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final AnimationEnterFloatSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final AnimationEnterSizeSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation
.end field

.field private static final AnimationExitDurationMillis:I = 0x15e

.field private static final AnimationExitEasing:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final AnimationExitFloatSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final AnimationExitSizeSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation
.end field

.field private static final AnimationPredictiveBackExitFloatSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final DockedEnterTransition:Landroidx/compose/animation/EnterTransition;

.field private static final DockedExitTransition:Landroidx/compose/animation/ExitTransition;

.field private static final DockedExpandedTableMaxHeightScreenRatio:F = 0.6666667f

.field private static final DockedExpandedTableMinHeight:F

.field private static final LayoutIdInputField:Ljava/lang/String; = "InputField"

.field private static final LayoutIdSearchContent:Ljava/lang/String; = "Content"

.field private static final LayoutIdSurface:Ljava/lang/String; = "Surface"

.field private static final SearchBarAsTopBarPadding:F

.field private static final SearchBarCornerRadius:F

.field private static final SearchBarIconOffsetX:F

.field private static final SearchBarMaxWidth:F

.field private static final SearchBarMinWidth:F

.field private static final SearchBarPredictiveBackMaxOffsetXRatio:F = 0.05f

.field private static final SearchBarPredictiveBackMaxOffsetY:F

.field private static final SearchBarPredictiveBackMinMargin:F

.field private static final SearchBarPredictiveBackMinScale:F = 0.9f

.field private static final SearchBarVerticalPadding:F

.field private static final UnspecifiedTextFieldColors:Landroidx/compose/material3/TextFieldColors;


# direct methods
.method static constructor <clinit>()V
    .locals 87

    new-instance v0, Landroidx/compose/material3/TextFieldColors;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v1

    move-object v5, v3

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v3

    move-object v7, v5

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v5

    move-object v9, v7

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v7

    move-object v11, v9

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v9

    move-object v13, v11

    invoke-virtual {v13}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v11

    move-object v15, v13

    invoke-virtual {v15}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v13

    move-object/from16 v17, v15

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v15

    move-object/from16 v19, v17

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v17

    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v19

    new-instance v22, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v23

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v25

    const/16 v27, 0x0

    invoke-direct/range {v22 .. v27}, Landroidx/compose/foundation/text/selection/TextSelectionColors;-><init>(JJLjh2;)V

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v23

    move-object/from16 v26, v21

    move-object/from16 v21, v22

    move-wide/from16 v22, v23

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v24

    move-object/from16 v28, v26

    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v26

    move-object/from16 v30, v28

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v28

    move-object/from16 v32, v30

    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v30

    move-object/from16 v34, v32

    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v32

    move-object/from16 v36, v34

    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v34

    move-object/from16 v38, v36

    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v36

    move-object/from16 v40, v38

    invoke-virtual/range {v40 .. v40}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v38

    move-object/from16 v42, v40

    invoke-virtual/range {v42 .. v42}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v40

    move-object/from16 v44, v42

    invoke-virtual/range {v44 .. v44}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v42

    move-object/from16 v46, v44

    invoke-virtual/range {v46 .. v46}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v44

    move-object/from16 v48, v46

    invoke-virtual/range {v48 .. v48}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v46

    move-object/from16 v50, v48

    invoke-virtual/range {v50 .. v50}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v48

    move-object/from16 v52, v50

    invoke-virtual/range {v52 .. v52}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v50

    move-object/from16 v54, v52

    invoke-virtual/range {v54 .. v54}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v52

    move-object/from16 v56, v54

    invoke-virtual/range {v56 .. v56}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v54

    move-object/from16 v58, v56

    invoke-virtual/range {v58 .. v58}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v56

    move-object/from16 v60, v58

    invoke-virtual/range {v60 .. v60}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v58

    move-object/from16 v62, v60

    invoke-virtual/range {v62 .. v62}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v60

    move-object/from16 v64, v62

    invoke-virtual/range {v64 .. v64}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v62

    move-object/from16 v66, v64

    invoke-virtual/range {v66 .. v66}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v64

    move-object/from16 v68, v66

    invoke-virtual/range {v68 .. v68}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v66

    move-object/from16 v70, v68

    invoke-virtual/range {v70 .. v70}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v68

    move-object/from16 v72, v70

    invoke-virtual/range {v72 .. v72}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v70

    move-object/from16 v74, v72

    invoke-virtual/range {v74 .. v74}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v72

    move-object/from16 v76, v74

    invoke-virtual/range {v76 .. v76}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v74

    move-object/from16 v78, v76

    invoke-virtual/range {v78 .. v78}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v76

    move-object/from16 v80, v78

    invoke-virtual/range {v80 .. v80}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v78

    move-object/from16 v82, v80

    invoke-virtual/range {v82 .. v82}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v80

    move-object/from16 v84, v82

    invoke-virtual/range {v84 .. v84}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v82

    invoke-virtual/range {v84 .. v84}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v84

    const/16 v86, 0x0

    invoke-direct/range {v0 .. v86}, Landroidx/compose/material3/TextFieldColors;-><init>(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLjh2;)V

    sput-object v0, Landroidx/compose/material3/SearchBarKt;->UnspecifiedTextFieldColors:Landroidx/compose/material3/TextFieldColors;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/SearchBarKt;->SearchBarAsTopBarPadding:F

    sget-object v1, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v1}, Landroidx/compose/material3/SearchBarDefaults;->getInputFieldHeight-D9Ej5fM()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/SearchBarKt;->SearchBarCornerRadius:F

    const/high16 v1, 0x43700000    # 240.0f

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/SearchBarKt;->DockedExpandedTableMinHeight:F

    const/high16 v1, 0x43b40000    # 360.0f

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/SearchBarKt;->SearchBarMinWidth:F

    const/high16 v1, 0x44340000    # 720.0f

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/SearchBarKt;->SearchBarMaxWidth:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/SearchBarKt;->SearchBarVerticalPadding:F

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/SearchBarKt;->SearchBarIconOffsetX:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/SearchBarKt;->SearchBarPredictiveBackMinMargin:F

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/SearchBarKt;->SearchBarPredictiveBackMaxOffsetY:F

    sget-object v0, Landroidx/compose/material3/tokens/MotionTokens;->INSTANCE:Landroidx/compose/material3/tokens/MotionTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/MotionTokens;->getEasingEmphasizedDecelerateCubicBezier()Landroidx/compose/animation/core/CubicBezierEasing;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/SearchBarKt;->AnimationEnterEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    new-instance v1, Landroidx/compose/animation/core/CubicBezierEasing;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3, v2}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v1, Landroidx/compose/material3/SearchBarKt;->AnimationExitEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    const/16 v2, 0x258

    const/16 v4, 0x64

    invoke-static {v2, v4, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->tween(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v5

    sput-object v5, Landroidx/compose/material3/SearchBarKt;->AnimationEnterFloatSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    const/16 v6, 0x15e

    invoke-static {v6, v4, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->tween(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v7

    sput-object v7, Landroidx/compose/material3/SearchBarKt;->AnimationExitFloatSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v6, v8, v1, v9, v10}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v8

    sput-object v8, Landroidx/compose/material3/SearchBarKt;->AnimationPredictiveBackExitFloatSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    invoke-static {v2, v4, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->tween(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v11

    sput-object v11, Landroidx/compose/material3/SearchBarKt;->AnimationEnterSizeSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    invoke-static {v6, v4, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->tween(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/SearchBarKt;->AnimationExitSizeSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    invoke-static {v5, v3, v9, v10}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object v1

    const/16 v15, 0xe

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Landroidx/compose/animation/EnterExitTransitionKt;->expandVertically$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLnl3;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/SearchBarKt;->DockedEnterTransition:Landroidx/compose/animation/EnterTransition;

    invoke-static {v7, v3, v9, v10}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object v1

    const/16 v16, 0xe

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v12, v0

    invoke-static/range {v12 .. v17}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkVertically$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLnl3;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/compose/animation/ExitTransition;->plus(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/SearchBarKt;->DockedExitTransition:Landroidx/compose/animation/ExitTransition;

    return-void
.end method

.method public static synthetic A(Lnl3;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/SearchBarKt;->DockedSearchBar_EQC0FA8$lambda$24$lambda$23(Lnl3;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Landroidx/compose/material3/SearchBarState;Landroidx/compose/ui/layout/LayoutCoordinates;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/SearchBarKt;->SearchBar_nbWgWpA$lambda$1$lambda$0(Landroidx/compose/material3/SearchBarState;Landroidx/compose/ui/layout/LayoutCoordinates;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final DetectClickFromInteractionSource(Landroidx/compose/foundation/interaction/InteractionSource;Lll3;Landroidx/compose/runtime/Composer;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    const v0, -0x26e6a947    # -2.697564E15f

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    and-int/lit8 v1, p3, 0x6

    const/4 v2, 0x4

    if-nez v1, :cond_1

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p3

    goto :goto_1

    :cond_1
    move v1, p3

    :goto_1
    and-int/lit8 v3, p3, 0x30

    const/16 v4, 0x20

    if-nez v3, :cond_3

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_3
    and-int/lit8 v3, v1, 0x13

    const/16 v5, 0x12

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v3, v5, :cond_4

    move v3, v7

    goto :goto_3

    :cond_4
    move v3, v6

    :goto_3
    and-int/lit8 v5, v1, 0x1

    invoke-interface {p2, v3, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, -0x1

    const-string v5, "androidx.compose.material3.DetectClickFromInteractionSource (SearchBar.kt:2592)"

    invoke-static {v0, v1, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_5
    and-int/lit8 v0, v1, 0xe

    if-ne v0, v2, :cond_6

    move v2, v7

    goto :goto_4

    :cond_6
    move v2, v6

    :goto_4
    and-int/lit8 v1, v1, 0x70

    if-ne v1, v4, :cond_7

    move v6, v7

    :cond_7
    or-int v1, v2, v6

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_8

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_9

    :cond_8
    new-instance v2, Landroidx/compose/material3/SearchBarKt$DetectClickFromInteractionSource$1$1;

    const/4 v1, 0x0

    invoke-direct {v2, p0, p1, v1}, Landroidx/compose/material3/SearchBarKt$DetectClickFromInteractionSource$1$1;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;Lll3;Le02;)V

    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_9
    check-cast v2, Lbm3;

    invoke-static {p0, v2, p2, v0}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lbm3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_5

    :cond_a
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_b
    :goto_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p2

    if-eqz p2, :cond_c

    new-instance v0, Lzm;

    invoke-direct {v0, p3, v7, p0, p1}, Lzm;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_c
    return-void
.end method

.method private static final DetectClickFromInteractionSource$lambda$73(Landroidx/compose/foundation/interaction/InteractionSource;Lll3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p2

    invoke-static {p0, p1, p3, p2}, Landroidx/compose/material3/SearchBarKt;->DetectClickFromInteractionSource(Landroidx/compose/foundation/interaction/InteractionSource;Lll3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final DockedSearchBar-EQC0FA8(Lbm3;ZLnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLdm3;Landroidx/compose/runtime/Composer;II)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;Z",
            "Lnl3<",
            "-",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/SearchBarColors;",
            "FF",
            "Ldm3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    const v0, -0x77bb8454

    move-object/from16 v4, p9

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    and-int/lit8 v5, v11, 0x1

    if-eqz v5, :cond_0

    or-int/lit8 v5, v10, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v10, 0x6

    if-nez v5, :cond_2

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v10

    goto :goto_1

    :cond_2
    move v5, v10

    :goto_1
    and-int/lit8 v6, v11, 0x2

    if-eqz v6, :cond_3

    or-int/lit8 v5, v5, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v10, 0x30

    if-nez v6, :cond_5

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v5, v6

    :cond_5
    :goto_3
    and-int/lit8 v6, v11, 0x4

    if-eqz v6, :cond_6

    or-int/lit16 v5, v5, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v6, v10, 0x180

    if-nez v6, :cond_8

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_4

    :cond_7
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v5, v6

    :cond_8
    :goto_5
    and-int/lit8 v6, v11, 0x8

    if-eqz v6, :cond_a

    or-int/lit16 v5, v5, 0xc00

    :cond_9
    move-object/from16 v8, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v8, v10, 0xc00

    if-nez v8, :cond_9

    move-object/from16 v8, p3

    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/16 v12, 0x800

    goto :goto_6

    :cond_b
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v5, v12

    :goto_7
    and-int/lit16 v12, v10, 0x6000

    if-nez v12, :cond_e

    and-int/lit8 v12, v11, 0x10

    if-nez v12, :cond_c

    move-object/from16 v12, p4

    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/16 v13, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v12, p4

    :cond_d
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v5, v13

    goto :goto_9

    :cond_e
    move-object/from16 v12, p4

    :goto_9
    const/high16 v13, 0x30000

    and-int/2addr v13, v10

    if-nez v13, :cond_11

    and-int/lit8 v13, v11, 0x20

    if-nez v13, :cond_f

    move-object/from16 v13, p5

    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_f
    move-object/from16 v13, p5

    :cond_10
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v5, v14

    goto :goto_b

    :cond_11
    move-object/from16 v13, p5

    :goto_b
    and-int/lit8 v21, v11, 0x40

    const/high16 v14, 0x180000

    if-eqz v21, :cond_13

    or-int/2addr v5, v14

    :cond_12
    move/from16 v14, p6

    goto :goto_d

    :cond_13
    and-int/2addr v14, v10

    if-nez v14, :cond_12

    move/from16 v14, p6

    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v15

    if-eqz v15, :cond_14

    const/high16 v15, 0x100000

    goto :goto_c

    :cond_14
    const/high16 v15, 0x80000

    :goto_c
    or-int/2addr v5, v15

    :goto_d
    and-int/lit16 v15, v11, 0x80

    const/high16 v22, 0xc00000

    if-eqz v15, :cond_15

    or-int v5, v5, v22

    move/from16 v7, p7

    goto :goto_f

    :cond_15
    and-int v16, v10, v22

    move/from16 v7, p7

    if-nez v16, :cond_17

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_16

    const/high16 v16, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v16, 0x400000

    :goto_e
    or-int v5, v5, v16

    :cond_17
    :goto_f
    and-int/lit16 v0, v11, 0x100

    const/high16 v16, 0x6000000

    if-eqz v0, :cond_18

    or-int v5, v5, v16

    goto :goto_11

    :cond_18
    and-int v0, v10, v16

    if-nez v0, :cond_1a

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/high16 v0, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v0, 0x2000000

    :goto_10
    or-int/2addr v5, v0

    :cond_1a
    :goto_11
    const v0, 0x2492493

    and-int/2addr v0, v5

    move/from16 v16, v5

    const v5, 0x2492492

    const/4 v13, 0x1

    if-eq v0, v5, :cond_1b

    move v0, v13

    goto :goto_12

    :cond_1b
    const/4 v0, 0x0

    :goto_12
    and-int/lit8 v5, v16, 0x1

    invoke-interface {v4, v0, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v10, 0x1

    const v5, -0x70001

    const v18, -0xe001

    if-eqz v0, :cond_1f

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_14

    :cond_1c
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v11, 0x10

    if-eqz v0, :cond_1d

    and-int v0, v16, v18

    goto :goto_13

    :cond_1d
    move/from16 v0, v16

    :goto_13
    and-int/lit8 v6, v11, 0x20

    if-eqz v6, :cond_1e

    and-int/2addr v0, v5

    :cond_1e
    move v6, v0

    move/from16 v19, v7

    move v5, v13

    move/from16 v18, v14

    move-object/from16 v0, p5

    move-object v13, v4

    const/4 v4, 0x0

    goto/16 :goto_18

    :cond_1f
    :goto_14
    if-eqz v6, :cond_20

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v8, v0

    :cond_20
    and-int/lit8 v0, v11, 0x10

    if-eqz v0, :cond_21

    sget-object v0, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    const/4 v6, 0x6

    invoke-virtual {v0, v4, v6}, Landroidx/compose/material3/SearchBarDefaults;->getDockedShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    and-int v6, v16, v18

    goto :goto_15

    :cond_21
    move-object v0, v12

    move/from16 v6, v16

    :goto_15
    and-int/lit8 v12, v11, 0x20

    if-eqz v12, :cond_22

    sget-object v12, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    const/16 v19, 0xc00

    const/16 v20, 0x7

    move/from16 v16, v13

    const-wide/16 v13, 0x0

    move/from16 v18, v15

    move/from16 v24, v16

    const-wide/16 v15, 0x0

    const/16 v25, 0x0

    const/16 v17, 0x0

    move/from16 v26, v18

    move-object/from16 v18, v4

    move/from16 v4, v25

    move/from16 v25, v5

    move/from16 v5, v24

    move/from16 v24, v26

    invoke-virtual/range {v12 .. v20}, Landroidx/compose/material3/SearchBarDefaults;->colors-Klgx-Pg(JJLandroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SearchBarColors;

    move-result-object v12

    move-object/from16 v13, v18

    and-int v6, v6, v25

    goto :goto_16

    :cond_22
    move v5, v13

    move/from16 v24, v15

    move-object v13, v4

    const/4 v4, 0x0

    move-object/from16 v12, p5

    :goto_16
    if-eqz v21, :cond_23

    sget-object v14, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v14}, Landroidx/compose/material3/SearchBarDefaults;->getTonalElevation-D9Ej5fM()F

    move-result v14

    goto :goto_17

    :cond_23
    move/from16 v14, p6

    :goto_17
    if-eqz v24, :cond_24

    sget-object v7, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v7}, Landroidx/compose/material3/SearchBarDefaults;->getShadowElevation-D9Ej5fM()F

    move-result v7

    :cond_24
    move-object/from16 v18, v12

    move-object v12, v0

    move-object/from16 v0, v18

    move/from16 v19, v7

    move/from16 v18, v14

    :goto_18
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_25

    const/4 v7, -0x1

    const-string v14, "androidx.compose.material3.DockedSearchBar (SearchBar.kt:657)"

    const v15, -0x77bb8454

    invoke-static {v15, v6, v7, v14}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_25
    invoke-virtual {v0}, Landroidx/compose/material3/SearchBarColors;->getContainerColor-0d7_KjU()J

    move-result-wide v14

    move v7, v6

    invoke-virtual {v0}, Landroidx/compose/material3/SearchBarColors;->getContainerColor-0d7_KjU()J

    move-result-wide v5

    invoke-static {v5, v6, v13, v4}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v16

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v8, v5}, Landroidx/compose/ui/ZIndexModifierKt;->zIndex(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget v6, Landroidx/compose/material3/SearchBarKt;->SearchBarMinWidth:F

    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    new-instance v6, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$1;

    invoke-direct {v6, v1, v2, v0, v9}, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$1;-><init>(Lbm3;ZLandroidx/compose/material3/SearchBarColors;Ldm3;)V

    const/16 v4, 0x36

    move-object/from16 p4, v0

    const v0, 0x17f55131

    const/4 v1, 0x1

    invoke-static {v0, v1, v6, v13, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v21

    shr-int/lit8 v0, v7, 0x9

    and-int/lit8 v0, v0, 0x70

    or-int v0, v0, v22

    shr-int/lit8 v4, v7, 0x6

    const v6, 0xe000

    and-int/2addr v6, v4

    or-int/2addr v0, v6

    const/high16 v6, 0x70000

    and-int/2addr v4, v6

    or-int v23, v0, v4

    const/16 v24, 0x40

    const/16 v20, 0x0

    move-object/from16 v22, v13

    move-object v13, v12

    move-object v12, v5

    invoke-static/range {v12 .. v24}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lbm3;Landroidx/compose/runtime/Composer;II)V

    move-object v12, v13

    move-object/from16 v13, v22

    and-int/lit16 v0, v7, 0x380

    const/16 v4, 0x100

    if-ne v0, v4, :cond_26

    goto :goto_19

    :cond_26
    const/4 v1, 0x0

    :goto_19
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x3

    if-nez v1, :cond_27

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_28

    :cond_27
    new-instance v0, Lef;

    invoke-direct {v0, v3, v4}, Lef;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_28
    check-cast v0, Lll3;

    shr-int/lit8 v1, v7, 0x3

    and-int/lit8 v1, v1, 0xe

    const/4 v4, 0x0

    invoke-static {v2, v0, v13, v1, v4}, Landroidx/compose/material3/internal/BackHandler_androidKt;->BackHandler(ZLll3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_29
    move-object/from16 v6, p4

    move-object v4, v8

    move/from16 v7, v18

    move/from16 v8, v19

    :goto_1a
    move-object v5, v12

    goto :goto_1b

    :cond_2a
    move-object v13, v4

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v6, p5

    move-object v4, v8

    move v8, v7

    move/from16 v7, p6

    goto :goto_1a

    :goto_1b
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_2b

    new-instance v0, Lbk7;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v11}, Lbk7;-><init>(Lbm3;ZLnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLdm3;II)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_2b
    return-void
.end method

.method public static final DockedSearchBar-eWTbjVg(Ljava/lang/String;Lnl3;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;Landroidx/compose/runtime/Composer;III)V
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnl3<",
            "-",
            "Ljava/lang/String;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Ljava/lang/String;",
            "Lj59;",
            ">;Z",
            "Lnl3<",
            "-",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/SearchBarColors;",
            "FF",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Ldm3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    move/from16 v0, p17

    move/from16 v1, p18

    move/from16 v2, p19

    const v3, 0x73031c60

    move-object/from16 v4, p16

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v4, v0, 0x6

    move-object/from16 v14, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v0, 0x6

    move-object/from16 v14, p0

    if-nez v4, :cond_2

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v0

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_3

    or-int/lit8 v4, v4, 0x30

    move-object/from16 v15, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v7, v0, 0x30

    move-object/from16 v15, p1

    if-nez v7, :cond_5

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v4, v7

    :cond_5
    :goto_3
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_7

    or-int/lit16 v4, v4, 0x180

    :cond_6
    move-object/from16 v7, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v0, 0x180

    if-nez v7, :cond_6

    move-object/from16 v7, p2

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x100

    goto :goto_4

    :cond_8
    const/16 v12, 0x80

    :goto_4
    or-int/2addr v4, v12

    :goto_5
    and-int/lit8 v12, v2, 0x8

    const/16 v16, 0x400

    const/16 v17, 0x800

    if-eqz v12, :cond_a

    or-int/lit16 v4, v4, 0xc00

    :cond_9
    move/from16 v12, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v12, v0, 0xc00

    if-nez v12, :cond_9

    move/from16 v12, p3

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v18

    if-eqz v18, :cond_b

    move/from16 v18, v17

    goto :goto_6

    :cond_b
    move/from16 v18, v16

    :goto_6
    or-int v4, v4, v18

    :goto_7
    and-int/lit8 v18, v2, 0x10

    const/16 v19, 0x2000

    const/16 v20, 0x4000

    if-eqz v18, :cond_d

    or-int/lit16 v4, v4, 0x6000

    :cond_c
    move-object/from16 v5, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v5, v0, 0x6000

    if-nez v5, :cond_c

    move-object/from16 v5, p4

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    move/from16 v18, v20

    goto :goto_8

    :cond_e
    move/from16 v18, v19

    :goto_8
    or-int v4, v4, v18

    :goto_9
    and-int/lit8 v18, v2, 0x20

    const/high16 v21, 0x10000

    const/high16 v22, 0x20000

    const/high16 v23, 0x30000

    if-eqz v18, :cond_f

    or-int v4, v4, v23

    move-object/from16 v6, p5

    goto :goto_b

    :cond_f
    and-int v24, v0, v23

    move-object/from16 v6, p5

    if-nez v24, :cond_11

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    move/from16 v25, v22

    goto :goto_a

    :cond_10
    move/from16 v25, v21

    :goto_a
    or-int v4, v4, v25

    :cond_11
    :goto_b
    and-int/lit8 v25, v2, 0x40

    const/high16 v26, 0x180000

    if-eqz v25, :cond_12

    or-int v4, v4, v26

    move/from16 v8, p6

    goto :goto_d

    :cond_12
    and-int v26, v0, v26

    move/from16 v8, p6

    if-nez v26, :cond_14

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v27

    if-eqz v27, :cond_13

    const/high16 v27, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v27, 0x80000

    :goto_c
    or-int v4, v4, v27

    :cond_14
    :goto_d
    and-int/lit16 v9, v2, 0x80

    const/high16 v28, 0xc00000

    if-eqz v9, :cond_15

    or-int v4, v4, v28

    move-object/from16 v10, p7

    goto :goto_f

    :cond_15
    and-int v28, v0, v28

    move-object/from16 v10, p7

    if-nez v28, :cond_17

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_16

    const/high16 v29, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v29, 0x400000

    :goto_e
    or-int v4, v4, v29

    :cond_17
    :goto_f
    and-int/lit16 v11, v2, 0x100

    const/high16 v30, 0x6000000

    if-eqz v11, :cond_18

    or-int v4, v4, v30

    move-object/from16 v3, p8

    goto :goto_11

    :cond_18
    and-int v30, v0, v30

    move-object/from16 v3, p8

    if-nez v30, :cond_1a

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_19

    const/high16 v31, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v31, 0x2000000

    :goto_10
    or-int v4, v4, v31

    :cond_1a
    :goto_11
    and-int/lit16 v0, v2, 0x200

    const/high16 v31, 0x30000000

    if-eqz v0, :cond_1c

    or-int v4, v4, v31

    :cond_1b
    move/from16 v31, v0

    move-object/from16 v0, p9

    goto :goto_13

    :cond_1c
    and-int v31, p17, v31

    if-nez v31, :cond_1b

    move/from16 v31, v0

    move-object/from16 v0, p9

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1d

    const/high16 v32, 0x20000000

    goto :goto_12

    :cond_1d
    const/high16 v32, 0x10000000

    :goto_12
    or-int v4, v4, v32

    :goto_13
    and-int/lit8 v32, v1, 0x6

    if-nez v32, :cond_20

    and-int/lit16 v0, v2, 0x400

    if-nez v0, :cond_1e

    move-object/from16 v0, p10

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1f

    const/16 v24, 0x4

    goto :goto_14

    :cond_1e
    move-object/from16 v0, p10

    :cond_1f
    const/16 v24, 0x2

    :goto_14
    or-int v24, v1, v24

    goto :goto_15

    :cond_20
    move-object/from16 v0, p10

    move/from16 v24, v1

    :goto_15
    and-int/lit8 v32, v1, 0x30

    if-nez v32, :cond_23

    and-int/lit16 v0, v2, 0x800

    if-nez v0, :cond_21

    move-object/from16 v0, p11

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_22

    const/16 v26, 0x20

    goto :goto_16

    :cond_21
    move-object/from16 v0, p11

    :cond_22
    const/16 v26, 0x10

    :goto_16
    or-int v24, v24, v26

    :goto_17
    move/from16 v0, v24

    goto :goto_18

    :cond_23
    move-object/from16 v0, p11

    goto :goto_17

    :goto_18
    and-int/lit16 v5, v2, 0x1000

    if-eqz v5, :cond_24

    or-int/lit16 v0, v0, 0x180

    goto :goto_1b

    :cond_24
    move/from16 v24, v0

    and-int/lit16 v0, v1, 0x180

    if-nez v0, :cond_26

    move/from16 v0, p12

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v26

    if-eqz v26, :cond_25

    const/16 v28, 0x100

    goto :goto_19

    :cond_25
    const/16 v28, 0x80

    :goto_19
    or-int v24, v24, v28

    :goto_1a
    move/from16 v0, v24

    goto :goto_1b

    :cond_26
    move/from16 v0, p12

    goto :goto_1a

    :goto_1b
    move/from16 v24, v5

    and-int/lit16 v5, v2, 0x2000

    if-eqz v5, :cond_27

    or-int/lit16 v0, v0, 0xc00

    goto :goto_1c

    :cond_27
    move/from16 v26, v0

    and-int/lit16 v0, v1, 0xc00

    if-nez v0, :cond_29

    move/from16 v0, p13

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v27

    if-eqz v27, :cond_28

    move/from16 v16, v17

    :cond_28
    or-int v16, v26, v16

    move/from16 v0, v16

    goto :goto_1c

    :cond_29
    move/from16 v0, p13

    move/from16 v0, v26

    :goto_1c
    move/from16 v16, v5

    and-int/lit16 v5, v2, 0x4000

    if-eqz v5, :cond_2b

    or-int/lit16 v0, v0, 0x6000

    move/from16 v17, v0

    :cond_2a
    move-object/from16 v0, p14

    goto :goto_1d

    :cond_2b
    move/from16 v17, v0

    and-int/lit16 v0, v1, 0x6000

    if-nez v0, :cond_2a

    move-object/from16 v0, p14

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2c

    move/from16 v19, v20

    :cond_2c
    or-int v17, v17, v19

    :goto_1d
    const v19, 0x8000

    and-int v19, v2, v19

    if-eqz v19, :cond_2e

    or-int v17, v17, v23

    :cond_2d
    move/from16 v19, v5

    move-object/from16 v5, p15

    goto :goto_1e

    :cond_2e
    and-int v19, v1, v23

    if-nez v19, :cond_2d

    move/from16 v19, v5

    move-object/from16 v5, p15

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2f

    move/from16 v21, v22

    :cond_2f
    or-int v17, v17, v21

    :goto_1e
    const v20, 0x12492493

    and-int v0, v4, v20

    const v1, 0x12492492

    const/4 v5, 0x1

    if-ne v0, v1, :cond_31

    const v0, 0x12493

    and-int v0, v17, v0

    const v1, 0x12492

    if-eq v0, v1, :cond_30

    goto :goto_1f

    :cond_30
    const/4 v0, 0x0

    goto :goto_20

    :cond_31
    :goto_1f
    move v0, v5

    :goto_20
    and-int/lit8 v1, v4, 0x1

    invoke-interface {v13, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, p17, 0x1

    const/4 v1, 0x6

    if-eqz v0, :cond_35

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_21

    :cond_32
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v2, 0x400

    if-eqz v0, :cond_33

    and-int/lit8 v17, v17, -0xf

    :cond_33
    and-int/lit16 v0, v2, 0x800

    if-eqz v0, :cond_34

    and-int/lit8 v17, v17, -0x71

    :cond_34
    move-object/from16 v24, p9

    move-object/from16 v9, p11

    move/from16 v11, p13

    move-object/from16 v25, p14

    move/from16 p16, v1

    move-object/from16 v23, v3

    move v1, v5

    move-object v7, v6

    move/from16 v21, v8

    move-object/from16 v22, v10

    move-object v10, v13

    move/from16 v5, v17

    move-object/from16 v8, p10

    move/from16 v6, p12

    move v13, v4

    goto/16 :goto_2b

    :cond_35
    :goto_21
    if-eqz v18, :cond_36

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_22

    :cond_36
    move-object v0, v6

    :goto_22
    if-eqz v25, :cond_37

    move/from16 v18, v5

    goto :goto_23

    :cond_37
    move/from16 v18, v8

    :goto_23
    const/16 v20, 0x0

    if-eqz v9, :cond_38

    move-object/from16 v21, v20

    goto :goto_24

    :cond_38
    move-object/from16 v21, v10

    :goto_24
    if-eqz v11, :cond_39

    move-object/from16 v3, v20

    :cond_39
    if-eqz v31, :cond_3a

    move-object/from16 v22, v20

    goto :goto_25

    :cond_3a
    move-object/from16 v22, p9

    :goto_25
    and-int/lit16 v6, v2, 0x400

    if-eqz v6, :cond_3b

    sget-object v6, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v6, v13, v1}, Landroidx/compose/material3/SearchBarDefaults;->getDockedShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v6

    and-int/lit8 v17, v17, -0xf

    move/from16 v23, v17

    move-object/from16 v17, v6

    goto :goto_26

    :cond_3b
    move/from16 v23, v17

    move-object/from16 v17, p10

    :goto_26
    and-int/lit16 v6, v2, 0x800

    if-eqz v6, :cond_3c

    move v6, v4

    sget-object v4, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    const/16 v11, 0xc00

    const/4 v12, 0x7

    move v9, v5

    move v8, v6

    const-wide/16 v5, 0x0

    move v10, v8

    const-wide/16 v7, 0x0

    move/from16 v25, v9

    const/4 v9, 0x0

    move-object/from16 p16, v13

    move v13, v10

    move-object/from16 v10, p16

    move/from16 p16, v1

    move/from16 v1, v25

    invoke-virtual/range {v4 .. v12}, Landroidx/compose/material3/SearchBarDefaults;->colors-Klgx-Pg(JJLandroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SearchBarColors;

    move-result-object v4

    and-int/lit8 v5, v23, -0x71

    goto :goto_27

    :cond_3c
    move/from16 p16, v1

    move v1, v5

    move-object v10, v13

    move v13, v4

    move-object/from16 v4, p11

    move/from16 v5, v23

    :goto_27
    if-eqz v24, :cond_3d

    sget-object v6, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v6}, Landroidx/compose/material3/SearchBarDefaults;->getTonalElevation-D9Ej5fM()F

    move-result v6

    goto :goto_28

    :cond_3d
    move/from16 v6, p12

    :goto_28
    if-eqz v16, :cond_3e

    sget-object v7, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v7}, Landroidx/compose/material3/SearchBarDefaults;->getShadowElevation-D9Ej5fM()F

    move-result v7

    goto :goto_29

    :cond_3e
    move/from16 v7, p13

    :goto_29
    if-eqz v19, :cond_3f

    move-object/from16 v23, v3

    move-object v9, v4

    move v11, v7

    move-object/from16 v8, v17

    move-object/from16 v25, v20

    :goto_2a
    move-object/from16 v24, v22

    move-object v7, v0

    move-object/from16 v22, v21

    move/from16 v21, v18

    goto :goto_2b

    :cond_3f
    move-object/from16 v25, p14

    move-object/from16 v23, v3

    move-object v9, v4

    move v11, v7

    move-object/from16 v8, v17

    goto :goto_2a

    :goto_2b
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "androidx.compose.material3.DockedSearchBar (SearchBar.kt:2047)"

    const v3, 0x73031c60

    invoke-static {v3, v13, v5, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_40
    new-instance v14, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$4;

    move-object/from16 v16, p0

    move-object/from16 v18, p2

    move/from16 v19, p3

    move-object/from16 v20, p4

    move-object/from16 v17, v15

    move-object v15, v9

    invoke-direct/range {v14 .. v25}, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$4;-><init>(Landroidx/compose/material3/SearchBarColors;Ljava/lang/String;Lnl3;Lnl3;ZLnl3;ZLbm3;Lbm3;Lbm3;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    const/16 v0, 0x36

    const v3, -0x4c0ae50e

    invoke-static {v3, v1, v14, v10, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    shr-int/lit8 v0, v13, 0x6

    and-int/lit8 v1, v0, 0x70

    or-int/lit8 v1, v1, 0x6

    and-int/lit16 v3, v0, 0x380

    or-int/2addr v1, v3

    and-int/lit16 v0, v0, 0x1c00

    or-int/2addr v0, v1

    shl-int/lit8 v1, v5, 0xc

    const v3, 0xe000

    and-int/2addr v3, v1

    or-int/2addr v0, v3

    const/high16 v3, 0x70000

    and-int/2addr v3, v1

    or-int/2addr v0, v3

    const/high16 v3, 0x380000

    and-int/2addr v3, v1

    or-int/2addr v0, v3

    const/high16 v3, 0x1c00000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    shl-int/lit8 v1, v5, 0x9

    const/high16 v3, 0xe000000

    and-int/2addr v1, v3

    or-int v14, v0, v1

    const/4 v15, 0x0

    move/from16 v5, p3

    move-object/from16 v12, p15

    move-object v13, v10

    move v10, v6

    move-object/from16 v6, p4

    invoke-static/range {v4 .. v15}, Landroidx/compose/material3/SearchBarKt;->DockedSearchBar-EQC0FA8(Lbm3;ZLnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLdm3;Landroidx/compose/runtime/Composer;II)V

    move-object v15, v9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_41
    move-object v6, v7

    move v14, v11

    move-object v0, v13

    move-object v12, v15

    move/from16 v7, v21

    move-object/from16 v9, v23

    move-object/from16 v15, v25

    move-object v11, v8

    move v13, v10

    move-object/from16 v8, v22

    move-object/from16 v10, v24

    goto :goto_2c

    :cond_42
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object v9, v3

    move v7, v8

    move-object v8, v10

    move-object v0, v13

    move-object/from16 v10, p9

    move/from16 v13, p12

    :goto_2c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_43

    move-object v1, v0

    new-instance v0, Loj7;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v16, p15

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v33, v1

    move/from16 v19, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v19}, Loj7;-><init>(Ljava/lang/String;Lnl3;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;III)V

    move-object/from16 v1, v33

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_43
    return-void
.end method

.method private static final DockedSearchBarLayout-nbWgWpA(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLdm3;Landroidx/compose/runtime/Composer;I)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SearchBarState;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/SearchBarColors;",
            "FF",
            "Ldm3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move-object/from16 v8, p7

    move/from16 v9, p9

    const v0, 0x539748ab

    move-object/from16 v3, p8

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v3

    and-int/lit8 v4, v9, 0x6

    const/4 v6, 0x4

    if-nez v4, :cond_1

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v9

    goto :goto_1

    :cond_1
    move v4, v9

    :goto_1
    and-int/lit8 v7, v9, 0x30

    if-nez v7, :cond_3

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v4, v7

    :cond_3
    and-int/lit16 v7, v9, 0x180

    if-nez v7, :cond_5

    move-object/from16 v7, p2

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x100

    goto :goto_3

    :cond_4
    const/16 v10, 0x80

    :goto_3
    or-int/2addr v4, v10

    goto :goto_4

    :cond_5
    move-object/from16 v7, p2

    :goto_4
    and-int/lit16 v10, v9, 0xc00

    move-object/from16 v11, p3

    if-nez v10, :cond_7

    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v10, 0x800

    goto :goto_5

    :cond_6
    const/16 v10, 0x400

    :goto_5
    or-int/2addr v4, v10

    :cond_7
    and-int/lit16 v10, v9, 0x6000

    if-nez v10, :cond_9

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x4000

    goto :goto_6

    :cond_8
    const/16 v10, 0x2000

    :goto_6
    or-int/2addr v4, v10

    :cond_9
    const/high16 v10, 0x30000

    and-int/2addr v10, v9

    if-nez v10, :cond_b

    move/from16 v10, p5

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v12

    if-eqz v12, :cond_a

    const/high16 v12, 0x20000

    goto :goto_7

    :cond_a
    const/high16 v12, 0x10000

    :goto_7
    or-int/2addr v4, v12

    goto :goto_8

    :cond_b
    move/from16 v10, p5

    :goto_8
    const/high16 v12, 0x180000

    and-int/2addr v12, v9

    if-nez v12, :cond_d

    move/from16 v12, p6

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v13

    if-eqz v13, :cond_c

    const/high16 v13, 0x100000

    goto :goto_9

    :cond_c
    const/high16 v13, 0x80000

    :goto_9
    or-int/2addr v4, v13

    goto :goto_a

    :cond_d
    move/from16 v12, p6

    :goto_a
    const/high16 v13, 0xc00000

    and-int v14, v9, v13

    if-nez v14, :cond_f

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    const/high16 v14, 0x800000

    goto :goto_b

    :cond_e
    const/high16 v14, 0x400000

    :goto_b
    or-int/2addr v4, v14

    :cond_f
    const v14, 0x492493

    and-int/2addr v14, v4

    const v15, 0x492492

    move/from16 p8, v13

    if-eq v14, v15, :cond_10

    const/4 v14, 0x1

    goto :goto_c

    :cond_10
    const/4 v14, 0x0

    :goto_c
    and-int/lit8 v15, v4, 0x1

    invoke-interface {v3, v14, v15}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v14

    if-eqz v14, :cond_11

    const/4 v14, -0x1

    const-string v15, "androidx.compose.material3.DockedSearchBarLayout (SearchBar.kt:2323)"

    invoke-static {v0, v4, v14, v15}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_11
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v0, v15, :cond_12

    sget-object v0, Lgx2;->b:Lgx2;

    invoke-static {v0, v3}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lo22;Landroidx/compose/runtime/Composer;)Ly22;

    move-result-object v0

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_12
    check-cast v0, Ly22;

    invoke-static {v1}, Landroidx/compose/material3/SearchBarKt;->isExpanded(Landroidx/compose/material3/SearchBarState;)Z

    move-result v15

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    and-int/lit8 v13, v4, 0xe

    if-ne v13, v6, :cond_13

    const/4 v6, 0x1

    goto :goto_d

    :cond_13
    const/4 v6, 0x0

    :goto_d
    or-int v6, v17, v6

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v6, :cond_14

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v13, v6, :cond_15

    :cond_14
    new-instance v13, Lvj7;

    invoke-direct {v13, v0, v1}, Lvj7;-><init>(Ly22;Landroidx/compose/material3/SearchBarState;)V

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_15
    check-cast v13, Lll3;

    const/4 v0, 0x0

    invoke-static {v15, v13, v3, v0, v0}, Landroidx/compose/material3/internal/BackHandler_androidKt;->BackHandler(ZLll3;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v5}, Landroidx/compose/material3/SearchBarColors;->getContainerColor-0d7_KjU()J

    move-result-wide v12

    invoke-virtual {v5}, Landroidx/compose/material3/SearchBarColors;->getContainerColor-0d7_KjU()J

    move-result-wide v14

    invoke-static {v14, v15, v3, v0}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v14

    invoke-static {v7}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->imePadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    new-instance v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBarLayout$2;

    invoke-direct {v0, v2, v1, v5, v8}, Landroidx/compose/material3/SearchBarKt$DockedSearchBarLayout$2;-><init>(Lbm3;Landroidx/compose/material3/SearchBarState;Landroidx/compose/material3/SearchBarColors;Ldm3;)V

    const/16 v6, 0x36

    const v1, -0x390936fa

    const/4 v2, 0x1

    invoke-static {v1, v2, v0, v3, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v19

    shr-int/lit8 v0, v4, 0x6

    and-int/lit8 v0, v0, 0x70

    or-int v0, v0, p8

    shr-int/lit8 v1, v4, 0x3

    const v2, 0xe000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    const/high16 v2, 0x70000

    and-int/2addr v1, v2

    or-int v21, v0, v1

    const/16 v22, 0x40

    const/16 v18, 0x0

    move/from16 v16, p5

    move/from16 v17, p6

    move-object/from16 v20, v3

    invoke-static/range {v10 .. v22}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lbm3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_e

    :cond_16
    move-object/from16 v20, v3

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_17
    :goto_e
    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_18

    new-instance v0, Lwj7;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v6, p5

    move-object v3, v7

    move/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lwj7;-><init>(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLdm3;I)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_18
    return-void
.end method

.method private static final DockedSearchBarLayout_nbWgWpA$lambda$51$lambda$50(Ly22;Landroidx/compose/material3/SearchBarState;)Lj59;
    .locals 2

    new-instance v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBarLayout$1$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/compose/material3/SearchBarKt$DockedSearchBarLayout$1$1$1;-><init>(Landroidx/compose/material3/SearchBarState;Le02;)V

    const/4 p1, 0x3

    invoke-static {p0, v1, v1, v0, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final DockedSearchBarLayout_nbWgWpA$lambda$52(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLdm3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 11

    or-int/lit8 v0, p8, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p9

    invoke-static/range {v1 .. v10}, Landroidx/compose/material3/SearchBarKt;->DockedSearchBarLayout-nbWgWpA(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLdm3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final DockedSearchBar_EQC0FA8$lambda$24$lambda$23(Lnl3;)Lj59;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final DockedSearchBar_EQC0FA8$lambda$25(Lbm3;ZLnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLdm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 13

    or-int/lit8 v0, p9, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v11

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v12, p10

    move-object/from16 v10, p11

    invoke-static/range {v1 .. v12}, Landroidx/compose/material3/SearchBarKt;->DockedSearchBar-EQC0FA8(Lbm3;ZLnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLdm3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final DockedSearchBar_eWTbjVg$lambda$29(Ljava/lang/String;Lnl3;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 21

    or-int/lit8 v0, p16, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v18

    invoke-static/range {p17 .. p17}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v20, p18

    move-object/from16 v17, p19

    invoke-static/range {v1 .. v20}, Landroidx/compose/material3/SearchBarKt;->DockedSearchBar-eWTbjVg(Ljava/lang/String;Lnl3;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method public static final ExpandedDockedSearchBar-qKj4JfE(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/ui/window/PopupProperties;Ldm3;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SearchBarState;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/SearchBarColors;",
            "FF",
            "Landroidx/compose/ui/window/PopupProperties;",
            "Ldm3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v10, p10

    move/from16 v11, p11

    const v0, -0x42d20e25

    move-object/from16 v2, p9

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v5

    and-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v10, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v10, 0x6

    if-nez v2, :cond_2

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v10

    goto :goto_1

    :cond_2
    move v2, v10

    :goto_1
    and-int/lit8 v6, v11, 0x2

    if-eqz v6, :cond_3

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v8, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v10, 0x30

    move-object/from16 v8, p1

    if-nez v6, :cond_5

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v2, v6

    :cond_5
    :goto_3
    and-int/lit8 v6, v11, 0x4

    if-eqz v6, :cond_7

    or-int/lit16 v2, v2, 0x180

    :cond_6
    move-object/from16 v7, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v10, 0x180

    if-nez v7, :cond_6

    move-object/from16 v7, p2

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x100

    goto :goto_4

    :cond_8
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v2, v9

    :goto_5
    and-int/lit16 v9, v10, 0xc00

    if-nez v9, :cond_b

    and-int/lit8 v9, v11, 0x8

    if-nez v9, :cond_9

    move-object/from16 v9, p3

    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 v12, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v9, p3

    :cond_a
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v2, v12

    goto :goto_7

    :cond_b
    move-object/from16 v9, p3

    :goto_7
    and-int/lit16 v12, v10, 0x6000

    if-nez v12, :cond_e

    and-int/lit8 v12, v11, 0x10

    if-nez v12, :cond_c

    move-object/from16 v12, p4

    invoke-interface {v5, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/16 v13, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v12, p4

    :cond_d
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v2, v13

    goto :goto_9

    :cond_e
    move-object/from16 v12, p4

    :goto_9
    and-int/lit8 v21, v11, 0x20

    const/high16 v13, 0x30000

    if-eqz v21, :cond_10

    or-int/2addr v2, v13

    :cond_f
    move/from16 v13, p5

    goto :goto_b

    :cond_10
    and-int/2addr v13, v10

    if-nez v13, :cond_f

    move/from16 v13, p5

    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v14

    if-eqz v14, :cond_11

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v2, v14

    :goto_b
    and-int/lit8 v22, v11, 0x40

    const/high16 v14, 0x180000

    if-eqz v22, :cond_13

    or-int/2addr v2, v14

    :cond_12
    move/from16 v14, p6

    goto :goto_d

    :cond_13
    and-int/2addr v14, v10

    if-nez v14, :cond_12

    move/from16 v14, p6

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v15

    if-eqz v15, :cond_14

    const/high16 v15, 0x100000

    goto :goto_c

    :cond_14
    const/high16 v15, 0x80000

    :goto_c
    or-int/2addr v2, v15

    :goto_d
    and-int/lit16 v15, v11, 0x80

    const/high16 v16, 0xc00000

    if-eqz v15, :cond_15

    or-int v2, v2, v16

    move-object/from16 v3, p7

    goto :goto_f

    :cond_15
    and-int v16, v10, v16

    move-object/from16 v3, p7

    if-nez v16, :cond_17

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_16

    const/high16 v16, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v16, 0x400000

    :goto_e
    or-int v2, v2, v16

    :cond_17
    :goto_f
    and-int/lit16 v4, v11, 0x100

    const/high16 v16, 0x6000000

    if-eqz v4, :cond_19

    or-int v2, v2, v16

    :cond_18
    move-object/from16 v4, p8

    goto :goto_11

    :cond_19
    and-int v4, v10, v16

    if-nez v4, :cond_18

    move-object/from16 v4, p8

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1a

    const/high16 v16, 0x4000000

    goto :goto_10

    :cond_1a
    const/high16 v16, 0x2000000

    :goto_10
    or-int v2, v2, v16

    :goto_11
    const v16, 0x2492493

    and-int v0, v2, v16

    const v1, 0x2492492

    const/16 v23, 0x0

    const/4 v13, 0x1

    if-eq v0, v1, :cond_1b

    move v0, v13

    goto :goto_12

    :cond_1b
    move/from16 v0, v23

    :goto_12
    and-int/lit8 v1, v2, 0x1

    invoke-interface {v5, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v10, 0x1

    const v1, -0xe001

    if-eqz v0, :cond_1f

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_13

    :cond_1c
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v11, 0x8

    if-eqz v0, :cond_1d

    and-int/lit16 v2, v2, -0x1c01

    :cond_1d
    and-int/lit8 v0, v11, 0x10

    if-eqz v0, :cond_1e

    and-int/2addr v2, v1

    :cond_1e
    move/from16 v6, p5

    move-object v8, v3

    move-object v3, v9

    move v0, v13

    move v9, v2

    move-object v13, v5

    move-object v2, v7

    move-object v5, v12

    move v7, v14

    goto/16 :goto_18

    :cond_1f
    :goto_13
    if-eqz v6, :cond_20

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v7, v0

    :cond_20
    and-int/lit8 v0, v11, 0x8

    if-eqz v0, :cond_21

    sget-object v0, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    const/4 v6, 0x6

    invoke-virtual {v0, v5, v6}, Landroidx/compose/material3/SearchBarDefaults;->getDockedShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    and-int/lit16 v2, v2, -0x1c01

    move-object v9, v0

    :cond_21
    and-int/lit8 v0, v11, 0x10

    if-eqz v0, :cond_22

    sget-object v12, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    const/16 v19, 0xc00

    const/16 v20, 0x7

    move v0, v13

    const-wide/16 v13, 0x0

    move v6, v15

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v5

    invoke-virtual/range {v12 .. v20}, Landroidx/compose/material3/SearchBarDefaults;->colors-Klgx-Pg(JJLandroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SearchBarColors;

    move-result-object v5

    move-object/from16 v13, v18

    and-int/2addr v1, v2

    move v2, v1

    goto :goto_14

    :cond_22
    move v0, v13

    move v6, v15

    move-object v13, v5

    move-object v5, v12

    :goto_14
    if-eqz v21, :cond_23

    sget-object v1, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v1}, Landroidx/compose/material3/SearchBarDefaults;->getTonalElevation-D9Ej5fM()F

    move-result v1

    goto :goto_15

    :cond_23
    move/from16 v1, p5

    :goto_15
    if-eqz v22, :cond_24

    sget-object v12, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v12}, Landroidx/compose/material3/SearchBarDefaults;->getShadowElevation-D9Ej5fM()F

    move-result v12

    goto :goto_16

    :cond_24
    move/from16 v12, p6

    :goto_16
    if-eqz v6, :cond_25

    new-instance v14, Landroidx/compose/ui/window/PopupProperties;

    const/16 v19, 0x6

    const/16 v20, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v20}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZZILjh2;)V

    move v6, v1

    move-object v3, v9

    move-object v8, v14

    :goto_17
    move v9, v2

    move-object v2, v7

    move v7, v12

    goto :goto_18

    :cond_25
    move v6, v1

    move-object v8, v3

    move-object v3, v9

    goto :goto_17

    :goto_18
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, -0x1

    const-string v12, "androidx.compose.material3.ExpandedDockedSearchBar (SearchBar.kt:435)"

    const v14, -0x42d20e25

    invoke-static {v14, v9, v1, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_26
    invoke-static/range {p0 .. p0}, Landroidx/compose/material3/SearchBarKt;->isExpanded(Landroidx/compose/material3/SearchBarState;)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_27
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_32

    new-instance v0, Lek7;

    move-object/from16 v1, p0

    move-object v9, v4

    move-object v4, v3

    move-object v3, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v11}, Lek7;-><init>(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/ui/window/PopupProperties;Ldm3;II)V

    :goto_19
    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    return-void

    :cond_28
    move-object/from16 v1, p0

    move-object v4, v3

    move-object v14, v8

    and-int/lit8 v3, v9, 0xe

    const/4 v8, 0x4

    if-ne v3, v8, :cond_29

    move v8, v0

    goto :goto_1a

    :cond_29
    move/from16 v8, v23

    :goto_1a
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_2a

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v10, v8, :cond_2b

    :cond_2a
    new-instance v10, Landroidx/compose/material3/SearchBarKt$ExpandedDockedSearchBar$positionProvider$1$1;

    invoke-direct {v10, v1}, Landroidx/compose/material3/SearchBarKt$ExpandedDockedSearchBar$positionProvider$1$1;-><init>(Landroidx/compose/material3/SearchBarState;)V

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2b
    check-cast v10, Landroidx/compose/material3/SearchBarKt$ExpandedDockedSearchBar$positionProvider$1$1;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v8, v12, :cond_2c

    sget-object v8, Lgx2;->b:Lgx2;

    invoke-static {v8, v13}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lo22;Landroidx/compose/runtime/Composer;)Ly22;

    move-result-object v8

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2c
    check-cast v8, Ly22;

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    const/4 v15, 0x4

    if-ne v3, v15, :cond_2d

    move/from16 v23, v0

    :cond_2d
    or-int v3, v12, v23

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v3, :cond_2e

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v12, v3, :cond_2f

    :cond_2e
    new-instance v12, Loa2;

    const/4 v3, 0x2

    invoke-direct {v12, v3, v8, v1}, Loa2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2f
    check-cast v12, Lll3;

    move v3, v0

    new-instance v0, Landroidx/compose/material3/SearchBarKt$ExpandedDockedSearchBar$3;

    move-object/from16 v8, p1

    move v11, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/SearchBarKt$ExpandedDockedSearchBar$3;-><init>(Landroidx/compose/material3/SearchBarState;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLdm3;Lbm3;)V

    move-object v1, v0

    move-object v0, v2

    move-object v8, v3

    move-object v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    const/16 v2, 0x36

    const v3, -0x15a5a807

    invoke-static {v3, v11, v1, v13, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    shr-int/lit8 v1, v9, 0xf

    and-int/lit16 v1, v1, 0x380

    or-int/lit16 v6, v1, 0xc00

    const/4 v7, 0x0

    move-object v1, v10

    move-object v2, v12

    move-object v5, v13

    move-object v3, v14

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->Popup(Landroidx/compose/ui/window/PopupPositionProvider;Lll3;Landroidx/compose/ui/window/PopupProperties;Lbm3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_30
    move-object v3, v0

    move-object v13, v5

    move-object v4, v8

    move-object v8, v14

    move-object v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    goto :goto_1b

    :cond_31
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v6, p5

    move-object v8, v3

    move-object v13, v5

    move-object v3, v7

    move-object v4, v9

    move-object v5, v12

    move/from16 v7, p6

    :goto_1b
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_32

    new-instance v0, Lfk7;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lfk7;-><init>(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/ui/window/PopupProperties;Ldm3;II)V

    goto/16 :goto_19

    :cond_32
    return-void
.end method

.method private static final ExpandedDockedSearchBar_qKj4JfE$lambda$10(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/ui/window/PopupProperties;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 13

    or-int/lit8 v0, p9, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v12, p10

    move-object/from16 v10, p11

    invoke-static/range {v1 .. v12}, Landroidx/compose/material3/SearchBarKt;->ExpandedDockedSearchBar-qKj4JfE(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/ui/window/PopupProperties;Ldm3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ExpandedDockedSearchBar_qKj4JfE$lambda$13$lambda$12(Ly22;Landroidx/compose/material3/SearchBarState;)Lj59;
    .locals 2

    new-instance v0, Landroidx/compose/material3/SearchBarKt$ExpandedDockedSearchBar$2$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/compose/material3/SearchBarKt$ExpandedDockedSearchBar$2$1$1;-><init>(Landroidx/compose/material3/SearchBarState;Le02;)V

    const/4 p1, 0x3

    invoke-static {p0, v1, v1, v0, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ExpandedDockedSearchBar_qKj4JfE$lambda$14(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/ui/window/PopupProperties;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 13

    or-int/lit8 v0, p9, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v12, p10

    move-object/from16 v10, p11

    invoke-static/range {v1 .. v12}, Landroidx/compose/material3/SearchBarKt;->ExpandedDockedSearchBar-qKj4JfE(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/ui/window/PopupProperties;Ldm3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final ExpandedFullScreenSearchBar-_UtchM0(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLbm3;Landroidx/compose/ui/window/DialogProperties;Ldm3;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SearchBarState;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/SearchBarColors;",
            "FF",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            ">;",
            "Landroidx/compose/ui/window/DialogProperties;",
            "Ldm3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v11, p11

    move/from16 v12, p12

    const v0, -0x3637e21f

    move-object/from16 v2, p10

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    and-int/lit8 v2, v12, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v11, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v11, 0x6

    if-nez v2, :cond_2

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v11

    goto :goto_1

    :cond_2
    move v2, v11

    :goto_1
    and-int/lit8 v3, v12, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v14, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v11, 0x30

    move-object/from16 v14, p1

    if-nez v3, :cond_5

    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v2, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v12, 0x4

    if-eqz v3, :cond_7

    or-int/lit16 v2, v2, 0x180

    :cond_6
    move-object/from16 v4, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v4, v11, 0x180

    if-nez v4, :cond_6

    move-object/from16 v4, p2

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x100

    goto :goto_4

    :cond_8
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v2, v5

    :goto_5
    and-int/lit16 v5, v11, 0xc00

    if-nez v5, :cond_b

    and-int/lit8 v5, v12, 0x8

    if-nez v5, :cond_9

    move-object/from16 v5, p3

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v5, p3

    :cond_a
    const/16 v6, 0x400

    :goto_6
    or-int/2addr v2, v6

    goto :goto_7

    :cond_b
    move-object/from16 v5, p3

    :goto_7
    and-int/lit16 v6, v11, 0x6000

    if-nez v6, :cond_e

    and-int/lit8 v6, v12, 0x10

    if-nez v6, :cond_c

    move-object/from16 v6, p4

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const/16 v8, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v6, p4

    :cond_d
    const/16 v8, 0x2000

    :goto_8
    or-int/2addr v2, v8

    goto :goto_9

    :cond_e
    move-object/from16 v6, p4

    :goto_9
    and-int/lit8 v15, v12, 0x20

    const/high16 v16, 0x30000

    if-eqz v15, :cond_10

    or-int v2, v2, v16

    :cond_f
    move/from16 v8, p5

    goto :goto_b

    :cond_10
    and-int v8, v11, v16

    if-nez v8, :cond_f

    move/from16 v8, p5

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v9

    if-eqz v9, :cond_11

    const/high16 v9, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v9, 0x10000

    :goto_a
    or-int/2addr v2, v9

    :goto_b
    and-int/lit8 v17, v12, 0x40

    const/high16 v9, 0x180000

    if-eqz v17, :cond_13

    or-int/2addr v2, v9

    :cond_12
    move/from16 v9, p6

    goto :goto_d

    :cond_13
    and-int/2addr v9, v11

    if-nez v9, :cond_12

    move/from16 v9, p6

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v10

    if-eqz v10, :cond_14

    const/high16 v10, 0x100000

    goto :goto_c

    :cond_14
    const/high16 v10, 0x80000

    :goto_c
    or-int/2addr v2, v10

    :goto_d
    const/high16 v10, 0xc00000

    and-int/2addr v10, v11

    if-nez v10, :cond_17

    and-int/lit16 v10, v12, 0x80

    if-nez v10, :cond_15

    move-object/from16 v10, p7

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    const/high16 v18, 0x800000

    goto :goto_e

    :cond_15
    move-object/from16 v10, p7

    :cond_16
    const/high16 v18, 0x400000

    :goto_e
    or-int v2, v2, v18

    goto :goto_f

    :cond_17
    move-object/from16 v10, p7

    :goto_f
    and-int/lit16 v13, v12, 0x100

    const/high16 v18, 0x6000000

    if-eqz v13, :cond_18

    or-int v2, v2, v18

    move-object/from16 v0, p8

    goto :goto_11

    :cond_18
    and-int v18, v11, v18

    move-object/from16 v0, p8

    if-nez v18, :cond_1a

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    const/high16 v19, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v19, 0x2000000

    :goto_10
    or-int v2, v2, v19

    :cond_1a
    :goto_11
    and-int/lit16 v0, v12, 0x200

    const/high16 v19, 0x30000000

    if-eqz v0, :cond_1c

    or-int v2, v2, v19

    :cond_1b
    move-object/from16 v0, p9

    goto :goto_13

    :cond_1c
    and-int v0, v11, v19

    if-nez v0, :cond_1b

    move-object/from16 v0, p9

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d

    const/high16 v19, 0x20000000

    goto :goto_12

    :cond_1d
    const/high16 v19, 0x10000000

    :goto_12
    or-int v2, v2, v19

    :goto_13
    const v19, 0x12492493

    and-int v0, v2, v19

    const v1, 0x12492492

    move/from16 v19, v3

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1e

    move v0, v3

    goto :goto_14

    :cond_1e
    const/4 v0, 0x0

    :goto_14
    and-int/lit8 v1, v2, 0x1

    invoke-interface {v7, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v11, 0x1

    const v1, -0x1c00001

    const v20, -0xe001

    if-eqz v0, :cond_23

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_15

    :cond_1f
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x8

    if-eqz v0, :cond_20

    and-int/lit16 v2, v2, -0x1c01

    :cond_20
    and-int/lit8 v0, v12, 0x10

    if-eqz v0, :cond_21

    and-int v2, v2, v20

    :cond_21
    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_22

    and-int/2addr v2, v1

    :cond_22
    move v13, v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v8

    move-object v8, v10

    const/4 v1, 0x0

    move-object v10, v7

    move v7, v9

    move-object/from16 v9, p8

    goto/16 :goto_1d

    :cond_23
    :goto_15
    if-eqz v19, :cond_24

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_16

    :cond_24
    move-object v0, v4

    :goto_16
    and-int/lit8 v4, v12, 0x8

    if-eqz v4, :cond_25

    sget-object v4, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    const/4 v5, 0x6

    invoke-virtual {v4, v7, v5}, Landroidx/compose/material3/SearchBarDefaults;->getInputFieldShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v4

    and-int/lit16 v2, v2, -0x1c01

    move-object/from16 v19, v4

    :goto_17
    move/from16 v21, v2

    goto :goto_18

    :cond_25
    move-object/from16 v19, v5

    goto :goto_17

    :goto_18
    and-int/lit8 v2, v12, 0x10

    if-eqz v2, :cond_26

    sget-object v2, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    const/16 v9, 0xc00

    const/4 v10, 0x7

    move v5, v3

    const-wide/16 v3, 0x0

    move/from16 v22, v5

    const-wide/16 v5, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move/from16 v23, v1

    const/4 v1, 0x0

    invoke-virtual/range {v2 .. v10}, Landroidx/compose/material3/SearchBarDefaults;->colors-Klgx-Pg(JJLandroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SearchBarColors;

    move-result-object v2

    move-object v10, v8

    and-int v21, v21, v20

    move-object v6, v2

    goto :goto_19

    :cond_26
    move/from16 v23, v1

    move-object v10, v7

    const/4 v1, 0x0

    :goto_19
    if-eqz v15, :cond_27

    sget-object v2, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v2}, Landroidx/compose/material3/SearchBarDefaults;->getTonalElevation-D9Ej5fM()F

    move-result v2

    goto :goto_1a

    :cond_27
    move/from16 v2, p5

    :goto_1a
    if-eqz v17, :cond_28

    sget-object v3, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v3}, Landroidx/compose/material3/SearchBarDefaults;->getShadowElevation-D9Ej5fM()F

    move-result v3

    goto :goto_1b

    :cond_28
    move/from16 v3, p6

    :goto_1b
    and-int/lit16 v4, v12, 0x80

    if-eqz v4, :cond_29

    sget-object v4, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$1;->INSTANCE:Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$1;

    and-int v5, v21, v23

    goto :goto_1c

    :cond_29
    move-object/from16 v4, p7

    move/from16 v5, v21

    :goto_1c
    if-eqz v13, :cond_2a

    new-instance v7, Landroidx/compose/ui/window/DialogProperties;

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 p2, v7

    move/from16 p6, v8

    move-object/from16 p7, v9

    move/from16 p3, v13

    move/from16 p4, v15

    move/from16 p5, v17

    invoke-direct/range {p2 .. p7}, Landroidx/compose/ui/window/DialogProperties;-><init>(ZZZILjh2;)V

    move-object v8, v4

    move v13, v5

    move-object v5, v6

    move-object v9, v7

    move-object/from16 v4, v19

    move v6, v2

    move v7, v3

    move-object v3, v0

    goto :goto_1d

    :cond_2a
    move-object/from16 v9, p8

    move v7, v3

    move-object v8, v4

    move v13, v5

    move-object v5, v6

    move-object/from16 v4, v19

    move-object v3, v0

    move v6, v2

    :goto_1d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, -0x1

    const-string v2, "androidx.compose.material3.ExpandedFullScreenSearchBar (SearchBar.kt:353)"

    const v15, -0x3637e21f

    invoke-static {v15, v13, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2b
    invoke-static/range {p0 .. p0}, Landroidx/compose/material3/SearchBarKt;->isExpanded(Landroidx/compose/material3/SearchBarState;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_34

    new-instance v0, Lyj7;

    move-object/from16 v1, p0

    move-object/from16 v10, p9

    move-object v2, v14

    invoke-direct/range {v0 .. v12}, Lyj7;-><init>(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLbm3;Landroidx/compose/ui/window/DialogProperties;Ldm3;II)V

    :goto_1e
    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    return-void

    :cond_2d
    move-object/from16 v0, p0

    move-object v11, v9

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v2, v12, :cond_2e

    sget-object v2, Lgx2;->b:Lgx2;

    invoke-static {v2, v10}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lo22;Landroidx/compose/runtime/Composer;)Ly22;

    move-result-object v2

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2e
    check-cast v2, Ly22;

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    and-int/lit8 v14, v13, 0xe

    const/4 v15, 0x4

    if-ne v14, v15, :cond_2f

    const/4 v14, 0x1

    goto :goto_1f

    :cond_2f
    move v14, v1

    :goto_1f
    or-int/2addr v12, v14

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v12, :cond_30

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v14, v9, :cond_31

    :cond_30
    new-instance v14, Lzj7;

    invoke-direct {v14, v1, v2, v0}, Lzj7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_31
    check-cast v14, Lll3;

    new-instance v0, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$4;-><init>(Landroidx/compose/material3/SearchBarState;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLbm3;Ldm3;Lbm3;)V

    move-object v1, v0

    move-object v0, v2

    move-object/from16 v19, v3

    move-object v12, v4

    move v15, v5

    move/from16 v17, v6

    move-object/from16 v18, v7

    const/16 v2, 0x36

    const v3, 0x25422bf1

    const/4 v5, 0x1

    invoke-static {v3, v5, v1, v10, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    shr-int/lit8 v1, v13, 0x12

    and-int/lit16 v1, v1, 0x380

    or-int v8, v1, v16

    const/16 v9, 0x1a

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, v10

    move-object v3, v11

    move-object v1, v14

    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/internal/BasicEdgeToEdgeDialog_androidKt;->BasicEdgeToEdgeDialog(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;ZZLdm3;Landroidx/compose/runtime/Composer;II)V

    move-object v8, v7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_32
    move-object v9, v3

    move-object v10, v8

    move-object v5, v12

    move v6, v15

    move/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v4, v19

    move-object v3, v0

    goto :goto_20

    :cond_33
    move-object v8, v7

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v7, p6

    move-object/from16 v9, p8

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v10, v8

    move/from16 v6, p5

    move-object/from16 v8, p7

    :goto_20
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_34

    new-instance v0, Lak7;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lak7;-><init>(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLbm3;Landroidx/compose/ui/window/DialogProperties;Ldm3;II)V

    goto/16 :goto_1e

    :cond_34
    return-void
.end method

.method private static final ExpandedFullScreenSearchBar__UtchM0$lambda$6(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLbm3;Landroidx/compose/ui/window/DialogProperties;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 14

    or-int/lit8 v0, p10, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v13, p11

    move-object/from16 v11, p12

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/SearchBarKt;->ExpandedFullScreenSearchBar-_UtchM0(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLbm3;Landroidx/compose/ui/window/DialogProperties;Ldm3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ExpandedFullScreenSearchBar__UtchM0$lambda$8$lambda$7(Ly22;Landroidx/compose/material3/SearchBarState;)Lj59;
    .locals 2

    new-instance v0, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$3$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/compose/material3/SearchBarKt$ExpandedFullScreenSearchBar$3$1$1;-><init>(Landroidx/compose/material3/SearchBarState;Le02;)V

    const/4 p1, 0x3

    invoke-static {p0, v1, v1, v0, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final ExpandedFullScreenSearchBar__UtchM0$lambda$9(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLbm3;Landroidx/compose/ui/window/DialogProperties;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 14

    or-int/lit8 v0, p10, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v13, p11

    move-object/from16 v11, p12

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/SearchBarKt;->ExpandedFullScreenSearchBar-_UtchM0(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLbm3;Landroidx/compose/ui/window/DialogProperties;Ldm3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final FullScreenSearchBarLayout-EQC0FA8(Landroidx/compose/material3/SearchBarState;Landroidx/compose/material3/internal/PredictiveBackState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;Landroidx/compose/runtime/Composer;I)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SearchBarState;",
            "Landroidx/compose/material3/internal/PredictiveBackState;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/SearchBarColors;",
            "FF",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Ldm3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p11

    const v0, -0x2c284b39

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    and-int/lit8 v1, v11, 0x6

    if-nez v1, :cond_1

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v11

    goto :goto_1

    :cond_1
    move v1, v11

    :goto_1
    and-int/lit8 v3, v11, 0x30

    if-nez v3, :cond_4

    and-int/lit8 v3, v11, 0x40

    if-nez v3, :cond_2

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    :cond_2
    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    :goto_2
    if-eqz v3, :cond_3

    const/16 v3, 0x20

    goto :goto_3

    :cond_3
    const/16 v3, 0x10

    :goto_3
    or-int/2addr v1, v3

    :cond_4
    and-int/lit16 v3, v11, 0x180

    if-nez v3, :cond_6

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x100

    goto :goto_4

    :cond_5
    const/16 v3, 0x80

    :goto_4
    or-int/2addr v1, v3

    :cond_6
    and-int/lit16 v3, v11, 0xc00

    if-nez v3, :cond_8

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x800

    goto :goto_5

    :cond_7
    const/16 v3, 0x400

    :goto_5
    or-int/2addr v1, v3

    :cond_8
    and-int/lit16 v3, v11, 0x6000

    move-object/from16 v5, p4

    if-nez v3, :cond_a

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v3, 0x4000

    goto :goto_6

    :cond_9
    const/16 v3, 0x2000

    :goto_6
    or-int/2addr v1, v3

    :cond_a
    const/high16 v3, 0x30000

    and-int/2addr v3, v11

    move-object/from16 v14, p5

    if-nez v3, :cond_c

    invoke-interface {v12, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/high16 v3, 0x20000

    goto :goto_7

    :cond_b
    const/high16 v3, 0x10000

    :goto_7
    or-int/2addr v1, v3

    :cond_c
    const/high16 v3, 0x180000

    and-int/2addr v3, v11

    move/from16 v15, p6

    if-nez v3, :cond_e

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v3

    if-eqz v3, :cond_d

    const/high16 v3, 0x100000

    goto :goto_8

    :cond_d
    const/high16 v3, 0x80000

    :goto_8
    or-int/2addr v1, v3

    :cond_e
    const/high16 v3, 0xc00000

    and-int/2addr v3, v11

    if-nez v3, :cond_10

    move/from16 v3, p7

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x800000

    goto :goto_9

    :cond_f
    const/high16 v16, 0x400000

    :goto_9
    or-int v1, v1, v16

    goto :goto_a

    :cond_10
    move/from16 v3, p7

    :goto_a
    const/high16 v16, 0x6000000

    and-int v16, v11, v16

    if-nez v16, :cond_12

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    const/high16 v16, 0x4000000

    goto :goto_b

    :cond_11
    const/high16 v16, 0x2000000

    :goto_b
    or-int v1, v1, v16

    :cond_12
    const/high16 v16, 0x30000000

    and-int v16, v11, v16

    if-nez v16, :cond_14

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x20000000

    goto :goto_c

    :cond_13
    const/high16 v16, 0x10000000

    :goto_c
    or-int v1, v1, v16

    :cond_14
    const v16, 0x12492493

    and-int v2, v1, v16

    const v13, 0x12492492

    if-eq v2, v13, :cond_15

    const/4 v2, 0x1

    goto :goto_d

    :cond_15
    const/4 v2, 0x0

    :goto_d
    and-int/lit8 v13, v1, 0x1

    invoke-interface {v12, v2, v13}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, -0x1

    const-string v13, "androidx.compose.material3.FullScreenSearchBarLayout (SearchBar.kt:2398)"

    const v0, -0x2c284b39

    invoke-static {v0, v1, v2, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_16
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_17

    new-instance v0, Ls;

    const/4 v2, 0x4

    invoke-direct {v0, v6, v2}, Ls;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lll3;)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_17
    check-cast v0, Landroidx/compose/runtime/State;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    const/4 v6, 0x0

    if-ne v2, v11, :cond_18

    const/4 v11, 0x2

    invoke-static {v6, v6, v11, v6}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_18
    move-object v11, v2

    check-cast v11, Landroidx/compose/runtime/MutableState;

    invoke-static {v0}, Landroidx/compose/material3/SearchBarKt;->FullScreenSearchBarLayout_EQC0FA8$lambda$55(Landroidx/compose/runtime/State;)Landroidx/compose/material3/internal/BackEventProgress;

    move-result-object v2

    instance-of v6, v2, Landroidx/compose/material3/internal/BackEventProgress$InProgress;

    if-eqz v6, :cond_19

    invoke-interface {v11}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1b

    invoke-interface {v11, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_e

    :cond_19
    sget-object v6, Landroidx/compose/material3/internal/BackEventProgress$NotRunning;->INSTANCE:Landroidx/compose/material3/internal/BackEventProgress$NotRunning;

    invoke-static {v2, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    const/4 v6, 0x0

    invoke-interface {v11, v6}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_e

    :cond_1a
    sget-object v6, Landroidx/compose/material3/internal/BackEventProgress$Completed;->INSTANCE:Landroidx/compose/material3/internal/BackEventProgress$Completed;

    invoke-static {v2, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    :cond_1b
    :goto_e
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v2, v6, :cond_1c

    move-object/from16 p10, v0

    const/4 v0, 0x0

    const/4 v6, 0x2

    invoke-static {v0, v0, v6, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_f

    :cond_1c
    move-object/from16 p10, v0

    :goto_f
    check-cast v2, Landroidx/compose/runtime/MutableState;

    invoke-static/range {p10 .. p10}, Landroidx/compose/material3/SearchBarKt;->FullScreenSearchBarLayout_EQC0FA8$lambda$55(Landroidx/compose/runtime/State;)Landroidx/compose/material3/internal/BackEventProgress;

    move-result-object v0

    instance-of v6, v0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;

    if-eqz v6, :cond_1d

    invoke-interface {v2, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_10

    :cond_1d
    sget-object v6, Landroidx/compose/material3/internal/BackEventProgress$NotRunning;->INSTANCE:Landroidx/compose/material3/internal/BackEventProgress$NotRunning;

    invoke-static {v0, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_10

    :cond_1e
    sget-object v6, Landroidx/compose/material3/internal/BackEventProgress$Completed;->INSTANCE:Landroidx/compose/material3/internal/BackEventProgress$Completed;

    invoke-static {v0, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    :goto_10
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    sget-object v6, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    const/4 v10, 0x6

    invoke-virtual {v6, v12, v10}, Landroidx/compose/material3/SearchBarDefaults;->getFullScreenShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v6

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    or-int v20, v20, v21

    move/from16 p10, v10

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v20, :cond_20

    move-object/from16 v20, v0

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v10, v0, :cond_1f

    goto :goto_11

    :cond_1f
    move/from16 v25, v1

    move-object v5, v2

    const/4 v6, 0x1

    goto :goto_12

    :cond_20
    move-object/from16 v20, v0

    :goto_11
    new-instance v10, Landroidx/compose/foundation/shape/GenericShape;

    new-instance v0, Lpj7;

    move/from16 v25, v1

    move-object v1, v5

    move-object/from16 v3, v20

    move-object v5, v2

    move-object v2, v6

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v5}, Lpj7;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/unit/Density;Landroidx/compose/material3/SearchBarState;Landroidx/compose/runtime/MutableState;)V

    invoke-direct {v10, v0}, Landroidx/compose/foundation/shape/GenericShape;-><init>(Ldm3;)V

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_12
    check-cast v10, Landroidx/compose/foundation/shape/GenericShape;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_21

    new-instance v0, Landroidx/compose/material3/internal/MutableWindowInsets;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v6, v1}, Landroidx/compose/material3/internal/MutableWindowInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;ILjh2;)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_21
    check-cast v0, Landroidx/compose/material3/internal/MutableWindowInsets;

    invoke-virtual {v0}, Landroidx/compose/material3/internal/MutableWindowInsets;->getInsets()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getHorizontal-JoeWqyM()I

    move-result v3

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getBottom-JoeWqyM()I

    move-result v6

    invoke-static {v3, v6}, Landroidx/compose/foundation/layout/WindowInsetsSides;->plus-gK_yJZ4(II)I

    move-result v3

    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/WindowInsetsKt;->only-bOOhFvg(Landroidx/compose/foundation/layout/WindowInsets;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v1

    const/high16 v3, 0xe000000

    and-int v3, v25, v3

    const/high16 v6, 0x4000000

    if-ne v3, v6, :cond_22

    const/4 v3, 0x1

    goto :goto_13

    :cond_22
    const/4 v3, 0x0

    :goto_13
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_23

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v6, v3, :cond_24

    :cond_23
    new-instance v6, Lqj7;

    invoke-direct {v6, v0, v9}, Lqj7;-><init>(Landroidx/compose/material3/internal/MutableWindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_24
    check-cast v6, Lnl3;

    invoke-static {v8, v6}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->onConsumedWindowInsetsChanged(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v3, v9}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->consumeWindowInsets(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    move-object/from16 v17, v2

    and-int/lit8 v2, v25, 0xe

    move/from16 v18, v6

    const/4 v6, 0x4

    if-ne v2, v6, :cond_25

    const/4 v2, 0x1

    goto :goto_14

    :cond_25
    const/4 v2, 0x0

    :goto_14
    or-int v2, v18, v2

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v2, v6

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v2, :cond_26

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v6, v2, :cond_27

    :cond_26
    new-instance v6, Landroidx/compose/material3/SearchBarKt$FullScreenSearchBarLayout$2$1;

    invoke-direct {v6, v5, v4, v0, v11}, Landroidx/compose/material3/SearchBarKt$FullScreenSearchBarLayout$2$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/SearchBarState;Landroidx/compose/material3/internal/MutableWindowInsets;Landroidx/compose/runtime/MutableState;)V

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_27
    check-cast v6, Landroidx/compose/ui/layout/MeasurePolicy;

    const/4 v0, 0x0

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v2

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v0

    invoke-static {v12, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lll3;

    move-result-object v11

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v13

    if-nez v13, :cond_28

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    :cond_28
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v13

    if-eqz v13, :cond_29

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->createNode(Lll3;)V

    goto :goto_15

    :cond_29
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->useNode()V

    :goto_15
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v11

    invoke-static {v5, v11, v6, v11, v0}, Lcc;->b(Landroidx/compose/ui/node/ComposeUiNode$Companion;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/CompositionLocalMap;)Lbm3;

    move-result-object v0

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v6

    if-nez v6, :cond_2a

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v6, v13}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    :cond_2a
    invoke-static {v0, v2, v11, v2}, Ldc;->b(Lbm3;ILandroidx/compose/runtime/Composer;I)V

    :cond_2b
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lbm3;

    move-result-object v0

    invoke-static {v11, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lbm3;)V

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const-string v2, "InputField"

    invoke-static {v0, v2}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getHorizontal-JoeWqyM()I

    move-result v3

    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/WindowInsetsKt;->only-bOOhFvg(Landroidx/compose/foundation/layout/WindowInsets;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v12, v6}, Landroidx/compose/foundation/layout/WindowInsetsKt;->asPaddingValues(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v11

    const/4 v13, 0x1

    invoke-static {v11, v13}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    invoke-static {v12, v6}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v13

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v6

    invoke-static {v12, v2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object/from16 v26, v3

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lll3;

    move-result-object v3

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v16

    if-nez v16, :cond_2c

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    :cond_2c
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v16

    if-eqz v16, :cond_2d

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->createNode(Lll3;)V

    goto :goto_16

    :cond_2d
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->useNode()V

    :goto_16
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    invoke-static {v5, v3, v11, v3, v6}, Lcc;->b(Landroidx/compose/ui/node/ComposeUiNode$Companion;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/CompositionLocalMap;)Lbm3;

    move-result-object v6

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v11

    if-nez v11, :cond_2e

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v11, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    :cond_2e
    invoke-static {v6, v13, v3, v13}, Ldc;->b(Lbm3;ILandroidx/compose/runtime/Composer;I)V

    :cond_2f
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lbm3;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lbm3;)V

    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v2, v25, 0x6

    and-int/lit8 v3, v2, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v12, v3}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endNode()V

    const-string v3, "Surface"

    invoke-static {v0, v3}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Landroidx/compose/material3/SearchBarColors;->getContainerColor-0d7_KjU()J

    move-result-wide v14

    move v4, v2

    move-object v6, v3

    invoke-virtual/range {p5 .. p5}, Landroidx/compose/material3/SearchBarColors;->getContainerColor-0d7_KjU()J

    move-result-wide v2

    const/4 v11, 0x0

    invoke-static {v2, v3, v12, v11}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v16

    sget-object v2, Landroidx/compose/material3/ComposableSingletons$SearchBarKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$SearchBarKt;

    invoke-virtual {v2}, Landroidx/compose/material3/ComposableSingletons$SearchBarKt;->getLambda$-1146652811$material3()Lbm3;

    move-result-object v21

    const v2, 0xe000

    and-int/2addr v2, v4

    const v3, 0xc00006

    or-int/2addr v2, v3

    const/high16 v3, 0x70000

    and-int/2addr v3, v4

    or-int v23, v2, v3

    const/16 v24, 0x40

    const/16 v20, 0x0

    move/from16 v18, p6

    move/from16 v19, p7

    move-object v13, v10

    move-object/from16 v22, v12

    move-object v12, v6

    invoke-static/range {v12 .. v24}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lbm3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v2, v22

    const-string v3, "Content"

    invoke-static {v0, v3}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v1, v2, v6}, Landroidx/compose/foundation/layout/WindowInsetsKt;->asPaddingValues(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v1

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v3

    invoke-static {v1, v3, v2, v6}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    invoke-static {v2, v6}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v3

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v4

    invoke-static {v2, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lll3;

    move-result-object v6

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v10

    if-nez v10, :cond_30

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    :cond_30
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v10

    if-eqz v10, :cond_31

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->createNode(Lll3;)V

    goto :goto_17

    :cond_31
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->useNode()V

    :goto_17
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v6

    invoke-static {v5, v6, v1, v6, v4}, Lcc;->b(Landroidx/compose/ui/node/ComposeUiNode$Companion;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/CompositionLocalMap;)Lbm3;

    move-result-object v1

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v4

    if-nez v4, :cond_32

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v4, v10}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    :cond_32
    invoke-static {v1, v3, v6, v3}, Ldc;->b(Lbm3;ILandroidx/compose/runtime/Composer;I)V

    :cond_33
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lbm3;

    move-result-object v1

    invoke-static {v6, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lbm3;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    invoke-virtual/range {p5 .. p5}, Landroidx/compose/material3/SearchBarColors;->getDividerColor-0d7_KjU()J

    move-result-wide v14

    const/16 v17, 0x0

    const/16 v18, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v12 .. v18}, Landroidx/compose/material3/DividerKt;->HorizontalDivider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    shr-int/lit8 v1, v25, 0x18

    and-int/lit8 v1, v1, 0x70

    or-int v1, p10, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v10, p9

    invoke-interface {v10, v0, v2, v1}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endNode()V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endNode()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_18

    :cond_34
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_35
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_36
    move-object v2, v12

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_37
    :goto_18
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_38

    new-instance v0, Lrj7;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v11, p11

    move-object v3, v7

    move-object v4, v8

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v11}, Lrj7;-><init>(Landroidx/compose/material3/SearchBarState;Landroidx/compose/material3/internal/PredictiveBackState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;I)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_38
    return-void
.end method

.method private static final FullScreenSearchBarLayout_EQC0FA8$lambda$54$lambda$53(Landroidx/compose/material3/internal/PredictiveBackState;)Landroidx/compose/material3/internal/BackEventProgress;
    .locals 0

    invoke-interface {p0}, Landroidx/compose/material3/internal/PredictiveBackState;->getValue()Landroidx/compose/material3/internal/BackEventProgress;

    move-result-object p0

    return-object p0
.end method

.method private static final FullScreenSearchBarLayout_EQC0FA8$lambda$55(Landroidx/compose/runtime/State;)Landroidx/compose/material3/internal/BackEventProgress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Landroidx/compose/material3/internal/BackEventProgress;",
            ">;)",
            "Landroidx/compose/material3/internal/BackEventProgress;"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/internal/BackEventProgress;

    return-object p0
.end method

.method private static final FullScreenSearchBarLayout_EQC0FA8$lambda$62$lambda$61(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/unit/Density;Landroidx/compose/material3/SearchBarState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Size;Landroidx/compose/ui/unit/LayoutDirection;)Lj59;
    .locals 4

    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->getCircleShape()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    if-ne p0, v0, :cond_1

    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p3}, Landroidx/compose/material3/SearchBarState;->getProgress()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-interface {p4}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/material3/internal/BackEventProgress$InProgress;

    invoke-static {p1}, Landroidx/compose/material3/SearchBarKt;->transform(Landroidx/compose/material3/internal/BackEventProgress$InProgress;)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    sget p1, Landroidx/compose/material3/SearchBarKt;->SearchBarCornerRadius:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    invoke-interface {p2, p0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    float-to-double p1, p0

    const-wide p3, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double p1, p1, p3

    const/4 p2, 0x2

    const/4 p3, 0x0

    if-gez p1, :cond_0

    invoke-virtual {p6}, Landroidx/compose/ui/geometry/Size;->unbox-impl()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/SizeKt;->toRect-uvyYCjk(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    invoke-static {p5, p0, p3, p2, p3}, Landroidx/compose/ui/graphics/Path;->addRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Path$Direction;ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p6}, Landroidx/compose/ui/geometry/Size;->unbox-impl()J

    move-result-wide p6

    invoke-static {p6, p7}, Landroidx/compose/ui/geometry/SizeKt;->toRect-uvyYCjk(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p4

    int-to-long p6, p4

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr p6, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p6, v0

    invoke-static {p6, p7}, Landroidx/compose/ui/geometry/CornerRadius;->constructor-impl(J)J

    move-result-wide p6

    invoke-static {p1, p6, p7}, Landroidx/compose/ui/geometry/RoundRectKt;->RoundRect-sniSvfs(Landroidx/compose/ui/geometry/Rect;J)Landroidx/compose/ui/geometry/RoundRect;

    move-result-object p0

    invoke-static {p5, p0, p3, p2, p3}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;Landroidx/compose/ui/graphics/Path$Direction;ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Landroidx/compose/material3/SearchBarState;->getProgress()F

    move-result p3

    const/high16 p4, 0x3f000000    # 0.5f

    cmpg-float p3, p3, p4

    if-gez p3, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, p1

    :goto_0
    invoke-virtual {p6}, Landroidx/compose/ui/geometry/Size;->unbox-impl()J

    move-result-wide p3

    invoke-interface {p0, p3, p4, p7, p2}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    move-result-object p0

    invoke-static {p5, p0}, Landroidx/compose/ui/graphics/OutlineKt;->addOutline(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Outline;)V

    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final FullScreenSearchBarLayout_EQC0FA8$lambda$65$lambda$64(Landroidx/compose/material3/internal/MutableWindowInsets;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)Lj59;
    .locals 0

    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/WindowInsetsKt;->exclude(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/MutableWindowInsets;->setInsets(Landroidx/compose/foundation/layout/WindowInsets;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final FullScreenSearchBarLayout_EQC0FA8$lambda$70(Landroidx/compose/material3/SearchBarState;Landroidx/compose/material3/internal/PredictiveBackState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 13

    or-int/lit8 v0, p10, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p11

    invoke-static/range {v1 .. v12}, Landroidx/compose/material3/SearchBarKt;->FullScreenSearchBarLayout-EQC0FA8(Landroidx/compose/material3/SearchBarState;Landroidx/compose/material3/internal/PredictiveBackState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final SearchBar-WuY5d9Q(Ljava/lang/String;Lnl3;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;Landroidx/compose/runtime/Composer;III)V
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnl3<",
            "-",
            "Ljava/lang/String;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Ljava/lang/String;",
            "Lj59;",
            ">;Z",
            "Lnl3<",
            "-",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/SearchBarColors;",
            "FF",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Ldm3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    move/from16 v0, p18

    move/from16 v1, p19

    move/from16 v2, p20

    const v3, 0x59d2d0fe

    move-object/from16 v4, p17

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v14

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v4, v0, 0x6

    move-object/from16 v13, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v0, 0x6

    move-object/from16 v13, p0

    if-nez v4, :cond_2

    invoke-interface {v14, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v0

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_3

    or-int/lit8 v4, v4, 0x30

    move-object/from16 v15, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v7, v0, 0x30

    move-object/from16 v15, p1

    if-nez v7, :cond_5

    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v4, v7

    :cond_5
    :goto_3
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_7

    or-int/lit16 v4, v4, 0x180

    :cond_6
    move-object/from16 v7, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v0, 0x180

    if-nez v7, :cond_6

    move-object/from16 v7, p2

    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x100

    goto :goto_4

    :cond_8
    const/16 v12, 0x80

    :goto_4
    or-int/2addr v4, v12

    :goto_5
    and-int/lit8 v12, v2, 0x8

    const/16 v16, 0x400

    const/16 v17, 0x800

    if-eqz v12, :cond_a

    or-int/lit16 v4, v4, 0xc00

    :cond_9
    move/from16 v12, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v12, v0, 0xc00

    if-nez v12, :cond_9

    move/from16 v12, p3

    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v18

    if-eqz v18, :cond_b

    move/from16 v18, v17

    goto :goto_6

    :cond_b
    move/from16 v18, v16

    :goto_6
    or-int v4, v4, v18

    :goto_7
    and-int/lit8 v18, v2, 0x10

    const/16 v19, 0x2000

    const/16 v20, 0x4000

    if-eqz v18, :cond_d

    or-int/lit16 v4, v4, 0x6000

    :cond_c
    move-object/from16 v5, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v5, v0, 0x6000

    if-nez v5, :cond_c

    move-object/from16 v5, p4

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    move/from16 v18, v20

    goto :goto_8

    :cond_e
    move/from16 v18, v19

    :goto_8
    or-int v4, v4, v18

    :goto_9
    and-int/lit8 v18, v2, 0x20

    const/high16 v21, 0x20000

    const/high16 v22, 0x10000

    const/high16 v23, 0x30000

    if-eqz v18, :cond_f

    or-int v4, v4, v23

    move-object/from16 v6, p5

    goto :goto_b

    :cond_f
    and-int v24, v0, v23

    move-object/from16 v6, p5

    if-nez v24, :cond_11

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    move/from16 v25, v21

    goto :goto_a

    :cond_10
    move/from16 v25, v22

    :goto_a
    or-int v4, v4, v25

    :cond_11
    :goto_b
    and-int/lit8 v25, v2, 0x40

    const/high16 v26, 0x80000

    const/high16 v27, 0x100000

    const/high16 v28, 0x180000

    if-eqz v25, :cond_12

    or-int v4, v4, v28

    move/from16 v8, p6

    goto :goto_d

    :cond_12
    and-int v29, v0, v28

    move/from16 v8, p6

    if-nez v29, :cond_14

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v30

    if-eqz v30, :cond_13

    move/from16 v30, v27

    goto :goto_c

    :cond_13
    move/from16 v30, v26

    :goto_c
    or-int v4, v4, v30

    :cond_14
    :goto_d
    and-int/lit16 v9, v2, 0x80

    const/high16 v31, 0xc00000

    if-eqz v9, :cond_15

    or-int v4, v4, v31

    move-object/from16 v10, p7

    goto :goto_f

    :cond_15
    and-int v31, v0, v31

    move-object/from16 v10, p7

    if-nez v31, :cond_17

    invoke-interface {v14, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_16

    const/high16 v32, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v32, 0x400000

    :goto_e
    or-int v4, v4, v32

    :cond_17
    :goto_f
    and-int/lit16 v11, v2, 0x100

    const/high16 v33, 0x6000000

    if-eqz v11, :cond_18

    or-int v4, v4, v33

    move-object/from16 v3, p8

    goto :goto_11

    :cond_18
    and-int v33, v0, v33

    move-object/from16 v3, p8

    if-nez v33, :cond_1a

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_19

    const/high16 v34, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v34, 0x2000000

    :goto_10
    or-int v4, v4, v34

    :cond_1a
    :goto_11
    and-int/lit16 v0, v2, 0x200

    const/high16 v34, 0x30000000

    if-eqz v0, :cond_1c

    or-int v4, v4, v34

    :cond_1b
    move/from16 v34, v0

    move-object/from16 v0, p9

    goto :goto_13

    :cond_1c
    and-int v34, p18, v34

    if-nez v34, :cond_1b

    move/from16 v34, v0

    move-object/from16 v0, p9

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1d

    const/high16 v35, 0x20000000

    goto :goto_12

    :cond_1d
    const/high16 v35, 0x10000000

    :goto_12
    or-int v4, v4, v35

    :goto_13
    and-int/lit8 v35, v1, 0x6

    if-nez v35, :cond_20

    and-int/lit16 v0, v2, 0x400

    if-nez v0, :cond_1e

    move-object/from16 v0, p10

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1f

    const/16 v24, 0x4

    goto :goto_14

    :cond_1e
    move-object/from16 v0, p10

    :cond_1f
    const/16 v24, 0x2

    :goto_14
    or-int v24, v1, v24

    goto :goto_15

    :cond_20
    move-object/from16 v0, p10

    move/from16 v24, v1

    :goto_15
    and-int/lit8 v35, v1, 0x30

    if-nez v35, :cond_23

    and-int/lit16 v0, v2, 0x800

    if-nez v0, :cond_21

    move-object/from16 v0, p11

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_22

    const/16 v29, 0x20

    goto :goto_16

    :cond_21
    move-object/from16 v0, p11

    :cond_22
    const/16 v29, 0x10

    :goto_16
    or-int v24, v24, v29

    :goto_17
    move/from16 v0, v24

    goto :goto_18

    :cond_23
    move-object/from16 v0, p11

    goto :goto_17

    :goto_18
    and-int/lit16 v5, v2, 0x1000

    if-eqz v5, :cond_24

    or-int/lit16 v0, v0, 0x180

    goto :goto_1b

    :cond_24
    move/from16 v24, v0

    and-int/lit16 v0, v1, 0x180

    if-nez v0, :cond_26

    move/from16 v0, p12

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v29

    if-eqz v29, :cond_25

    const/16 v31, 0x100

    goto :goto_19

    :cond_25
    const/16 v31, 0x80

    :goto_19
    or-int v24, v24, v31

    :goto_1a
    move/from16 v0, v24

    goto :goto_1b

    :cond_26
    move/from16 v0, p12

    goto :goto_1a

    :goto_1b
    move/from16 v24, v5

    and-int/lit16 v5, v2, 0x2000

    if-eqz v5, :cond_28

    or-int/lit16 v0, v0, 0xc00

    move/from16 v29, v0

    :cond_27
    move/from16 v0, p13

    goto :goto_1c

    :cond_28
    move/from16 v29, v0

    and-int/lit16 v0, v1, 0xc00

    if-nez v0, :cond_27

    move/from16 v0, p13

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v30

    if-eqz v30, :cond_29

    move/from16 v16, v17

    :cond_29
    or-int v16, v29, v16

    move/from16 v29, v16

    :goto_1c
    and-int/lit16 v0, v1, 0x6000

    if-nez v0, :cond_2c

    and-int/lit16 v0, v2, 0x4000

    if-nez v0, :cond_2a

    move-object/from16 v0, p14

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2b

    move/from16 v19, v20

    goto :goto_1d

    :cond_2a
    move-object/from16 v0, p14

    :cond_2b
    :goto_1d
    or-int v29, v29, v19

    goto :goto_1e

    :cond_2c
    move-object/from16 v0, p14

    :goto_1e
    const v16, 0x8000

    and-int v16, v2, v16

    if-eqz v16, :cond_2e

    or-int v29, v29, v23

    :cond_2d
    move/from16 v17, v5

    move-object/from16 v5, p15

    goto :goto_20

    :cond_2e
    and-int v17, v1, v23

    if-nez v17, :cond_2d

    move/from16 v17, v5

    move-object/from16 v5, p15

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2f

    goto :goto_1f

    :cond_2f
    move/from16 v21, v22

    :goto_1f
    or-int v29, v29, v21

    :goto_20
    and-int v19, v2, v22

    if-eqz v19, :cond_30

    or-int v29, v29, v28

    move-object/from16 v5, p16

    goto :goto_21

    :cond_30
    and-int v19, v1, v28

    move-object/from16 v5, p16

    if-nez v19, :cond_32

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_31

    move/from16 v26, v27

    :cond_31
    or-int v29, v29, v26

    :cond_32
    :goto_21
    const v19, 0x12492493

    and-int v0, v4, v19

    const v1, 0x12492492

    const/4 v5, 0x1

    if-ne v0, v1, :cond_34

    const v0, 0x92493

    and-int v0, v29, v0

    const v1, 0x92492

    if-eq v0, v1, :cond_33

    goto :goto_22

    :cond_33
    const/4 v0, 0x0

    goto :goto_23

    :cond_34
    :goto_22
    move v0, v5

    :goto_23
    and-int/lit8 v1, v4, 0x1

    invoke-interface {v14, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, p18, 0x1

    const p17, -0xe001

    const/4 v1, 0x6

    if-eqz v0, :cond_39

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_24

    :cond_35
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v2, 0x400

    if-eqz v0, :cond_36

    and-int/lit8 v29, v29, -0xf

    :cond_36
    and-int/lit16 v0, v2, 0x800

    if-eqz v0, :cond_37

    and-int/lit8 v29, v29, -0x71

    :cond_37
    and-int/lit16 v0, v2, 0x4000

    if-eqz v0, :cond_38

    and-int v29, v29, p17

    :cond_38
    move-object/from16 v25, p9

    move-object/from16 v16, p11

    move/from16 v5, p12

    move/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v26, p15

    move-object/from16 v24, v3

    move-object v7, v6

    move/from16 v22, v8

    move-object/from16 v23, v10

    move-object v10, v14

    move/from16 v0, v29

    move-object/from16 v8, p10

    move v14, v4

    goto/16 :goto_2f

    :cond_39
    :goto_24
    if-eqz v18, :cond_3a

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_25

    :cond_3a
    move-object v0, v6

    :goto_25
    if-eqz v25, :cond_3b

    move/from16 v18, v5

    goto :goto_26

    :cond_3b
    move/from16 v18, v8

    :goto_26
    const/16 v19, 0x0

    if-eqz v9, :cond_3c

    move-object/from16 v20, v19

    goto :goto_27

    :cond_3c
    move-object/from16 v20, v10

    :goto_27
    if-eqz v11, :cond_3d

    move-object/from16 v3, v19

    :cond_3d
    if-eqz v34, :cond_3e

    move-object/from16 v21, v19

    goto :goto_28

    :cond_3e
    move-object/from16 v21, p9

    :goto_28
    and-int/lit16 v6, v2, 0x400

    if-eqz v6, :cond_3f

    sget-object v6, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v6, v14, v1}, Landroidx/compose/material3/SearchBarDefaults;->getInputFieldShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v6

    and-int/lit8 v29, v29, -0xf

    move-object/from16 v22, v6

    goto :goto_29

    :cond_3f
    move-object/from16 v22, p10

    :goto_29
    and-int/lit16 v6, v2, 0x800

    if-eqz v6, :cond_40

    move v6, v4

    sget-object v4, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    const/16 v11, 0xc00

    const/4 v12, 0x7

    move v9, v5

    move v8, v6

    const-wide/16 v5, 0x0

    move v10, v8

    const-wide/16 v7, 0x0

    move/from16 v23, v9

    const/4 v9, 0x0

    move-object/from16 v37, v14

    move v14, v10

    move-object/from16 v10, v37

    invoke-virtual/range {v4 .. v12}, Landroidx/compose/material3/SearchBarDefaults;->colors-Klgx-Pg(JJLandroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SearchBarColors;

    move-result-object v4

    and-int/lit8 v29, v29, -0x71

    goto :goto_2a

    :cond_40
    move-object v10, v14

    move v14, v4

    move-object/from16 v4, p11

    :goto_2a
    if-eqz v24, :cond_41

    sget-object v5, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v5}, Landroidx/compose/material3/SearchBarDefaults;->getTonalElevation-D9Ej5fM()F

    move-result v5

    goto :goto_2b

    :cond_41
    move/from16 v5, p12

    :goto_2b
    if-eqz v17, :cond_42

    sget-object v6, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v6}, Landroidx/compose/material3/SearchBarDefaults;->getShadowElevation-D9Ej5fM()F

    move-result v6

    goto :goto_2c

    :cond_42
    move/from16 v6, p13

    :goto_2c
    and-int/lit16 v7, v2, 0x4000

    if-eqz v7, :cond_43

    sget-object v7, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v7, v10, v1}, Landroidx/compose/material3/SearchBarDefaults;->getWindowInsets(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v7

    and-int v8, v29, p17

    move/from16 v29, v8

    goto :goto_2d

    :cond_43
    move-object/from16 v7, p14

    :goto_2d
    if-eqz v16, :cond_44

    move-object/from16 v24, v3

    move-object/from16 v16, v4

    move v11, v6

    move-object v12, v7

    move-object/from16 v26, v19

    :goto_2e
    move-object/from16 v23, v20

    move-object/from16 v25, v21

    move-object/from16 v8, v22

    move-object v7, v0

    move/from16 v22, v18

    move/from16 v0, v29

    goto :goto_2f

    :cond_44
    move-object/from16 v26, p15

    move-object/from16 v24, v3

    move-object/from16 v16, v4

    move v11, v6

    move-object v12, v7

    goto :goto_2e

    :goto_2f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_45

    const-string v3, "androidx.compose.material3.SearchBar (SearchBar.kt:1967)"

    const v4, 0x59d2d0fe

    invoke-static {v4, v14, v0, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_45
    new-instance v15, Landroidx/compose/material3/SearchBarKt$SearchBar$6;

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v17, v13

    invoke-direct/range {v15 .. v26}, Landroidx/compose/material3/SearchBarKt$SearchBar$6;-><init>(Landroidx/compose/material3/SearchBarColors;Ljava/lang/String;Lnl3;Lnl3;ZLnl3;ZLbm3;Lbm3;Lbm3;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    const/16 v3, 0x36

    const v4, -0x5f32ede2

    const/4 v9, 0x1

    invoke-static {v4, v9, v15, v10, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    shr-int/lit8 v3, v14, 0x6

    and-int/lit8 v6, v3, 0x70

    or-int/2addr v1, v6

    and-int/lit16 v6, v3, 0x380

    or-int/2addr v1, v6

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v1, v3

    shl-int/lit8 v3, v0, 0xc

    const v6, 0xe000

    and-int/2addr v6, v3

    or-int/2addr v1, v6

    const/high16 v6, 0x70000

    and-int/2addr v6, v3

    or-int/2addr v1, v6

    const/high16 v6, 0x380000

    and-int/2addr v6, v3

    or-int/2addr v1, v6

    const/high16 v6, 0x1c00000

    and-int/2addr v6, v3

    or-int/2addr v1, v6

    const/high16 v6, 0xe000000

    and-int/2addr v3, v6

    or-int/2addr v1, v3

    shl-int/lit8 v0, v0, 0x9

    const/high16 v3, 0x70000000

    and-int/2addr v0, v3

    or-int v15, v1, v0

    move-object/from16 v9, v16

    const/16 v16, 0x0

    move-object/from16 v6, p4

    move-object/from16 v13, p16

    move-object v14, v10

    move v10, v5

    move/from16 v5, p3

    invoke-static/range {v4 .. v16}, Landroidx/compose/material3/SearchBarKt;->SearchBar-Y92LkZI(Lbm3;ZLnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v16, v9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_46
    move-object v6, v7

    move v13, v10

    move-object v15, v12

    move-object v0, v14

    move-object/from16 v12, v16

    move/from16 v7, v22

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v16, v26

    move v14, v11

    move-object v11, v8

    move-object/from16 v8, v23

    goto :goto_30

    :cond_47
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object v9, v3

    move v7, v8

    move-object v8, v10

    move-object v0, v14

    move-object/from16 v10, p9

    move/from16 v14, p13

    :goto_30
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_48

    move-object v1, v0

    new-instance v0, Lnj7;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v17, p16

    move/from16 v18, p18

    move/from16 v19, p19

    move-object/from16 v36, v1

    move/from16 v20, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v20}, Lnj7;-><init>(Ljava/lang/String;Lnl3;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;III)V

    move-object/from16 v1, v36

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_48
    return-void
.end method

.method public static final SearchBar-Y92LkZI(Lbm3;ZLnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;Landroidx/compose/runtime/Composer;II)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;Z",
            "Lnl3<",
            "-",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/SearchBarColors;",
            "FF",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Ldm3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move/from16 v2, p1

    move/from16 v11, p11

    move/from16 v12, p12

    const v0, 0x5684dcd0

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    and-int/lit8 v3, v12, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v11, 0x6

    move-object/from16 v7, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v11, 0x6

    move-object/from16 v7, p0

    if-nez v3, :cond_2

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v11

    goto :goto_1

    :cond_2
    move v3, v11

    :goto_1
    and-int/lit8 v5, v12, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v11, 0x30

    if-nez v5, :cond_5

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v3, v5

    :cond_5
    :goto_3
    and-int/lit8 v5, v12, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v3, v3, 0x180

    move-object/from16 v9, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v11, 0x180

    move-object/from16 v9, p2

    if-nez v5, :cond_8

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_4

    :cond_7
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v3, v5

    :cond_8
    :goto_5
    and-int/lit8 v5, v12, 0x8

    if-eqz v5, :cond_a

    or-int/lit16 v3, v3, 0xc00

    :cond_9
    move-object/from16 v10, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v10, v11, 0xc00

    if-nez v10, :cond_9

    move-object/from16 v10, p3

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/16 v13, 0x800

    goto :goto_6

    :cond_b
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v3, v13

    :goto_7
    and-int/lit16 v13, v11, 0x6000

    if-nez v13, :cond_e

    and-int/lit8 v13, v12, 0x10

    if-nez v13, :cond_c

    move-object/from16 v13, p4

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/16 v14, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v13, p4

    :cond_d
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v3, v14

    goto :goto_9

    :cond_e
    move-object/from16 v13, p4

    :goto_9
    const/high16 v14, 0x30000

    and-int/2addr v14, v11

    if-nez v14, :cond_11

    and-int/lit8 v14, v12, 0x20

    if-nez v14, :cond_f

    move-object/from16 v14, p5

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_f
    move-object/from16 v14, p5

    :cond_10
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v3, v15

    goto :goto_b

    :cond_11
    move-object/from16 v14, p5

    :goto_b
    and-int/lit8 v22, v12, 0x40

    const/high16 v15, 0x180000

    if-eqz v22, :cond_13

    or-int/2addr v3, v15

    :cond_12
    move/from16 v15, p6

    goto :goto_d

    :cond_13
    and-int/2addr v15, v11

    if-nez v15, :cond_12

    move/from16 v15, p6

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_14

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_14
    const/high16 v16, 0x80000

    :goto_c
    or-int v3, v3, v16

    :goto_d
    and-int/lit16 v8, v12, 0x80

    const/high16 v16, 0xc00000

    if-eqz v8, :cond_15

    or-int v3, v3, v16

    move/from16 v6, p7

    goto :goto_f

    :cond_15
    and-int v16, v11, v16

    move/from16 v6, p7

    if-nez v16, :cond_17

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_16

    const/high16 v16, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v16, 0x400000

    :goto_e
    or-int v3, v3, v16

    :cond_17
    :goto_f
    const/high16 v16, 0x6000000

    and-int v16, v11, v16

    if-nez v16, :cond_1a

    and-int/lit16 v4, v12, 0x100

    if-nez v4, :cond_18

    move-object/from16 v4, p8

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19

    const/high16 v16, 0x4000000

    goto :goto_10

    :cond_18
    move-object/from16 v4, p8

    :cond_19
    const/high16 v16, 0x2000000

    :goto_10
    or-int v3, v3, v16

    goto :goto_11

    :cond_1a
    move-object/from16 v4, p8

    :goto_11
    and-int/lit16 v0, v12, 0x200

    const/high16 v16, 0x30000000

    if-eqz v0, :cond_1c

    or-int v3, v3, v16

    :cond_1b
    move-object/from16 v0, p9

    goto :goto_13

    :cond_1c
    and-int v0, v11, v16

    if-nez v0, :cond_1b

    move-object/from16 v0, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1d

    const/high16 v16, 0x20000000

    goto :goto_12

    :cond_1d
    const/high16 v16, 0x10000000

    :goto_12
    or-int v3, v3, v16

    :goto_13
    const v16, 0x12492493

    and-int v0, v3, v16

    const v2, 0x12492492

    const/4 v6, 0x0

    const/16 v26, 0x1

    if-eq v0, v2, :cond_1e

    move/from16 v0, v26

    goto :goto_14

    :cond_1e
    move v0, v6

    :goto_14
    and-int/lit8 v2, v3, 0x1

    invoke-interface {v1, v0, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v11, 0x1

    const v2, -0xe000001

    const v27, -0x70001

    const v16, -0xe001

    if-eqz v0, :cond_23

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_15

    :cond_1f
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x10

    if-eqz v0, :cond_20

    and-int v3, v3, v16

    :cond_20
    and-int/lit8 v0, v12, 0x20

    if-eqz v0, :cond_21

    and-int v3, v3, v27

    :cond_21
    and-int/lit16 v0, v12, 0x100

    if-eqz v0, :cond_22

    and-int/2addr v3, v2

    :cond_22
    move/from16 v28, p7

    move-object/from16 v23, v4

    move-object v8, v13

    move-object/from16 v22, v14

    move/from16 v27, v15

    const/16 v0, 0x20

    move-object v13, v1

    move v14, v3

    goto/16 :goto_1a

    :cond_23
    :goto_15
    if-eqz v5, :cond_24

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v10, v0

    :cond_24
    and-int/lit8 v0, v12, 0x10

    const/4 v5, 0x6

    if-eqz v0, :cond_25

    sget-object v0, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v0, v1, v5}, Landroidx/compose/material3/SearchBarDefaults;->getInputFieldShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    and-int v3, v3, v16

    goto :goto_16

    :cond_25
    move-object v0, v13

    :goto_16
    and-int/lit8 v13, v12, 0x20

    if-eqz v13, :cond_26

    sget-object v13, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    const/16 v20, 0xc00

    const/16 v21, 0x7

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v1

    invoke-virtual/range {v13 .. v21}, Landroidx/compose/material3/SearchBarDefaults;->colors-Klgx-Pg(JJLandroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SearchBarColors;

    move-result-object v1

    move-object/from16 v13, v19

    and-int v3, v3, v27

    move-object v14, v1

    goto :goto_17

    :cond_26
    move-object v13, v1

    :goto_17
    if-eqz v22, :cond_27

    sget-object v1, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v1}, Landroidx/compose/material3/SearchBarDefaults;->getTonalElevation-D9Ej5fM()F

    move-result v1

    goto :goto_18

    :cond_27
    move/from16 v1, p6

    :goto_18
    if-eqz v8, :cond_28

    sget-object v8, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v8}, Landroidx/compose/material3/SearchBarDefaults;->getShadowElevation-D9Ej5fM()F

    move-result v8

    goto :goto_19

    :cond_28
    move/from16 v8, p7

    :goto_19
    and-int/lit16 v15, v12, 0x100

    if-eqz v15, :cond_29

    sget-object v4, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v4, v13, v5}, Landroidx/compose/material3/SearchBarDefaults;->getWindowInsets(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v4

    and-int/2addr v3, v2

    :cond_29
    move/from16 v27, v1

    move-object/from16 v23, v4

    move/from16 v28, v8

    move-object/from16 v22, v14

    move-object v8, v0

    move v14, v3

    const/16 v0, 0x20

    :goto_1a
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.SearchBar (SearchBar.kt:544)"

    const v3, 0x5684dcd0

    invoke-static {v3, v14, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2a
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_2b

    sget-object v1, Lgx2;->b:Lgx2;

    invoke-static {v1, v13}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lo22;Landroidx/compose/runtime/Composer;)Ly22;

    move-result-object v1

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2b
    move-object/from16 v18, v1

    check-cast v18, Ly22;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2d

    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1b
    const/4 v4, 0x2

    goto :goto_1c

    :cond_2c
    move v2, v1

    goto :goto_1b

    :goto_1c
    invoke-static {v2, v1, v4, v3}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object v1

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2d
    check-cast v1, Landroidx/compose/animation/core/Animatable;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_2e

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-static {v2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v2

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2e
    check-cast v2, Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_2f

    const/4 v5, 0x2

    invoke-static {v3, v3, v5, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_1d

    :cond_2f
    const/4 v5, 0x2

    :goto_1d
    move-object/from16 v19, v4

    check-cast v19, Landroidx/compose/runtime/MutableState;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v4, v0, :cond_30

    invoke-static {v3, v3, v5, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_30
    move-object/from16 v20, v4

    check-cast v20, Landroidx/compose/runtime/MutableState;

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    and-int/lit8 v4, v14, 0x70

    const/16 v5, 0x20

    if-ne v4, v5, :cond_31

    move/from16 v4, v26

    goto :goto_1e

    :cond_31
    move v4, v6

    :goto_1e
    or-int/2addr v3, v4

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_32

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_33

    :cond_32
    move-object v3, v0

    goto :goto_1f

    :cond_33
    move-object v3, v2

    move-object/from16 p3, v8

    move-object/from16 v7, v18

    move/from16 v2, p1

    move-object v8, v0

    goto :goto_20

    :goto_1f
    new-instance v0, Landroidx/compose/material3/SearchBarKt$SearchBar$3$1;

    move v4, v6

    const/4 v6, 0x0

    move-object/from16 p3, v8

    move-object/from16 v7, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object v8, v3

    move-object v3, v2

    move/from16 v2, p1

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/SearchBarKt$SearchBar$3$1;-><init>(Landroidx/compose/animation/core/Animatable;ZLandroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Le02;)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v4, v0

    :goto_20
    check-cast v4, Lbm3;

    shr-int/lit8 v0, v14, 0x3

    and-int/lit8 v0, v0, 0xe

    invoke-static {v8, v4, v13, v0}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lbm3;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_34

    new-instance v4, Landroidx/compose/foundation/MutatorMutex;

    invoke-direct {v4}, Landroidx/compose/foundation/MutatorMutex;-><init>()V

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_34
    check-cast v4, Landroidx/compose/foundation/MutatorMutex;

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    and-int/lit16 v6, v14, 0x380

    const/16 v8, 0x100

    if-ne v6, v8, :cond_35

    move/from16 v6, v26

    goto :goto_21

    :cond_35
    const/4 v6, 0x0

    :goto_21
    or-int/2addr v5, v6

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_36

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v6, v5, :cond_37

    :cond_36
    move-object/from16 v25, v13

    goto :goto_22

    :cond_37
    move/from16 v16, v14

    move-object v14, v3

    move/from16 v3, v16

    move-object/from16 v16, v1

    move-object v1, v13

    goto :goto_23

    :goto_22
    new-instance v13, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;

    const/16 v21, 0x0

    move-object/from16 v16, v1

    move-object v15, v3

    move-object/from16 v18, v7

    move-object/from16 v17, v9

    move v3, v14

    move-object/from16 v1, v25

    move-object v14, v4

    invoke-direct/range {v13 .. v21}, Landroidx/compose/material3/SearchBarKt$SearchBar$4$1;-><init>(Landroidx/compose/foundation/MutatorMutex;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/animation/core/Animatable;Lnl3;Ly22;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Le02;)V

    move-object v14, v15

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v6, v13

    :goto_23
    check-cast v6, Lbm3;

    const/4 v4, 0x0

    invoke-static {v2, v6, v1, v0, v4}, Landroidx/compose/material3/internal/BackHandler_androidKt;->PredictiveBackHandler(ZLbm3;Landroidx/compose/runtime/Composer;II)V

    sget v0, Landroidx/compose/animation/core/Animatable;->$stable:I

    or-int/lit16 v0, v0, 0xdb0

    const v4, 0xe000

    shl-int/lit8 v5, v3, 0x3

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    shl-int/lit8 v4, v3, 0xf

    const/high16 v5, 0x70000

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    shl-int/lit8 v4, v3, 0x6

    const/high16 v5, 0x380000

    and-int/2addr v5, v4

    or-int/2addr v0, v5

    const/high16 v5, 0x1c00000

    and-int/2addr v5, v4

    or-int/2addr v0, v5

    const/high16 v5, 0xe000000

    and-int/2addr v5, v4

    or-int/2addr v0, v5

    const/high16 v5, 0x70000000

    and-int/2addr v4, v5

    or-int v26, v0, v4

    shr-int/lit8 v0, v3, 0x18

    and-int/lit8 v0, v0, 0x7e

    move-object/from16 v5, v20

    move-object/from16 v20, v22

    move/from16 v22, v28

    const/16 v28, 0x0

    move-object/from16 v18, p0

    move-object/from16 v24, p9

    move-object/from16 v25, v1

    move-object/from16 v17, v10

    move-object/from16 v13, v16

    move-object/from16 v15, v19

    move/from16 v21, v27

    move-object/from16 v19, p3

    move/from16 v27, v0

    move-object/from16 v16, v5

    invoke-static/range {v13 .. v28}, Landroidx/compose/material3/SearchBarKt;->SearchBarImpl-j1jLAyQ(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_38
    move-object/from16 v4, v17

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v9, v23

    goto :goto_24

    :cond_39
    move/from16 v2, p1

    move-object/from16 v25, v1

    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v7, p6

    move/from16 v8, p7

    move-object v9, v4

    move-object v4, v10

    move-object v5, v13

    move-object v6, v14

    :goto_24
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_3a

    new-instance v0, Lgk7;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v12}, Lgk7;-><init>(Lbm3;ZLnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;II)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_3a
    return-void
.end method

.method public static final SearchBar-nbWgWpA(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/runtime/Composer;II)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SearchBarState;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/SearchBarColors;",
            "FF",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v8, p8

    const v0, 0x498f3793

    move-object/from16 v2, p7

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    and-int/lit8 v2, p9, 0x1

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    or-int/lit8 v2, v8, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v8, 0x6

    if-nez v2, :cond_2

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v8

    goto :goto_1

    :cond_2
    move v2, v8

    :goto_1
    and-int/lit8 v4, p9, 0x2

    if-eqz v4, :cond_4

    or-int/lit8 v2, v2, 0x30

    :cond_3
    move-object/from16 v4, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v4, v8, 0x30

    if-nez v4, :cond_3

    move-object/from16 v4, p1

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x20

    goto :goto_2

    :cond_5
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    :goto_3
    and-int/lit8 v5, p9, 0x4

    if-eqz v5, :cond_7

    or-int/lit16 v2, v2, 0x180

    :cond_6
    move-object/from16 v6, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v6, v8, 0x180

    if-nez v6, :cond_6

    move-object/from16 v6, p2

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x100

    goto :goto_4

    :cond_8
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v2, v7

    :goto_5
    and-int/lit16 v7, v8, 0xc00

    if-nez v7, :cond_b

    and-int/lit8 v7, p9, 0x8

    if-nez v7, :cond_9

    move-object/from16 v7, p3

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v7, p3

    :cond_a
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v2, v9

    goto :goto_7

    :cond_b
    move-object/from16 v7, p3

    :goto_7
    and-int/lit16 v9, v8, 0x6000

    if-nez v9, :cond_e

    and-int/lit8 v9, p9, 0x10

    if-nez v9, :cond_c

    move-object/from16 v9, p4

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/16 v10, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v9, p4

    :cond_d
    const/16 v10, 0x2000

    :goto_8
    or-int/2addr v2, v10

    goto :goto_9

    :cond_e
    move-object/from16 v9, p4

    :goto_9
    and-int/lit8 v18, p9, 0x20

    const/high16 v10, 0x30000

    if-eqz v18, :cond_10

    or-int/2addr v2, v10

    :cond_f
    move/from16 v10, p5

    goto :goto_b

    :cond_10
    and-int/2addr v10, v8

    if-nez v10, :cond_f

    move/from16 v10, p5

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v11

    if-eqz v11, :cond_11

    const/high16 v11, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v11, 0x10000

    :goto_a
    or-int/2addr v2, v11

    :goto_b
    and-int/lit8 v19, p9, 0x40

    const/high16 v11, 0x180000

    if-eqz v19, :cond_13

    or-int/2addr v2, v11

    :cond_12
    move/from16 v11, p6

    goto :goto_d

    :cond_13
    and-int/2addr v11, v8

    if-nez v11, :cond_12

    move/from16 v11, p6

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v12

    if-eqz v12, :cond_14

    const/high16 v12, 0x100000

    goto :goto_c

    :cond_14
    const/high16 v12, 0x80000

    :goto_c
    or-int/2addr v2, v12

    :goto_d
    const v12, 0x92493

    and-int/2addr v12, v2

    const v13, 0x92492

    const/4 v14, 0x0

    const/16 v20, 0x1

    if-eq v12, v13, :cond_15

    move/from16 v12, v20

    goto :goto_e

    :cond_15
    move v12, v14

    :goto_e
    and-int/lit8 v13, v2, 0x1

    invoke-interface {v15, v12, v13}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v12

    if-eqz v12, :cond_24

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v12, v8, 0x1

    const v21, -0xe001

    if-eqz v12, :cond_19

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v12

    if-eqz v12, :cond_16

    goto :goto_f

    :cond_16
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_17

    and-int/lit16 v2, v2, -0x1c01

    :cond_17
    and-int/lit8 v5, p9, 0x10

    if-eqz v5, :cond_18

    and-int v2, v2, v21

    :cond_18
    move-object v5, v9

    move v9, v2

    move-object v2, v5

    move v5, v10

    move-object v10, v7

    move v7, v5

    move/from16 v16, v11

    move v5, v14

    goto/16 :goto_12

    :cond_19
    :goto_f
    if-eqz v5, :cond_1a

    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v6, v5

    :cond_1a
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_1b

    sget-object v5, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    const/4 v7, 0x6

    invoke-virtual {v5, v15, v7}, Landroidx/compose/material3/SearchBarDefaults;->getInputFieldShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v5

    and-int/lit16 v2, v2, -0x1c01

    move-object v7, v5

    :cond_1b
    and-int/lit8 v5, p9, 0x10

    if-eqz v5, :cond_1c

    sget-object v9, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    const/16 v16, 0xc00

    const/16 v17, 0x7

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move v5, v14

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v17}, Landroidx/compose/material3/SearchBarDefaults;->colors-Klgx-Pg(JJLandroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SearchBarColors;

    move-result-object v9

    and-int v2, v2, v21

    goto :goto_10

    :cond_1c
    move v5, v14

    :goto_10
    if-eqz v18, :cond_1d

    sget-object v10, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v10}, Landroidx/compose/material3/SearchBarDefaults;->getTonalElevation-D9Ej5fM()F

    move-result v10

    goto :goto_11

    :cond_1d
    move/from16 v10, p5

    :goto_11
    if-eqz v19, :cond_1e

    sget-object v11, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v11}, Landroidx/compose/material3/SearchBarDefaults;->getShadowElevation-D9Ej5fM()F

    move-result v11

    move-object/from16 v16, v9

    move v9, v2

    move-object/from16 v2, v16

    move/from16 v16, v10

    move-object v10, v7

    move/from16 v7, v16

    move/from16 v16, v11

    goto :goto_12

    :cond_1e
    move-object/from16 v16, v9

    move v9, v2

    move-object/from16 v2, v16

    move/from16 v16, v10

    move-object v10, v7

    move/from16 v7, v16

    move/from16 v16, p6

    :goto_12
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_1f

    const/4 v11, -0x1

    const-string v12, "androidx.compose.material3.SearchBar (SearchBar.kt:232)"

    invoke-static {v0, v9, v11, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1f
    and-int/lit8 v0, v9, 0xe

    if-ne v0, v3, :cond_20

    move/from16 v14, v20

    goto :goto_13

    :cond_20
    move v14, v5

    :goto_13
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v14, :cond_21

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_22

    :cond_21
    new-instance v0, Lsj7;

    invoke-direct {v0, v1, v5}, Lsj7;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_22
    check-cast v0, Lnl3;

    invoke-static {v6, v0}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/compose/material3/SearchBarColors;->getContainerColor-0d7_KjU()J

    move-result-wide v11

    invoke-virtual {v2}, Landroidx/compose/material3/SearchBarColors;->getContainerColor-0d7_KjU()J

    move-result-wide v13

    invoke-static {v13, v14, v15, v5}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v13

    shr-int/lit8 v3, v9, 0x6

    and-int/lit8 v3, v3, 0x70

    shr-int/lit8 v5, v9, 0x3

    const v17, 0xe000

    and-int v17, v5, v17

    or-int v3, v3, v17

    const/high16 v17, 0x70000

    and-int v5, v5, v17

    or-int/2addr v3, v5

    shl-int/lit8 v5, v9, 0x12

    const/high16 v9, 0x1c00000

    and-int/2addr v5, v9

    or-int v20, v3, v5

    const/16 v21, 0x40

    const/16 v17, 0x0

    move-object v9, v0

    move-object/from16 v18, v4

    move-object/from16 v19, v15

    move v15, v7

    invoke-static/range {v9 .. v21}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lbm3;Landroidx/compose/runtime/Composer;II)V

    move v0, v15

    move-object/from16 v15, v19

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_23
    move-object v5, v2

    move-object v3, v6

    move-object v4, v10

    move/from16 v7, v16

    move v6, v0

    goto :goto_14

    :cond_24
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v3, v6

    move-object v4, v7

    move-object v5, v9

    move/from16 v6, p5

    move/from16 v7, p6

    :goto_14
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_25

    new-instance v0, Ltj7;

    move-object/from16 v2, p1

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Ltj7;-><init>(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFII)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_25
    return-void
.end method

.method public static final SearchBarImpl-j1jLAyQ(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;Landroidx/compose/runtime/Composer;III)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;",
            "Landroidx/compose/runtime/MutableFloatState;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/activity/BackEventCompat;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/activity/BackEventCompat;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/SearchBarColors;",
            "FF",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Ldm3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v12, p11

    move/from16 v13, p13

    move/from16 v15, p15

    const v1, 0x1de82440

    move-object/from16 v2, p12

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    and-int/lit8 v2, v15, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v13, 0x6

    goto :goto_2

    :cond_0
    and-int/lit8 v2, v13, 0x6

    if-nez v2, :cond_3

    and-int/lit8 v2, v13, 0x8

    if-nez v2, :cond_1

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    :goto_1
    or-int/2addr v2, v13

    goto :goto_2

    :cond_3
    move v2, v13

    :goto_2
    and-int/lit8 v4, v15, 0x2

    if-eqz v4, :cond_4

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v14, p1

    goto :goto_4

    :cond_4
    and-int/lit8 v4, v13, 0x30

    move-object/from16 v14, p1

    if-nez v4, :cond_6

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x20

    goto :goto_3

    :cond_5
    const/16 v4, 0x10

    :goto_3
    or-int/2addr v2, v4

    :cond_6
    :goto_4
    and-int/lit8 v4, v15, 0x4

    if-eqz v4, :cond_8

    or-int/lit16 v2, v2, 0x180

    :cond_7
    move-object/from16 v4, p2

    goto :goto_6

    :cond_8
    and-int/lit16 v4, v13, 0x180

    if-nez v4, :cond_7

    move-object/from16 v4, p2

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/16 v7, 0x100

    goto :goto_5

    :cond_9
    const/16 v7, 0x80

    :goto_5
    or-int/2addr v2, v7

    :goto_6
    and-int/lit8 v7, v15, 0x8

    if-eqz v7, :cond_b

    or-int/lit16 v2, v2, 0xc00

    :cond_a
    move-object/from16 v7, p3

    goto :goto_8

    :cond_b
    and-int/lit16 v7, v13, 0xc00

    if-nez v7, :cond_a

    move-object/from16 v7, p3

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    const/16 v9, 0x800

    goto :goto_7

    :cond_c
    const/16 v9, 0x400

    :goto_7
    or-int/2addr v2, v9

    :goto_8
    and-int/lit8 v9, v15, 0x10

    if-eqz v9, :cond_e

    or-int/lit16 v2, v2, 0x6000

    :cond_d
    move-object/from16 v10, p4

    goto :goto_a

    :cond_e
    and-int/lit16 v10, v13, 0x6000

    if-nez v10, :cond_d

    move-object/from16 v10, p4

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    const/16 v16, 0x4000

    goto :goto_9

    :cond_f
    const/16 v16, 0x2000

    :goto_9
    or-int v2, v2, v16

    :goto_a
    and-int/lit8 v16, v15, 0x20

    const/high16 v17, 0x30000

    if-eqz v16, :cond_10

    or-int v2, v2, v17

    move-object/from16 v11, p5

    goto :goto_c

    :cond_10
    and-int v16, v13, v17

    move-object/from16 v11, p5

    if-nez v16, :cond_12

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    const/high16 v16, 0x20000

    goto :goto_b

    :cond_11
    const/high16 v16, 0x10000

    :goto_b
    or-int v2, v2, v16

    :cond_12
    :goto_c
    const/high16 v16, 0x180000

    and-int v17, v13, v16

    if-nez v17, :cond_14

    and-int/lit8 v17, v15, 0x40

    move-object/from16 v3, p6

    if-nez v17, :cond_13

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    const/high16 v19, 0x100000

    goto :goto_d

    :cond_13
    const/high16 v19, 0x80000

    :goto_d
    or-int v2, v2, v19

    goto :goto_e

    :cond_14
    move-object/from16 v3, p6

    :goto_e
    const/high16 v19, 0xc00000

    and-int v20, v13, v19

    if-nez v20, :cond_17

    and-int/lit16 v5, v15, 0x80

    if-nez v5, :cond_15

    move-object/from16 v5, p7

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    const/high16 v21, 0x800000

    goto :goto_f

    :cond_15
    move-object/from16 v5, p7

    :cond_16
    const/high16 v21, 0x400000

    :goto_f
    or-int v2, v2, v21

    goto :goto_10

    :cond_17
    move-object/from16 v5, p7

    :goto_10
    and-int/lit16 v1, v15, 0x100

    const/high16 v22, 0x6000000

    if-eqz v1, :cond_18

    or-int v2, v2, v22

    move/from16 v3, p8

    goto :goto_12

    :cond_18
    and-int v22, v13, v22

    move/from16 v3, p8

    if-nez v22, :cond_1a

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v22

    if-eqz v22, :cond_19

    const/high16 v22, 0x4000000

    goto :goto_11

    :cond_19
    const/high16 v22, 0x2000000

    :goto_11
    or-int v2, v2, v22

    :cond_1a
    :goto_12
    and-int/lit16 v3, v15, 0x200

    const/high16 v22, 0x30000000

    if-eqz v3, :cond_1c

    or-int v2, v2, v22

    :cond_1b
    move/from16 v22, v3

    move/from16 v3, p9

    goto :goto_14

    :cond_1c
    and-int v22, v13, v22

    if-nez v22, :cond_1b

    move/from16 v22, v3

    move/from16 v3, p9

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v23

    if-eqz v23, :cond_1d

    const/high16 v23, 0x20000000

    goto :goto_13

    :cond_1d
    const/high16 v23, 0x10000000

    :goto_13
    or-int v2, v2, v23

    :goto_14
    and-int/lit8 v23, p14, 0x6

    if-nez v23, :cond_20

    and-int/lit16 v6, v15, 0x400

    if-nez v6, :cond_1e

    move-object/from16 v6, p10

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1f

    const/16 v17, 0x4

    goto :goto_15

    :cond_1e
    move-object/from16 v6, p10

    :cond_1f
    const/16 v17, 0x2

    :goto_15
    or-int v17, p14, v17

    goto :goto_16

    :cond_20
    move-object/from16 v6, p10

    move/from16 v17, p14

    :goto_16
    move/from16 v24, v1

    and-int/lit16 v1, v15, 0x800

    if-eqz v1, :cond_21

    or-int/lit8 v17, v17, 0x30

    goto :goto_18

    :cond_21
    and-int/lit8 v1, p14, 0x30

    if-nez v1, :cond_23

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v20, 0x20

    goto :goto_17

    :cond_22
    const/16 v20, 0x10

    :goto_17
    or-int v17, v17, v20

    :cond_23
    :goto_18
    const v1, 0x12492493

    and-int/2addr v1, v2

    move/from16 v20, v2

    const v2, 0x12492492

    const/16 v23, 0x0

    if-ne v1, v2, :cond_25

    and-int/lit8 v1, v17, 0x13

    const/16 v2, 0x12

    if-eq v1, v2, :cond_24

    goto :goto_19

    :cond_24
    move/from16 v1, v23

    goto :goto_1a

    :cond_25
    :goto_19
    const/4 v1, 0x1

    :goto_1a
    and-int/lit8 v2, v20, 0x1

    invoke-interface {v8, v1, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, v13, 0x1

    const v25, -0x1c00001

    const v2, -0x380001

    const/4 v3, 0x6

    if-eqz v1, :cond_2a

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_1c

    :cond_26
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v1, v15, 0x40

    if-eqz v1, :cond_27

    and-int v2, v20, v2

    goto :goto_1b

    :cond_27
    move/from16 v2, v20

    :goto_1b
    and-int/lit16 v1, v15, 0x80

    if-eqz v1, :cond_28

    and-int v2, v2, v25

    :cond_28
    and-int/lit16 v1, v15, 0x400

    if-eqz v1, :cond_29

    and-int/lit8 v17, v17, -0xf

    :cond_29
    move v9, v2

    move v1, v3

    move-object v3, v5

    move-object v7, v6

    move-object v4, v10

    move/from16 v10, v17

    move-object/from16 v2, p6

    move/from16 v5, p8

    move/from16 v6, p9

    goto/16 :goto_23

    :cond_2a
    :goto_1c
    if-eqz v9, :cond_2b

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_1d

    :cond_2b
    move-object v1, v10

    :goto_1d
    and-int/lit8 v9, v15, 0x40

    if-eqz v9, :cond_2c

    sget-object v9, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v9, v8, v3}, Landroidx/compose/material3/SearchBarDefaults;->getInputFieldShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v9

    and-int v2, v20, v2

    move/from16 v26, v2

    move-object/from16 v20, v9

    goto :goto_1e

    :cond_2c
    move/from16 v26, v20

    move-object/from16 v20, p6

    :goto_1e
    and-int/lit16 v2, v15, 0x80

    if-eqz v2, :cond_2d

    sget-object v2, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    const/16 v9, 0xc00

    const/4 v10, 0x7

    move v5, v3

    const-wide/16 v3, 0x0

    move/from16 v27, v5

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 p4, v1

    move/from16 v1, v27

    invoke-virtual/range {v2 .. v10}, Landroidx/compose/material3/SearchBarDefaults;->colors-Klgx-Pg(JJLandroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SearchBarColors;

    move-result-object v2

    and-int v3, v26, v25

    goto :goto_1f

    :cond_2d
    move-object/from16 p4, v1

    move v1, v3

    move-object v2, v5

    move/from16 v3, v26

    :goto_1f
    if-eqz v24, :cond_2e

    sget-object v4, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v4}, Landroidx/compose/material3/SearchBarDefaults;->getTonalElevation-D9Ej5fM()F

    move-result v4

    goto :goto_20

    :cond_2e
    move/from16 v4, p8

    :goto_20
    if-eqz v22, :cond_2f

    sget-object v5, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v5}, Landroidx/compose/material3/SearchBarDefaults;->getShadowElevation-D9Ej5fM()F

    move-result v5

    goto :goto_21

    :cond_2f
    move/from16 v5, p9

    :goto_21
    and-int/lit16 v6, v15, 0x400

    if-eqz v6, :cond_30

    sget-object v6, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v6, v8, v1}, Landroidx/compose/material3/SearchBarDefaults;->getWindowInsets(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v6

    and-int/lit8 v17, v17, -0xf

    move v9, v3

    move-object v7, v6

    move/from16 v10, v17

    move-object v3, v2

    move v6, v5

    move-object/from16 v2, v20

    move v5, v4

    :goto_22
    move-object/from16 v4, p4

    goto :goto_23

    :cond_30
    move-object/from16 v7, p10

    move v9, v3

    move v6, v5

    move/from16 v10, v17

    move-object v3, v2

    move v5, v4

    move-object/from16 v2, v20

    goto :goto_22

    :goto_23
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v17

    if-eqz v17, :cond_31

    const-string v1, "androidx.compose.material3.SearchBarImpl (SearchBar.kt:2093)"

    move-object/from16 p4, v4

    const v4, 0x1de82440

    invoke-static {v4, v9, v10, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_24

    :cond_31
    move-object/from16 p4, v4

    :goto_24
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/Density;

    sget-object v4, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    move-object/from16 p6, v7

    move/from16 v17, v10

    const/4 v7, 0x6

    invoke-virtual {v4, v8, v7}, Landroidx/compose/material3/SearchBarDefaults;->getInputFieldShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v10

    invoke-virtual {v4, v8, v7}, Landroidx/compose/material3/SearchBarDefaults;->getFullScreenShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p7, v4

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v7, v4, :cond_32

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v4

    new-instance v7, Lzi0;

    const/4 v11, 0x2

    invoke-direct {v7, v0, v11}, Lzi0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v4, v7}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lll3;)Landroidx/compose/runtime/State;

    move-result-object v7

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_32
    check-cast v7, Landroidx/compose/runtime/State;

    invoke-static {v7}, Landroidx/compose/material3/SearchBarKt;->SearchBarImpl_j1jLAyQ$lambda$32(Landroidx/compose/runtime/State;)Z

    move-result v4

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v4

    const/high16 v11, 0x380000

    and-int v20, v9, v11

    move/from16 p8, v11

    xor-int v11, v20, v16

    move/from16 p9, v4

    const/high16 v4, 0x100000

    if-le v11, v4, :cond_33

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_34

    :cond_33
    and-int v11, v9, v16

    if-ne v11, v4, :cond_35

    :cond_34
    const/16 v23, 0x1

    :cond_35
    or-int v4, p9, v23

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v4, :cond_36

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v11, v4, :cond_39

    :cond_36
    invoke-static {v2, v10}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    new-instance v4, Landroidx/compose/foundation/shape/GenericShape;

    new-instance v7, Luj7;

    invoke-direct {v7, v1, v0}, Luj7;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/animation/core/Animatable;)V

    invoke-direct {v4, v7}, Landroidx/compose/foundation/shape/GenericShape;-><init>(Ldm3;)V

    goto :goto_25

    :cond_37
    invoke-static {v7}, Landroidx/compose/material3/SearchBarKt;->SearchBarImpl_j1jLAyQ$lambda$32(Landroidx/compose/runtime/State;)Z

    move-result v1

    if-eqz v1, :cond_38

    move-object/from16 v4, p7

    goto :goto_25

    :cond_38
    move-object v4, v2

    :goto_25
    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v11, v4

    :cond_39
    check-cast v11, Landroidx/compose/ui/graphics/Shape;

    new-instance v1, Landroidx/compose/material3/SearchBarKt$SearchBarImpl$surface$1;

    invoke-direct {v1, v11, v3, v5, v6}, Landroidx/compose/material3/SearchBarKt$SearchBarImpl$surface$1;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FF)V

    const v4, -0x4dbf7515

    const/16 v7, 0x36

    const/4 v10, 0x1

    invoke-static {v4, v10, v1, v8, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v4, v11, :cond_3a

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v4

    new-instance v11, Lgf;

    const/4 v7, 0x2

    invoke-direct {v11, v0, v7}, Lgf;-><init>(Ljava/lang/Object;I)V

    invoke-static {v4, v11}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lll3;)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3a
    check-cast v4, Landroidx/compose/runtime/State;

    invoke-static {v4}, Landroidx/compose/material3/SearchBarKt;->SearchBarImpl_j1jLAyQ$lambda$38(Landroidx/compose/runtime/State;)Z

    move-result v4

    if-eqz v4, :cond_3b

    const v4, 0x49b54233

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    new-instance v4, Landroidx/compose/material3/SearchBarKt$SearchBarImpl$wrappedContent$1;

    invoke-direct {v4, v0, v3, v12}, Landroidx/compose/material3/SearchBarKt$SearchBarImpl$wrappedContent$1;-><init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/material3/SearchBarColors;Ldm3;)V

    const v7, 0x6d2be86d

    const/16 v11, 0x36

    invoke-static {v7, v10, v4, v8, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_26

    :cond_3b
    const v4, 0x49b8db1d

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v4, 0x0

    :goto_26
    sget v7, Landroidx/compose/animation/core/Animatable;->$stable:I

    or-int v7, v7, v19

    and-int/lit8 v10, v9, 0xe

    or-int/2addr v7, v10

    and-int/lit8 v10, v9, 0x70

    or-int/2addr v7, v10

    and-int/lit16 v10, v9, 0x380

    or-int/2addr v7, v10

    and-int/lit16 v10, v9, 0x1c00

    or-int/2addr v7, v10

    const v10, 0xe000

    and-int/2addr v10, v9

    or-int/2addr v7, v10

    shl-int/lit8 v10, v17, 0xf

    const/high16 v11, 0x70000

    and-int/2addr v10, v11

    or-int/2addr v7, v10

    shl-int/lit8 v9, v9, 0x3

    and-int v9, v9, p8

    or-int v10, v7, v9

    move-object v7, v1

    move-object/from16 v20, v2

    move-object v11, v3

    move/from16 v16, v6

    move-object v9, v8

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p5

    move-object v8, v4

    move v14, v5

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/SearchBarKt;->SearchBarLayout(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;Lbm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;I)V

    move-object v8, v9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3c
    move-object v0, v8

    move-object v8, v11

    move v9, v14

    move/from16 v10, v16

    move-object/from16 v7, v20

    move-object v11, v5

    move-object v5, v4

    goto :goto_27

    :cond_3d
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v7, p6

    move/from16 v9, p8

    move-object/from16 v11, p10

    move-object v0, v8

    move-object v8, v5

    move-object v5, v10

    move/from16 v10, p9

    :goto_27
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_3e

    move-object v1, v0

    new-instance v0, Lck7;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v14, p14

    move-object/from16 v28, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v15}, Lck7;-><init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;III)V

    move-object/from16 v1, v28

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_3e
    return-void
.end method

.method private static final SearchBarImpl_j1jLAyQ$lambda$31$lambda$30(Landroidx/compose/animation/core/Animatable;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final SearchBarImpl_j1jLAyQ$lambda$32(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final SearchBarImpl_j1jLAyQ$lambda$35$lambda$34(Landroidx/compose/ui/unit/Density;Landroidx/compose/animation/core/Animatable;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Size;Landroidx/compose/ui/unit/LayoutDirection;)Lj59;
    .locals 4

    sget p4, Landroidx/compose/material3/SearchBarKt;->SearchBarCornerRadius:F

    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    mul-float/2addr v0, p4

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p1

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Size;->unbox-impl()J

    move-result-wide p3

    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/SizeKt;->toRect-uvyYCjk(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    int-to-long p3, p3

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr p3, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p3, v0

    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/CornerRadius;->constructor-impl(J)J

    move-result-wide p3

    invoke-static {p1, p3, p4}, Landroidx/compose/ui/geometry/RoundRectKt;->RoundRect-sniSvfs(Landroidx/compose/ui/geometry/Rect;J)Landroidx/compose/ui/geometry/RoundRect;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p3, 0x2

    invoke-static {p2, p0, p1, p3, p1}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;Landroidx/compose/ui/graphics/Path$Direction;ILjava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final SearchBarImpl_j1jLAyQ$lambda$37$lambda$36(Landroidx/compose/animation/core/Animatable;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final SearchBarImpl_j1jLAyQ$lambda$38(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final SearchBarImpl_j1jLAyQ$lambda$39(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 17

    or-int/lit8 v0, p12, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    invoke-static/range {p13 .. p13}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v16, p14

    move-object/from16 v13, p15

    invoke-static/range {v1 .. v16}, Landroidx/compose/material3/SearchBarKt;->SearchBarImpl-j1jLAyQ(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final SearchBarLayout(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;Lbm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;",
            "Landroidx/compose/runtime/MutableFloatState;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/activity/BackEventCompat;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/activity/BackEventCompat;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p10

    const v0, 0x48932576

    move-object/from16 v2, p9

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    and-int/lit8 v2, v11, 0x6

    if-nez v2, :cond_2

    and-int/lit8 v2, v11, 0x8

    if-nez v2, :cond_0

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_0
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    :goto_1
    or-int/2addr v2, v11

    goto :goto_2

    :cond_2
    move v2, v11

    :goto_2
    and-int/lit8 v5, v11, 0x30

    if-nez v5, :cond_4

    move-object/from16 v5, p1

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/16 v14, 0x20

    goto :goto_3

    :cond_3
    const/16 v14, 0x10

    :goto_3
    or-int/2addr v2, v14

    goto :goto_4

    :cond_4
    move-object/from16 v5, p1

    :goto_4
    and-int/lit16 v14, v11, 0x180

    if-nez v14, :cond_6

    move-object/from16 v14, p2

    invoke-interface {v12, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    const/16 v16, 0x100

    goto :goto_5

    :cond_5
    const/16 v16, 0x80

    :goto_5
    or-int v2, v2, v16

    goto :goto_6

    :cond_6
    move-object/from16 v14, p2

    :goto_6
    and-int/lit16 v15, v11, 0xc00

    if-nez v15, :cond_8

    move-object/from16 v15, p3

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x800

    goto :goto_7

    :cond_7
    const/16 v17, 0x400

    :goto_7
    or-int v2, v2, v17

    goto :goto_8

    :cond_8
    move-object/from16 v15, p3

    :goto_8
    and-int/lit16 v13, v11, 0x6000

    if-nez v13, :cond_a

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/16 v13, 0x4000

    goto :goto_9

    :cond_9
    const/16 v13, 0x2000

    :goto_9
    or-int/2addr v2, v13

    :cond_a
    const/high16 v13, 0x30000

    and-int/2addr v13, v11

    if-nez v13, :cond_c

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/high16 v13, 0x20000

    goto :goto_a

    :cond_b
    const/high16 v13, 0x10000

    :goto_a
    or-int/2addr v2, v13

    :cond_c
    const/high16 v13, 0x180000

    and-int/2addr v13, v11

    if-nez v13, :cond_e

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/high16 v13, 0x100000

    goto :goto_b

    :cond_d
    const/high16 v13, 0x80000

    :goto_b
    or-int/2addr v2, v13

    :cond_e
    const/high16 v13, 0xc00000

    and-int/2addr v13, v11

    if-nez v13, :cond_10

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    const/high16 v13, 0x800000

    goto :goto_c

    :cond_f
    const/high16 v13, 0x400000

    :goto_c
    or-int/2addr v2, v13

    :cond_10
    const/high16 v13, 0x6000000

    and-int/2addr v13, v11

    if-nez v13, :cond_12

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    const/high16 v13, 0x4000000

    goto :goto_d

    :cond_11
    const/high16 v13, 0x2000000

    :goto_d
    or-int/2addr v2, v13

    :cond_12
    move v13, v2

    const v2, 0x2492493

    and-int/2addr v2, v13

    const v3, 0x2492492

    const/4 v0, 0x1

    if-eq v2, v3, :cond_13

    move v2, v0

    goto :goto_e

    :cond_13
    const/4 v2, 0x0

    :goto_e
    and-int/lit8 v3, v13, 0x1

    invoke-interface {v12, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.SearchBarLayout (SearchBar.kt:2167)"

    const v4, 0x48932576

    invoke-static {v4, v13, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_14
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_15

    new-instance v2, Landroidx/compose/material3/internal/MutableWindowInsets;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v0, v4}, Landroidx/compose/material3/internal/MutableWindowInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;ILjh2;)V

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_15
    check-cast v2, Landroidx/compose/material3/internal/MutableWindowInsets;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v6, v4}, Landroidx/compose/ui/ZIndexModifierKt;->zIndex(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/high16 v19, 0x70000

    and-int v0, v13, v19

    move-object/from16 v19, v3

    const/high16 v3, 0x20000

    if-ne v0, v3, :cond_16

    const/4 v0, 0x1

    goto :goto_f

    :cond_16
    const/4 v0, 0x0

    :goto_f
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_17

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v3, v0, :cond_18

    :cond_17
    new-instance v3, Lq12;

    const/4 v0, 0x2

    invoke-direct {v3, v0, v2, v7}, Lq12;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_18
    check-cast v3, Lnl3;

    invoke-static {v4, v3}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->onConsumedWindowInsetsChanged(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v7}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->consumeWindowInsets(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    and-int/lit8 v3, v13, 0xe

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1a

    and-int/lit8 v3, v13, 0x8

    if-eqz v3, :cond_19

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_10

    :cond_19
    const/4 v3, 0x0

    goto :goto_11

    :cond_1a
    :goto_10
    const/4 v3, 0x1

    :goto_11
    and-int/lit16 v4, v13, 0x1c00

    move-object/from16 v18, v0

    const/16 v0, 0x800

    if-ne v4, v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_12

    :cond_1b
    const/4 v0, 0x0

    :goto_12
    or-int/2addr v0, v3

    and-int/lit8 v3, v13, 0x70

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1c

    const/4 v3, 0x1

    goto :goto_13

    :cond_1c
    const/4 v3, 0x0

    :goto_13
    or-int/2addr v0, v3

    and-int/lit16 v3, v13, 0x380

    const/16 v4, 0x100

    if-ne v3, v4, :cond_1d

    const/4 v3, 0x1

    goto :goto_14

    :cond_1d
    const/4 v3, 0x0

    :goto_14
    or-int/2addr v0, v3

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_1f

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v3, v0, :cond_1e

    goto :goto_15

    :cond_1e
    move-object/from16 v14, v18

    const/4 v15, 0x0

    goto :goto_16

    :cond_1f
    :goto_15
    new-instance v0, Landroidx/compose/material3/SearchBarKt$SearchBarLayout$2$1;

    move-object v4, v5

    move-object v5, v14

    move-object v3, v15

    move-object/from16 v14, v18

    const/4 v15, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/SearchBarKt$SearchBarLayout$2$1;-><init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/material3/internal/MutableWindowInsets;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v3, v0

    :goto_16
    check-cast v3, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-static {v12, v15}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v0

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v1

    invoke-static {v12, v14}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lll3;

    move-result-object v5

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v14

    if-nez v14, :cond_20

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    :cond_20
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v14

    if-eqz v14, :cond_21

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->createNode(Lll3;)V

    goto :goto_17

    :cond_21
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->useNode()V

    :goto_17
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    invoke-static {v4, v5, v3, v5, v1}, Lcc;->b(Landroidx/compose/ui/node/ComposeUiNode$Companion;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/CompositionLocalMap;)Lbm3;

    move-result-object v1

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-nez v3, :cond_22

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v3, v14}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    :cond_22
    invoke-static {v1, v0, v5, v0}, Ldc;->b(Lbm3;ILandroidx/compose/runtime/Composer;I)V

    :cond_23
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lbm3;

    move-result-object v0

    invoke-static {v5, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lbm3;)V

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const-string v1, "Surface"

    invoke-static {v0, v1}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    invoke-static {v12, v15}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v14

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v15

    invoke-static {v12, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lll3;

    move-result-object v5

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v16

    if-nez v16, :cond_24

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    :cond_24
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v16

    if-eqz v16, :cond_25

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->createNode(Lll3;)V

    goto :goto_18

    :cond_25
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->useNode()V

    :goto_18
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    invoke-static {v4, v5, v3, v5, v15}, Lcc;->b(Landroidx/compose/ui/node/ComposeUiNode$Companion;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/CompositionLocalMap;)Lbm3;

    move-result-object v3

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v15

    if-nez v15, :cond_26

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 p9, v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_19

    :cond_26
    move-object/from16 p9, v2

    :goto_19
    invoke-static {v3, v14, v5, v14}, Ldc;->b(Lbm3;ILandroidx/compose/runtime/Composer;I)V

    :cond_27
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lbm3;

    move-result-object v2

    invoke-static {v5, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lbm3;)V

    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v1, v13, 0x15

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v12, v1}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endNode()V

    const-string v1, "InputField"

    invoke-static {v0, v1}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual/range {p9 .. p9}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v2, v5}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    const/4 v15, 0x0

    invoke-static {v12, v15}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v3

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v5

    invoke-static {v12, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lll3;

    move-result-object v14

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v15

    if-nez v15, :cond_28

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    :cond_28
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v15

    if-eqz v15, :cond_29

    invoke-interface {v12, v14}, Landroidx/compose/runtime/Composer;->createNode(Lll3;)V

    goto :goto_1a

    :cond_29
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->useNode()V

    :goto_1a
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v14

    invoke-static {v4, v14, v2, v14, v5}, Lcc;->b(Landroidx/compose/ui/node/ComposeUiNode$Companion;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/CompositionLocalMap;)Lbm3;

    move-result-object v2

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v5

    if-nez v5, :cond_2a

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v5, v15}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    :cond_2a
    invoke-static {v2, v3, v14, v3}, Ldc;->b(Lbm3;ILandroidx/compose/runtime/Composer;I)V

    :cond_2b
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lbm3;

    move-result-object v2

    invoke-static {v14, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lbm3;)V

    shr-int/lit8 v1, v13, 0x12

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v12, v1}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endNode()V

    if-nez v10, :cond_2c

    const v0, 0x7ab71ab4

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    :goto_1b
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_1d

    :cond_2c
    const v1, 0x7ab71ab5

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "Content"

    invoke-static {v0, v1}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual/range {p9 .. p9}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v1

    const/4 v5, 0x1

    invoke-static {v1, v5}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    const/4 v15, 0x0

    invoke-static {v12, v15}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v2

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v3

    invoke-static {v12, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lll3;

    move-result-object v5

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v13

    if-nez v13, :cond_2d

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    :cond_2d
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v13

    if-eqz v13, :cond_2e

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->createNode(Lll3;)V

    goto :goto_1c

    :cond_2e
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->useNode()V

    :goto_1c
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    invoke-static {v4, v5, v1, v5, v3}, Lcc;->b(Landroidx/compose/ui/node/ComposeUiNode$Companion;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/CompositionLocalMap;)Lbm3;

    move-result-object v1

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-nez v3, :cond_2f

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v3, v13}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    :cond_2f
    invoke-static {v1, v2, v5, v2}, Ldc;->b(Lbm3;ILandroidx/compose/runtime/Composer;I)V

    :cond_30
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lbm3;

    move-result-object v1

    invoke-static {v5, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lbm3;)V

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v12, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endNode()V

    sget-object v0, Lj59;->a:Lj59;

    goto :goto_1b

    :goto_1d
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endNode()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1e

    :cond_31
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_32
    :goto_1e
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_33

    new-instance v0, Lmj7;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    invoke-direct/range {v0 .. v10}, Lmj7;-><init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;Lbm3;Lbm3;Lbm3;I)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_33
    return-void
.end method

.method private static final SearchBarLayout$lambda$42$lambda$41(Landroidx/compose/material3/internal/MutableWindowInsets;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)Lj59;
    .locals 0

    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/WindowInsetsKt;->exclude(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/MutableWindowInsets;->setInsets(Landroidx/compose/foundation/layout/WindowInsets;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final SearchBarLayout$lambda$49(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;Lbm3;Lbm3;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 12

    or-int/lit8 v0, p9, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p10

    invoke-static/range {v1 .. v11}, Landroidx/compose/material3/SearchBarKt;->SearchBarLayout(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;Lbm3;Lbm3;Lbm3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final SearchBar_WuY5d9Q$lambda$28(Ljava/lang/String;Lnl3;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 22

    or-int/lit8 v0, p17, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v19

    invoke-static/range {p18 .. p18}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v21, p19

    move-object/from16 v18, p20

    invoke-static/range {v1 .. v21}, Landroidx/compose/material3/SearchBarKt;->SearchBar-WuY5d9Q(Ljava/lang/String;Lnl3;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final SearchBar_Y92LkZI$lambda$22(Lbm3;ZLnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 14

    or-int/lit8 v0, p10, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v12

    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v13, p11

    move-object/from16 v11, p12

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/SearchBarKt;->SearchBar-Y92LkZI(Lbm3;ZLnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final SearchBar_nbWgWpA$lambda$1$lambda$0(Landroidx/compose/material3/SearchBarState;Landroidx/compose/ui/layout/LayoutCoordinates;)Lj59;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SearchBarState;->setCollapsedCoords(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final SearchBar_nbWgWpA$lambda$2(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 11

    or-int/lit8 v0, p7, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v10, p8

    move-object/from16 v8, p9

    invoke-static/range {v1 .. v10}, Landroidx/compose/material3/SearchBarKt;->SearchBar-nbWgWpA(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final TopSearchBar-qKj4JfE(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/SearchBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SearchBarState;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/SearchBarColors;",
            "FF",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Landroidx/compose/material3/SearchBarScrollBehavior;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move/from16 v10, p10

    move/from16 v11, p11

    const v0, 0x2ea8ed4e

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    and-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v10, 0x6

    move-object/from16 v12, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v10, 0x6

    move-object/from16 v12, p0

    if-nez v1, :cond_2

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v10

    goto :goto_1

    :cond_2
    move v1, v10

    :goto_1
    and-int/lit8 v2, v11, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v13, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v10, 0x30

    move-object/from16 v13, p1

    if-nez v2, :cond_5

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    :goto_3
    and-int/lit8 v2, v11, 0x4

    if-eqz v2, :cond_7

    or-int/lit16 v1, v1, 0x180

    :cond_6
    move-object/from16 v3, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v3, v10, 0x180

    if-nez v3, :cond_6

    move-object/from16 v3, p2

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x100

    goto :goto_4

    :cond_8
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v1, v4

    :goto_5
    and-int/lit16 v4, v10, 0xc00

    if-nez v4, :cond_b

    and-int/lit8 v4, v11, 0x8

    if-nez v4, :cond_9

    move-object/from16 v4, p3

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v4, p3

    :cond_a
    const/16 v5, 0x400

    :goto_6
    or-int/2addr v1, v5

    goto :goto_7

    :cond_b
    move-object/from16 v4, p3

    :goto_7
    and-int/lit16 v5, v10, 0x6000

    if-nez v5, :cond_e

    and-int/lit8 v5, v11, 0x10

    if-nez v5, :cond_c

    move-object/from16 v5, p4

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v6, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v5, p4

    :cond_d
    const/16 v6, 0x2000

    :goto_8
    or-int/2addr v1, v6

    goto :goto_9

    :cond_e
    move-object/from16 v5, p4

    :goto_9
    and-int/lit8 v14, v11, 0x20

    const/high16 v6, 0x30000

    if-eqz v14, :cond_f

    or-int/2addr v1, v6

    move/from16 v15, p5

    goto :goto_b

    :cond_f
    and-int/2addr v6, v10

    move/from16 v15, p5

    if-nez v6, :cond_11

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v6

    if-eqz v6, :cond_10

    const/high16 v6, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v6, 0x10000

    :goto_a
    or-int/2addr v1, v6

    :cond_11
    :goto_b
    and-int/lit8 v16, v11, 0x40

    const/high16 v6, 0x180000

    if-eqz v16, :cond_13

    or-int/2addr v1, v6

    :cond_12
    move/from16 v6, p6

    goto :goto_d

    :cond_13
    and-int/2addr v6, v10

    if-nez v6, :cond_12

    move/from16 v6, p6

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v8

    if-eqz v8, :cond_14

    const/high16 v8, 0x100000

    goto :goto_c

    :cond_14
    const/high16 v8, 0x80000

    :goto_c
    or-int/2addr v1, v8

    :goto_d
    const/high16 v8, 0xc00000

    and-int/2addr v8, v10

    if-nez v8, :cond_17

    and-int/lit16 v8, v11, 0x80

    if-nez v8, :cond_15

    move-object/from16 v8, p7

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    const/high16 v9, 0x800000

    goto :goto_e

    :cond_15
    move-object/from16 v8, p7

    :cond_16
    const/high16 v9, 0x400000

    :goto_e
    or-int/2addr v1, v9

    goto :goto_f

    :cond_17
    move-object/from16 v8, p7

    :goto_f
    and-int/lit16 v9, v11, 0x100

    const/high16 v17, 0x6000000

    if-eqz v9, :cond_18

    or-int v1, v1, v17

    move-object/from16 v0, p8

    goto :goto_11

    :cond_18
    and-int v17, v10, v17

    move-object/from16 v0, p8

    if-nez v17, :cond_1a

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    const/high16 v18, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v18, 0x2000000

    :goto_10
    or-int v1, v1, v18

    :cond_1a
    :goto_11
    const v18, 0x2492493

    and-int v0, v1, v18

    move/from16 p9, v2

    const v2, 0x2492492

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1b

    move v0, v3

    goto :goto_12

    :cond_1b
    const/4 v0, 0x0

    :goto_12
    and-int/lit8 v2, v1, 0x1

    invoke-interface {v7, v0, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v10, 0x1

    const v19, -0x1c00001

    const v20, -0xe001

    if-eqz v0, :cond_20

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_13

    :cond_1c
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v11, 0x8

    if-eqz v0, :cond_1d

    and-int/lit16 v1, v1, -0x1c01

    :cond_1d
    and-int/lit8 v0, v11, 0x10

    if-eqz v0, :cond_1e

    and-int v1, v1, v20

    :cond_1e
    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_1f

    and-int v1, v1, v19

    :cond_1f
    move-object/from16 v0, p2

    move v2, v1

    move-object/from16 v16, v5

    move/from16 v18, v6

    move/from16 v17, v15

    const/4 v3, 0x0

    move-object/from16 v1, p8

    move-object v15, v4

    const v4, 0x2ea8ed4e

    goto/16 :goto_18

    :cond_20
    :goto_13
    if-eqz p9, :cond_21

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_14

    :cond_21
    move-object/from16 v0, p2

    :goto_14
    and-int/lit8 v21, v11, 0x8

    const/4 v2, 0x6

    if-eqz v21, :cond_22

    sget-object v4, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v4, v7, v2}, Landroidx/compose/material3/SearchBarDefaults;->getInputFieldShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v4

    and-int/lit16 v1, v1, -0x1c01

    :cond_22
    move/from16 v22, v1

    move-object/from16 v21, v4

    and-int/lit8 v1, v11, 0x10

    if-eqz v1, :cond_23

    sget-object v1, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    const/16 v8, 0xc00

    move v4, v9

    const/4 v9, 0x7

    move v5, v2

    move/from16 v23, v3

    const-wide/16 v2, 0x0

    move/from16 v24, v4

    move/from16 v25, v5

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 p2, v0

    move/from16 v0, v25

    invoke-virtual/range {v1 .. v9}, Landroidx/compose/material3/SearchBarDefaults;->colors-Klgx-Pg(JJLandroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SearchBarColors;

    move-result-object v1

    and-int v22, v22, v20

    move-object v5, v1

    goto :goto_15

    :cond_23
    move-object/from16 p2, v0

    move v0, v2

    move/from16 v24, v9

    :goto_15
    if-eqz v14, :cond_24

    sget-object v1, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v1}, Landroidx/compose/material3/SearchBarDefaults;->getTonalElevation-D9Ej5fM()F

    move-result v1

    move v15, v1

    :cond_24
    if-eqz v16, :cond_25

    sget-object v1, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v1}, Landroidx/compose/material3/SearchBarDefaults;->getShadowElevation-D9Ej5fM()F

    move-result v1

    goto :goto_16

    :cond_25
    move/from16 v1, p6

    :goto_16
    and-int/lit16 v2, v11, 0x80

    if-eqz v2, :cond_26

    sget-object v2, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v2, v7, v0}, Landroidx/compose/material3/SearchBarDefaults;->getWindowInsets(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v0

    and-int v2, v22, v19

    move/from16 v22, v2

    goto :goto_17

    :cond_26
    move-object/from16 v0, p7

    :goto_17
    move-object v8, v0

    move/from16 v18, v1

    move-object/from16 v16, v5

    move/from16 v17, v15

    move-object/from16 v15, v21

    move/from16 v2, v22

    if-eqz v24, :cond_27

    const/4 v1, 0x0

    const/4 v3, 0x0

    const v4, 0x2ea8ed4e

    move-object/from16 v0, p2

    goto :goto_18

    :cond_27
    const/4 v3, 0x0

    const v4, 0x2ea8ed4e

    move-object/from16 v0, p2

    move-object/from16 v1, p8

    :goto_18
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v5, -0x1

    const-string v6, "androidx.compose.material3.TopSearchBar (SearchBar.kt:292)"

    invoke-static {v4, v2, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_28
    if-eqz v1, :cond_29

    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-interface {v1, v4}, Landroidx/compose/material3/SearchBarScrollBehavior;->searchBarScrollBehavior(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    if-nez v4, :cond_2a

    :cond_29
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :cond_2a
    invoke-interface {v0, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v4, v8}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget v5, Landroidx/compose/material3/SearchBarKt;->SearchBarAsTopBarPadding:F

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    invoke-static {v4, v5, v9, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v6, v3, v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentWidth$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    const v3, 0x3ffc7e

    and-int v20, v2, v3

    const/16 v21, 0x0

    move-object/from16 v19, v7

    invoke-static/range {v12 .. v21}, Landroidx/compose/material3/SearchBarKt;->SearchBar-nbWgWpA(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2b
    move-object v3, v0

    move-object v9, v1

    move-object/from16 v19, v7

    move-object v4, v15

    move-object/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    goto :goto_19

    :cond_2c
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v19, v7

    move v6, v15

    move/from16 v7, p6

    :goto_19
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_2d

    new-instance v0, Lxj7;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v11}, Lxj7;-><init>(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/SearchBarScrollBehavior;II)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_2d
    return-void
.end method

.method private static final TopSearchBar_qKj4JfE$lambda$5(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/SearchBarScrollBehavior;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 13

    or-int/lit8 v0, p9, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v12, p10

    move-object/from16 v10, p11

    invoke-static/range {v1 .. v12}, Landroidx/compose/material3/SearchBarKt;->TopSearchBar-qKj4JfE(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/SearchBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic a(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLdm3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p10}, Landroidx/compose/material3/SearchBarKt;->DockedSearchBarLayout_nbWgWpA$lambda$52(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLdm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$DetectClickFromInteractionSource(Landroidx/compose/foundation/interaction/InteractionSource;Lll3;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/SearchBarKt;->DetectClickFromInteractionSource(Landroidx/compose/foundation/interaction/InteractionSource;Lll3;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$DockedSearchBarLayout-nbWgWpA(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLdm3;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    invoke-static/range {p0 .. p9}, Landroidx/compose/material3/SearchBarKt;->DockedSearchBarLayout-nbWgWpA(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLdm3;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$FullScreenSearchBarLayout-EQC0FA8(Landroidx/compose/material3/SearchBarState;Landroidx/compose/material3/internal/PredictiveBackState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    invoke-static/range {p0 .. p11}, Landroidx/compose/material3/SearchBarKt;->FullScreenSearchBarLayout-EQC0FA8(Landroidx/compose/material3/SearchBarState;Landroidx/compose/material3/internal/PredictiveBackState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$calculatePredictiveBackMultiplier(Landroidx/activity/BackEventCompat;FF)F
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/SearchBarKt;->calculatePredictiveBackMultiplier(Landroidx/activity/BackEventCompat;FF)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$calculatePredictiveBackOffsetX-rOvwMX4(JILandroidx/activity/BackEventCompat;Landroidx/compose/ui/unit/LayoutDirection;FF)I
    .locals 0

    invoke-static/range {p0 .. p6}, Landroidx/compose/material3/SearchBarKt;->calculatePredictiveBackOffsetX-rOvwMX4(JILandroidx/activity/BackEventCompat;Landroidx/compose/ui/unit/LayoutDirection;FF)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$calculatePredictiveBackOffsetY-dzo92Q0(JILandroidx/activity/BackEventCompat;Landroidx/activity/BackEventCompat;IIF)I
    .locals 0

    invoke-static/range {p0 .. p7}, Landroidx/compose/material3/SearchBarKt;->calculatePredictiveBackOffsetY-dzo92Q0(JILandroidx/activity/BackEventCompat;Landroidx/activity/BackEventCompat;IIF)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getAnimationEnterFloatSpec$p()Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 1

    sget-object v0, Landroidx/compose/material3/SearchBarKt;->AnimationEnterFloatSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    return-object v0
.end method

.method public static final synthetic access$getAnimationExitFloatSpec$p()Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 1

    sget-object v0, Landroidx/compose/material3/SearchBarKt;->AnimationExitFloatSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    return-object v0
.end method

.method public static final synthetic access$getAnimationPredictiveBackExitFloatSpec$p()Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 1

    sget-object v0, Landroidx/compose/material3/SearchBarKt;->AnimationPredictiveBackExitFloatSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    return-object v0
.end method

.method public static final synthetic access$getCollapsedBounds(Landroidx/compose/material3/SearchBarState;)Landroidx/compose/ui/unit/IntRect;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/SearchBarKt;->getCollapsedBounds(Landroidx/compose/material3/SearchBarState;)Landroidx/compose/ui/unit/IntRect;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDockedEnterTransition$p()Landroidx/compose/animation/EnterTransition;
    .locals 1

    sget-object v0, Landroidx/compose/material3/SearchBarKt;->DockedEnterTransition:Landroidx/compose/animation/EnterTransition;

    return-object v0
.end method

.method public static final synthetic access$getDockedExitTransition$p()Landroidx/compose/animation/ExitTransition;
    .locals 1

    sget-object v0, Landroidx/compose/material3/SearchBarKt;->DockedExitTransition:Landroidx/compose/animation/ExitTransition;

    return-object v0
.end method

.method public static final synthetic access$getSearchBarIconOffsetX$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/SearchBarKt;->SearchBarIconOffsetX:F

    return v0
.end method

.method public static final synthetic access$getSearchBarMaxWidth$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/SearchBarKt;->SearchBarMaxWidth:F

    return v0
.end method

.method public static final synthetic access$getSearchBarPredictiveBackMaxOffsetY$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/SearchBarKt;->SearchBarPredictiveBackMaxOffsetY:F

    return v0
.end method

.method public static final synthetic access$getSearchBarPredictiveBackMinMargin$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/SearchBarKt;->SearchBarPredictiveBackMinMargin:F

    return v0
.end method

.method public static final synthetic access$getUnspecifiedTextFieldColors$p()Landroidx/compose/material3/TextFieldColors;
    .locals 1

    sget-object v0, Landroidx/compose/material3/SearchBarKt;->UnspecifiedTextFieldColors:Landroidx/compose/material3/TextFieldColors;

    return-object v0
.end method

.method public static final synthetic access$isExpanded(Landroidx/compose/material3/SearchBarState;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/SearchBarKt;->isExpanded(Landroidx/compose/material3/SearchBarState;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$transform(Landroidx/compose/material3/internal/BackEventProgress$InProgress;)F
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/SearchBarKt;->transform(Landroidx/compose/material3/internal/BackEventProgress$InProgress;)F

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLbm3;Landroidx/compose/ui/window/DialogProperties;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p13}, Landroidx/compose/material3/SearchBarKt;->ExpandedFullScreenSearchBar__UtchM0$lambda$6(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLbm3;Landroidx/compose/ui/window/DialogProperties;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/compose/foundation/interaction/InteractionSource;Lll3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material3/SearchBarKt;->DetectClickFromInteractionSource$lambda$73(Landroidx/compose/foundation/interaction/InteractionSource;Lll3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final calculatePredictiveBackMultiplier(Landroidx/activity/BackEventCompat;FF)F
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_1
    cmpg-float p0, p2, v0

    if-gtz p0, :cond_2

    return v0

    :cond_2
    div-float/2addr p1, p2

    return p1
.end method

.method private static final calculatePredictiveBackOffsetX-rOvwMX4(JILandroidx/activity/BackEventCompat;Landroidx/compose/ui/unit/LayoutDirection;FF)I
    .locals 3

    if-eqz p3, :cond_3

    const/4 v0, 0x0

    cmpg-float v0, p6, v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Landroidx/activity/BackEventCompat;->getSwipeEdge()I

    move-result p3

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-nez p3, :cond_1

    move p3, v1

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p4, v2, :cond_2

    move v0, v1

    :cond_2
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p0

    int-to-float p0, p0

    const p1, 0x3d4ccccd    # 0.05f

    mul-float/2addr p0, p1

    int-to-float p1, p2

    sub-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p5

    mul-float/2addr p1, p0

    mul-float/2addr p1, p6

    int-to-float p0, p3

    mul-float/2addr p1, p0

    int-to-float p0, v0

    mul-float/2addr p1, p0

    invoke-static {p1}, Lw65;->b(F)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private static final calculatePredictiveBackOffsetY-dzo92Q0(JILandroidx/activity/BackEventCompat;Landroidx/activity/BackEventCompat;IIF)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-eqz p3, :cond_1

    const/4 v1, 0x0

    cmpg-float v1, p7, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v1

    sub-int/2addr v1, p5

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, p6}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p3}, Landroidx/activity/BackEventCompat;->getTouchY()F

    move-result p3

    invoke-virtual {p4}, Landroidx/activity/BackEventCompat;->getTouchY()F

    move-result p4

    sub-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p4, p0

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result p0

    invoke-static {v0, p2, p4}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p7

    mul-float/2addr p1, p0

    invoke-static {p1}, Lw65;->b(F)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic d(Landroidx/compose/animation/core/Animatable;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/SearchBarKt;->SearchBarImpl_j1jLAyQ$lambda$37$lambda$36(Landroidx/compose/animation/core/Animatable;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lbm3;ZLnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLdm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p12}, Landroidx/compose/material3/SearchBarKt;->DockedSearchBar_EQC0FA8$lambda$25(Lbm3;ZLnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLdm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/ui/window/PopupProperties;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p12}, Landroidx/compose/material3/SearchBarKt;->ExpandedDockedSearchBar_qKj4JfE$lambda$14(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/ui/window/PopupProperties;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p10}, Landroidx/compose/material3/SearchBarKt;->SearchBar_nbWgWpA$lambda$2(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final getCollapsedBounds(Landroidx/compose/material3/SearchBarState;)Landroidx/compose/ui/unit/IntRect;
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/material3/SearchBarState;->getCollapsedCoords()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide v0

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntRectKt;->IntRect-VbeCjmY(JJ)Landroidx/compose/ui/unit/IntRect;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Landroidx/compose/ui/unit/IntRect;->Companion:Landroidx/compose/ui/unit/IntRect$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect$Companion;->getZero()Landroidx/compose/ui/unit/IntRect;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic getCollapsedBounds$annotations(Landroidx/compose/material3/SearchBarState;)V
    .locals 0

    return-void
.end method

.method public static final getDockedExpandedTableMinHeight()F
    .locals 1

    sget v0, Landroidx/compose/material3/SearchBarKt;->DockedExpandedTableMinHeight:F

    return v0
.end method

.method public static final getSearchBarAsTopBarPadding()F
    .locals 1

    sget v0, Landroidx/compose/material3/SearchBarKt;->SearchBarAsTopBarPadding:F

    return v0
.end method

.method private static synthetic getSearchBarCornerRadius$annotations()V
    .locals 0

    return-void
.end method

.method public static final getSearchBarMinWidth()F
    .locals 1

    sget v0, Landroidx/compose/material3/SearchBarKt;->SearchBarMinWidth:F

    return v0
.end method

.method public static final getSearchBarVerticalPadding()F
    .locals 1

    sget v0, Landroidx/compose/material3/SearchBarKt;->SearchBarVerticalPadding:F

    return v0
.end method

.method public static synthetic h(Landroidx/compose/material3/internal/MutableWindowInsets;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/SearchBarKt;->FullScreenSearchBarLayout_EQC0FA8$lambda$65$lambda$64(Landroidx/compose/material3/internal/MutableWindowInsets;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ly22;Landroidx/compose/material3/SearchBarState;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/SearchBarKt;->DockedSearchBarLayout_nbWgWpA$lambda$51$lambda$50(Ly22;Landroidx/compose/material3/SearchBarState;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final isExpanded(Landroidx/compose/material3/SearchBarState;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/material3/SearchBarState;->getCurrentValue()Landroidx/compose/material3/SearchBarValue;

    move-result-object p0

    sget-object v0, Landroidx/compose/material3/SearchBarValue;->Expanded:Landroidx/compose/material3/SearchBarValue;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic isExpanded$annotations(Landroidx/compose/material3/SearchBarState;)V
    .locals 0

    return-void
.end method

.method public static synthetic j(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLbm3;Landroidx/compose/ui/window/DialogProperties;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p13}, Landroidx/compose/material3/SearchBarKt;->ExpandedFullScreenSearchBar__UtchM0$lambda$9(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLbm3;Landroidx/compose/ui/window/DialogProperties;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p16}, Landroidx/compose/material3/SearchBarKt;->SearchBarImpl_j1jLAyQ$lambda$39(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;Lbm3;Lbm3;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p11}, Landroidx/compose/material3/SearchBarKt;->SearchBarLayout$lambda$49(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;Lbm3;Lbm3;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Landroidx/compose/ui/unit/Density;Landroidx/compose/animation/core/Animatable;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Size;Landroidx/compose/ui/unit/LayoutDirection;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material3/SearchBarKt;->SearchBarImpl_j1jLAyQ$lambda$35$lambda$34(Landroidx/compose/ui/unit/Density;Landroidx/compose/animation/core/Animatable;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Size;Landroidx/compose/ui/unit/LayoutDirection;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Landroidx/compose/material3/SearchBarState;Landroidx/compose/material3/internal/PredictiveBackState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;ILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p12}, Landroidx/compose/material3/SearchBarKt;->FullScreenSearchBarLayout_EQC0FA8$lambda$70(Landroidx/compose/material3/SearchBarState;Landroidx/compose/material3/internal/PredictiveBackState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/ui/window/PopupProperties;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p12}, Landroidx/compose/material3/SearchBarKt;->ExpandedDockedSearchBar_qKj4JfE$lambda$10(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/ui/window/PopupProperties;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Ljava/lang/String;Lnl3;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p21}, Landroidx/compose/material3/SearchBarKt;->SearchBar_WuY5d9Q$lambda$28(Ljava/lang/String;Lnl3;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Landroidx/compose/material3/internal/MutableWindowInsets;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/SearchBarKt;->SearchBarLayout$lambda$42$lambda$41(Landroidx/compose/material3/internal/MutableWindowInsets;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Ly22;Landroidx/compose/material3/SearchBarState;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/SearchBarKt;->ExpandedFullScreenSearchBar__UtchM0$lambda$8$lambda$7(Ly22;Landroidx/compose/material3/SearchBarState;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final rememberSearchBarState(Landroidx/compose/material3/SearchBarValue;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SearchBarState;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SearchBarValue;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material3/SearchBarState;"
        }
    .end annotation

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    sget-object p0, Landroidx/compose/material3/SearchBarValue;->Collapsed:Landroidx/compose/material3/SearchBarValue;

    :cond_0
    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x6

    if-eqz v0, :cond_1

    sget-object p1, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->SlowSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {p1, p3, v1}, Landroidx/compose/material3/MotionSchemeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object p1

    :cond_1
    const/4 v0, 0x4

    and-int/2addr p5, v0

    if-eqz p5, :cond_2

    sget-object p2, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {p2, p3, v1}, Landroidx/compose/material3/MotionSchemeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object p2

    :cond_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p5

    if-eqz p5, :cond_3

    const/4 p5, -0x1

    const-string v2, "androidx.compose.material3.rememberSearchBarState (SearchBar.kt:819)"

    const v3, -0x208b8e33

    invoke-static {v3, p4, p5, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p5

    sget-object v2, Landroidx/compose/material3/SearchBarState;->Companion:Landroidx/compose/material3/SearchBarState$Companion;

    invoke-virtual {v2, p1, p2}, Landroidx/compose/material3/SearchBarState$Companion;->Saver(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v2

    and-int/lit8 v3, p4, 0xe

    xor-int/2addr v3, v1

    const/4 v4, 0x0

    if-le v3, v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-interface {p3, v3}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    and-int/2addr p4, v1

    if-ne p4, v0, :cond_6

    :cond_5
    const/4 p4, 0x1

    goto :goto_0

    :cond_6
    move p4, v4

    :goto_0
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p4, v0

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p4, v0

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p4, :cond_7

    sget-object p4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p4

    if-ne v0, p4, :cond_8

    :cond_7
    new-instance v0, Ldk7;

    invoke-direct {v0, p0, p1, p2}, Ldk7;-><init>(Landroidx/compose/material3/SearchBarValue;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;)V

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_8
    check-cast v0, Lll3;

    invoke-static {p5, v2, v0, p3, v4}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lll3;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/SearchBarState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_9
    return-object p0
.end method

.method private static final rememberSearchBarState$lambda$27$lambda$26(Landroidx/compose/material3/SearchBarValue;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;)Landroidx/compose/material3/SearchBarState;
    .locals 1

    new-instance v0, Landroidx/compose/material3/SearchBarState;

    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/material3/SearchBarState;-><init>(Landroidx/compose/material3/SearchBarValue;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;)V

    return-object v0
.end method

.method public static synthetic s(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/SearchBarScrollBehavior;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p12}, Landroidx/compose/material3/SearchBarKt;->TopSearchBar_qKj4JfE$lambda$5(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/SearchBarScrollBehavior;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Landroidx/compose/animation/core/Animatable;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/SearchBarKt;->SearchBarImpl_j1jLAyQ$lambda$31$lambda$30(Landroidx/compose/animation/core/Animatable;)Z

    move-result p0

    return p0
.end method

.method private static final transform(Landroidx/compose/material3/internal/BackEventProgress$InProgress;)F
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Landroidx/compose/material3/internal/PredictiveBack;->INSTANCE:Landroidx/compose/material3/internal/PredictiveBack;

    invoke-virtual {p0}, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->getProgress()F

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/compose/material3/internal/PredictiveBack;->transform$material3(F)F

    move-result p0

    return p0
.end method

.method public static synthetic u(Ly22;Landroidx/compose/material3/SearchBarState;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/SearchBarKt;->ExpandedDockedSearchBar_qKj4JfE$lambda$13$lambda$12(Ly22;Landroidx/compose/material3/SearchBarState;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Landroidx/compose/material3/SearchBarValue;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;)Landroidx/compose/material3/SearchBarState;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/SearchBarKt;->rememberSearchBarState$lambda$27$lambda$26(Landroidx/compose/material3/SearchBarValue;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;)Landroidx/compose/material3/SearchBarState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Ljava/lang/String;Lnl3;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p20}, Landroidx/compose/material3/SearchBarKt;->DockedSearchBar_eWTbjVg$lambda$29(Ljava/lang/String;Lnl3;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Landroidx/compose/material3/internal/PredictiveBackState;)Landroidx/compose/material3/internal/BackEventProgress;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/SearchBarKt;->FullScreenSearchBarLayout_EQC0FA8$lambda$54$lambda$53(Landroidx/compose/material3/internal/PredictiveBackState;)Landroidx/compose/material3/internal/BackEventProgress;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/unit/Density;Landroidx/compose/material3/SearchBarState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Size;Landroidx/compose/ui/unit/LayoutDirection;)Lj59;
    .locals 0

    invoke-static/range {p0 .. p7}, Landroidx/compose/material3/SearchBarKt;->FullScreenSearchBarLayout_EQC0FA8$lambda$62$lambda$61(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/unit/Density;Landroidx/compose/material3/SearchBarState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Size;Landroidx/compose/ui/unit/LayoutDirection;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lbm3;ZLnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p13}, Landroidx/compose/material3/SearchBarKt;->SearchBar_Y92LkZI$lambda$22(Lbm3;ZLnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
