.class public final Landroidx/compose/material3/SearchBarDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field private static final Elevation:F

.field public static final INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

.field private static final InputFieldHeight:F

.field private static final ShadowElevation:F

.field private static final TonalElevation:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/SearchBarDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/SearchBarDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    sget-object v0, Landroidx/compose/material3/tokens/ElevationTokens;->INSTANCE:Landroidx/compose/material3/tokens/ElevationTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel0-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/SearchBarDefaults;->TonalElevation:F

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel0-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/SearchBarDefaults;->ShadowElevation:F

    sput v1, Landroidx/compose/material3/SearchBarDefaults;->Elevation:F

    sget-object v0, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/SearchBarTokens;->getContainerHeight-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/SearchBarDefaults;->InputFieldHeight:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final InputField$lambda$11$lambda$10(Ljava/lang/String;Landroidx/compose/material3/SearchBarState;Ljava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;
    .locals 0

    invoke-static {p3, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setContentDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/compose/material3/SearchBarKt;->access$isExpanded(Landroidx/compose/material3/SearchBarState;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p3, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setStateDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final InputField$lambda$13$lambda$12(Lnl3;Landroidx/compose/foundation/text/input/TextFieldState;Lll3;)V
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/TextFieldState;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final InputField$lambda$17$lambda$16(Landroidx/compose/material3/SearchBarState;Ly22;)Lj59;
    .locals 2

    invoke-static {p0}, Landroidx/compose/material3/SearchBarKt;->access$isExpanded(Landroidx/compose/material3/SearchBarState;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/material3/SearchBarDefaults$InputField$8$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/material3/SearchBarDefaults$InputField$8$1$1;-><init>(Landroidx/compose/material3/SearchBarState;Le02;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final InputField$lambda$20(Landroidx/compose/material3/SearchBarDefaults;Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/material3/SearchBarState;Lnl3;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 24

    or-int/lit8 v0, p19, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v21

    invoke-static/range {p20 .. p20}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move/from16 v23, p21

    move-object/from16 v20, p22

    invoke-virtual/range {v1 .. v23}, Landroidx/compose/material3/SearchBarDefaults;->InputField(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/material3/SearchBarState;Lnl3;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final InputField$lambda$25$lambda$24(Lnl3;Landroidx/compose/ui/focus/FocusState;)Lj59;
    .locals 0

    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final InputField$lambda$27$lambda$26(Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;
    .locals 0

    invoke-static {p3, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setContentDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {p3, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setStateDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final InputField$lambda$29$lambda$28(Lnl3;Landroidx/compose/foundation/text/input/TextFieldState;Lll3;)V
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/TextFieldState;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final InputField$lambda$33(Landroidx/compose/material3/SearchBarDefaults;Landroidx/compose/foundation/text/input/TextFieldState;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 25

    or-int/lit8 v0, p20, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v22

    invoke-static/range {p21 .. p21}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move/from16 v24, p22

    move-object/from16 v21, p23

    invoke-virtual/range {v1 .. v24}, Landroidx/compose/material3/SearchBarDefaults;->InputField(Landroidx/compose/foundation/text/input/TextFieldState;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final InputField$lambda$38$lambda$37(Lnl3;Landroidx/compose/ui/focus/FocusState;)Lj59;
    .locals 0

    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final InputField$lambda$40$lambda$39(Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;
    .locals 0

    invoke-static {p3, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setContentDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {p3, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setStateDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final InputField$lambda$42$lambda$41(Lnl3;Ljava/lang/String;Landroidx/compose/foundation/text/KeyboardActionScope;)Lj59;
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final InputField$lambda$44(Landroidx/compose/material3/SearchBarDefaults;Ljava/lang/String;Lnl3;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 18

    or-int/lit8 v0, p13, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v15

    invoke-static/range {p14 .. p14}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v17, p15

    move-object/from16 v14, p16

    invoke-virtual/range {v1 .. v17}, Landroidx/compose/material3/SearchBarDefaults;->InputField(Ljava/lang/String;Lnl3;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final InputField$lambda$5(Landroidx/compose/runtime/State;)Z
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

.method private static final InputField$lambda$9$lambda$8(ZLy22;Landroidx/compose/material3/SearchBarState;Landroidx/compose/ui/focus/FocusState;)Lj59;
    .locals 0

    invoke-interface {p3}, Landroidx/compose/ui/focus/FocusState;->isFocused()Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p0, :cond_0

    new-instance p0, Landroidx/compose/material3/SearchBarDefaults$InputField$2$1$1;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3}, Landroidx/compose/material3/SearchBarDefaults$InputField$2$1$1;-><init>(Landroidx/compose/material3/SearchBarState;Le02;)V

    const/4 p2, 0x3

    invoke-static {p1, p3, p3, p0, p2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic a(Ly22;Landroidx/compose/material3/SearchBarState;)Lj59;
    .locals 0

    invoke-static {p1, p0}, Landroidx/compose/material3/SearchBarDefaults;->InputField$lambda$17$lambda$16(Landroidx/compose/material3/SearchBarState;Ly22;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$InputField$lambda$5(Landroidx/compose/runtime/State;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/SearchBarDefaults;->InputField$lambda$5(Landroidx/compose/runtime/State;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lnl3;Landroidx/compose/ui/focus/FocusState;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/SearchBarDefaults;->InputField$lambda$38$lambda$37(Lnl3;Landroidx/compose/ui/focus/FocusState;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/SearchBarDefaults;->InputField$lambda$40$lambda$39(Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lnl3;Ljava/lang/String;Landroidx/compose/foundation/text/KeyboardActionScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/SearchBarDefaults;->InputField$lambda$42$lambda$41(Lnl3;Ljava/lang/String;Landroidx/compose/foundation/text/KeyboardActionScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroidx/compose/material3/SearchBarDefaults;Landroidx/compose/foundation/text/input/TextFieldState;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p24}, Landroidx/compose/material3/SearchBarDefaults;->InputField$lambda$33(Landroidx/compose/material3/SearchBarDefaults;Landroidx/compose/foundation/text/input/TextFieldState;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final enterAlwaysSearchBarScrollBehavior$lambda$1$lambda$0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static final enterAlwaysSearchBarScrollBehavior$lambda$3$lambda$2(FFLll3;ZLandroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;)Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;
    .locals 7

    new-instance v0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;-><init>(FFLll3;ZLandroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;)V

    return-object v0
.end method

.method public static synthetic f(Lnl3;Landroidx/compose/foundation/text/input/TextFieldState;Lll3;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/SearchBarDefaults;->InputField$lambda$29$lambda$28(Lnl3;Landroidx/compose/foundation/text/input/TextFieldState;Lll3;)V

    return-void
.end method

.method public static synthetic g(Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/SearchBarDefaults;->InputField$lambda$27$lambda$26(Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getElevation-D9Ej5fM$annotations()V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    return-void
.end method

.method public static synthetic h(Ljava/lang/String;Landroidx/compose/material3/SearchBarState;Ljava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/SearchBarDefaults;->InputField$lambda$11$lambda$10(Ljava/lang/String;Landroidx/compose/material3/SearchBarState;Ljava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i()Z
    .locals 1

    invoke-static {}, Landroidx/compose/material3/SearchBarDefaults;->enterAlwaysSearchBarScrollBehavior$lambda$1$lambda$0()Z

    move-result v0

    return v0
.end method

.method public static synthetic j(Landroidx/compose/material3/SearchBarDefaults;Ljava/lang/String;Lnl3;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p17}, Landroidx/compose/material3/SearchBarDefaults;->InputField$lambda$44(Landroidx/compose/material3/SearchBarDefaults;Ljava/lang/String;Lnl3;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(FFLll3;ZLandroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;)Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/SearchBarDefaults;->enterAlwaysSearchBarScrollBehavior$lambda$3$lambda$2(FFLll3;ZLandroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;)Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lnl3;Landroidx/compose/ui/focus/FocusState;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/SearchBarDefaults;->InputField$lambda$25$lambda$24(Lnl3;Landroidx/compose/ui/focus/FocusState;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Landroidx/compose/material3/SearchBarDefaults;Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/material3/SearchBarState;Lnl3;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p23}, Landroidx/compose/material3/SearchBarDefaults;->InputField$lambda$20(Landroidx/compose/material3/SearchBarDefaults;Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/material3/SearchBarState;Lnl3;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lnl3;Landroidx/compose/foundation/text/input/TextFieldState;Lll3;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/SearchBarDefaults;->InputField$lambda$13$lambda$12(Lnl3;Landroidx/compose/foundation/text/input/TextFieldState;Lll3;)V

    return-void
.end method

.method public static synthetic o(ZLy22;Landroidx/compose/material3/SearchBarState;Landroidx/compose/ui/focus/FocusState;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/SearchBarDefaults;->InputField$lambda$9$lambda$8(ZLy22;Landroidx/compose/material3/SearchBarState;Landroidx/compose/ui/focus/FocusState;)Lj59;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final InputField(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/material3/SearchBarState;Lnl3;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V
    .locals 81
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/input/TextFieldState;",
            "Landroidx/compose/material3/SearchBarState;",
            "Lnl3<",
            "-",
            "Ljava/lang/String;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "ZZ",
            "Landroidx/compose/ui/text/TextStyle;",
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
            "Landroidx/compose/foundation/text/input/InputTransformation;",
            "Landroidx/compose/foundation/text/input/OutputTransformation;",
            "Landroidx/compose/foundation/ScrollState;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/TextFieldColors;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p20

    move/from16 v5, p21

    move/from16 v6, p22

    const v7, 0x2d41c906

    move-object/from16 v8, p19

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    and-int/lit8 v8, v6, 0x1

    if-eqz v8, :cond_0

    or-int/lit8 v8, v4, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v8, v4, 0x6

    if-nez v8, :cond_2

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x4

    goto :goto_0

    :cond_1
    const/4 v8, 0x2

    :goto_0
    or-int/2addr v8, v4

    goto :goto_1

    :cond_2
    move v8, v4

    :goto_1
    and-int/lit8 v11, v6, 0x2

    if-eqz v11, :cond_3

    or-int/lit8 v8, v8, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v11, v4, 0x30

    if-nez v11, :cond_5

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v11, 0x20

    goto :goto_2

    :cond_4
    const/16 v11, 0x10

    :goto_2
    or-int/2addr v8, v11

    :cond_5
    :goto_3
    and-int/lit8 v11, v6, 0x4

    if-eqz v11, :cond_6

    or-int/lit16 v8, v8, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v11, v4, 0x180

    if-nez v11, :cond_8

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x100

    goto :goto_4

    :cond_7
    const/16 v11, 0x80

    :goto_4
    or-int/2addr v8, v11

    :cond_8
    :goto_5
    and-int/lit8 v11, v6, 0x8

    const/16 v16, 0x400

    const/16 v17, 0x800

    if-eqz v11, :cond_a

    or-int/lit16 v8, v8, 0xc00

    :cond_9
    move-object/from16 v2, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v2, v4, 0xc00

    if-nez v2, :cond_9

    move-object/from16 v2, p4

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    move/from16 v18, v17

    goto :goto_6

    :cond_b
    move/from16 v18, v16

    :goto_6
    or-int v8, v8, v18

    :goto_7
    and-int/lit8 v18, v6, 0x10

    const/16 v19, 0x2000

    const/16 v20, 0x4000

    if-eqz v18, :cond_d

    or-int/lit16 v8, v8, 0x6000

    :cond_c
    move/from16 v7, p5

    goto :goto_9

    :cond_d
    and-int/lit16 v7, v4, 0x6000

    if-nez v7, :cond_c

    move/from16 v7, p5

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v22

    if-eqz v22, :cond_e

    move/from16 v22, v20

    goto :goto_8

    :cond_e
    move/from16 v22, v19

    :goto_8
    or-int v8, v8, v22

    :goto_9
    and-int/lit8 v22, v6, 0x20

    const/high16 v23, 0x20000

    const/high16 v24, 0x30000

    const/high16 v25, 0x10000

    if-eqz v22, :cond_f

    or-int v8, v8, v24

    move/from16 v9, p6

    goto :goto_b

    :cond_f
    and-int v26, v4, v24

    move/from16 v9, p6

    if-nez v26, :cond_11

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v27

    if-eqz v27, :cond_10

    move/from16 v27, v23

    goto :goto_a

    :cond_10
    move/from16 v27, v25

    :goto_a
    or-int v8, v8, v27

    :cond_11
    :goto_b
    const/high16 v27, 0x180000

    and-int v28, v4, v27

    const/high16 v29, 0x80000

    const/high16 v30, 0x100000

    if-nez v28, :cond_13

    and-int/lit8 v28, v6, 0x40

    move-object/from16 v10, p7

    if-nez v28, :cond_12

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_12

    move/from16 v31, v30

    goto :goto_c

    :cond_12
    move/from16 v31, v29

    :goto_c
    or-int v8, v8, v31

    goto :goto_d

    :cond_13
    move-object/from16 v10, p7

    :goto_d
    and-int/lit16 v12, v6, 0x80

    const/high16 v32, 0x400000

    const/high16 v33, 0x800000

    const/high16 v34, 0xc00000

    if-eqz v12, :cond_14

    or-int v8, v8, v34

    move-object/from16 v13, p8

    goto :goto_f

    :cond_14
    and-int v35, v4, v34

    move-object/from16 v13, p8

    if-nez v35, :cond_16

    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_15

    move/from16 v36, v33

    goto :goto_e

    :cond_15
    move/from16 v36, v32

    :goto_e
    or-int v8, v8, v36

    :cond_16
    :goto_f
    and-int/lit16 v14, v6, 0x100

    const/high16 v37, 0x2000000

    const/high16 v38, 0x4000000

    const/high16 v39, 0x6000000

    if-eqz v14, :cond_17

    or-int v8, v8, v39

    move-object/from16 v2, p9

    goto :goto_11

    :cond_17
    and-int v40, v4, v39

    move-object/from16 v2, p9

    if-nez v40, :cond_19

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_18

    move/from16 v40, v38

    goto :goto_10

    :cond_18
    move/from16 v40, v37

    :goto_10
    or-int v8, v8, v40

    :cond_19
    :goto_11
    and-int/lit16 v2, v6, 0x200

    const/high16 v40, 0x30000000

    if-eqz v2, :cond_1b

    or-int v8, v8, v40

    :cond_1a
    move/from16 v40, v2

    move-object/from16 v2, p10

    goto :goto_13

    :cond_1b
    and-int v40, v4, v40

    if-nez v40, :cond_1a

    move/from16 v40, v2

    move-object/from16 v2, p10

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1c

    const/high16 v41, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v41, 0x10000000

    :goto_12
    or-int v8, v8, v41

    :goto_13
    and-int/lit16 v2, v6, 0x400

    if-eqz v2, :cond_1d

    or-int/lit8 v26, v5, 0x6

    move/from16 v41, v2

    move-object/from16 v2, p11

    goto :goto_15

    :cond_1d
    and-int/lit8 v41, v5, 0x6

    if-nez v41, :cond_1f

    move/from16 v41, v2

    move-object/from16 v2, p11

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_1e

    const/16 v26, 0x4

    goto :goto_14

    :cond_1e
    const/16 v26, 0x2

    :goto_14
    or-int v26, v5, v26

    goto :goto_15

    :cond_1f
    move/from16 v41, v2

    move-object/from16 v2, p11

    move/from16 v26, v5

    :goto_15
    and-int/lit16 v2, v6, 0x800

    if-eqz v2, :cond_20

    or-int/lit8 v26, v26, 0x30

    move/from16 v42, v2

    :goto_16
    move/from16 v2, v26

    goto :goto_18

    :cond_20
    and-int/lit8 v42, v5, 0x30

    if-nez v42, :cond_22

    move/from16 v42, v2

    move-object/from16 v2, p12

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_21

    const/16 v31, 0x20

    goto :goto_17

    :cond_21
    const/16 v31, 0x10

    :goto_17
    or-int v26, v26, v31

    goto :goto_16

    :cond_22
    move/from16 v42, v2

    move-object/from16 v2, p12

    goto :goto_16

    :goto_18
    and-int/lit16 v3, v6, 0x1000

    if-eqz v3, :cond_23

    or-int/lit16 v2, v2, 0x180

    goto :goto_1b

    :cond_23
    move/from16 v26, v2

    and-int/lit16 v2, v5, 0x180

    if-nez v2, :cond_25

    move-object/from16 v2, p13

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_24

    const/16 v36, 0x100

    goto :goto_19

    :cond_24
    const/16 v36, 0x80

    :goto_19
    or-int v26, v26, v36

    :goto_1a
    move/from16 v2, v26

    goto :goto_1b

    :cond_25
    move-object/from16 v2, p13

    goto :goto_1a

    :goto_1b
    move/from16 v26, v3

    and-int/lit16 v3, v6, 0x2000

    if-eqz v3, :cond_27

    or-int/lit16 v2, v2, 0xc00

    move/from16 v31, v2

    :cond_26
    move-object/from16 v2, p14

    goto :goto_1c

    :cond_27
    move/from16 v31, v2

    and-int/lit16 v2, v5, 0xc00

    if-nez v2, :cond_26

    move-object/from16 v2, p14

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_28

    move/from16 v16, v17

    :cond_28
    or-int v16, v31, v16

    move/from16 v31, v16

    :goto_1c
    and-int/lit16 v2, v5, 0x6000

    if-nez v2, :cond_2b

    and-int/lit16 v2, v6, 0x4000

    if-nez v2, :cond_29

    move-object/from16 v2, p15

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2a

    move/from16 v19, v20

    goto :goto_1d

    :cond_29
    move-object/from16 v2, p15

    :cond_2a
    :goto_1d
    or-int v31, v31, v19

    goto :goto_1e

    :cond_2b
    move-object/from16 v2, p15

    :goto_1e
    and-int v16, v5, v24

    const v17, 0x8000

    if-nez v16, :cond_2d

    and-int v16, v6, v17

    move-object/from16 v2, p16

    if-nez v16, :cond_2c

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2c

    move/from16 v16, v23

    goto :goto_1f

    :cond_2c
    move/from16 v16, v25

    :goto_1f
    or-int v31, v31, v16

    goto :goto_20

    :cond_2d
    move-object/from16 v2, p16

    :goto_20
    and-int v16, v5, v27

    if-nez v16, :cond_2f

    and-int v16, v6, v25

    move-object/from16 v2, p17

    if-nez v16, :cond_2e

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2e

    move/from16 v29, v30

    :cond_2e
    or-int v31, v31, v29

    goto :goto_21

    :cond_2f
    move-object/from16 v2, p17

    :goto_21
    and-int v52, v6, v23

    if-eqz v52, :cond_30

    or-int v31, v31, v34

    move-object/from16 v2, p18

    goto :goto_22

    :cond_30
    and-int v16, v5, v34

    move-object/from16 v2, p18

    if-nez v16, :cond_32

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_31

    move/from16 v32, v33

    :cond_31
    or-int v31, v31, v32

    :cond_32
    :goto_22
    const/high16 v16, 0x40000

    and-int v16, v6, v16

    if-eqz v16, :cond_33

    or-int v31, v31, v39

    goto :goto_23

    :cond_33
    and-int v16, v5, v39

    if-nez v16, :cond_35

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_34

    move/from16 v37, v38

    :cond_34
    or-int v31, v31, v37

    :cond_35
    :goto_23
    const v16, 0x12492493

    and-int v2, v8, v16

    move/from16 v16, v3

    const v3, 0x12492492

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_37

    const v2, 0x2492493

    and-int v2, v31, v2

    const v3, 0x2492492

    if-eq v2, v3, :cond_36

    goto :goto_24

    :cond_36
    move v2, v4

    goto :goto_25

    :cond_37
    :goto_24
    move v2, v5

    :goto_25
    and-int/lit8 v3, v8, 0x1

    invoke-interface {v15, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v2, p20, 0x1

    const v3, -0x70001

    const v19, -0xe001

    const v53, -0x380001

    move/from16 v20, v2

    const/4 v2, 0x0

    if-eqz v20, :cond_3d

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v20

    if-eqz v20, :cond_38

    goto :goto_26

    :cond_38
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v11, v6, 0x40

    if-eqz v11, :cond_39

    and-int v8, v8, v53

    :cond_39
    and-int/lit16 v11, v6, 0x4000

    if-eqz v11, :cond_3a

    and-int v31, v31, v19

    :cond_3a
    and-int v11, v6, v17

    if-eqz v11, :cond_3b

    and-int v31, v31, v3

    :cond_3b
    and-int v3, v6, v25

    if-eqz v3, :cond_3c

    and-int v31, v31, v53

    :cond_3c
    move-object/from16 v1, p4

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v12, p11

    move-object/from16 v64, p13

    move-object/from16 v65, p14

    move-object/from16 v66, p15

    move-object/from16 v6, p16

    move-object/from16 v23, p18

    move v2, v7

    move/from16 v56, v9

    move-object v3, v10

    move-object v9, v13

    move/from16 v10, v31

    const v0, 0x2d41c906

    move-object/from16 v13, p12

    move-object/from16 v7, p17

    goto/16 :goto_37

    :cond_3d
    :goto_26
    if-eqz v11, :cond_3e

    sget-object v11, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v54, v11

    goto :goto_27

    :cond_3e
    move-object/from16 v54, p4

    :goto_27
    if-eqz v18, :cond_3f

    move/from16 v55, v5

    goto :goto_28

    :cond_3f
    move/from16 v55, v7

    :goto_28
    if-eqz v22, :cond_40

    move/from16 v56, v4

    goto :goto_29

    :cond_40
    move/from16 v56, v9

    :goto_29
    and-int/lit8 v7, v6, 0x40

    if-eqz v7, :cond_41

    invoke-static {}, Landroidx/compose/material3/TextKt;->getLocalTextStyle()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v7

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/text/TextStyle;

    and-int v8, v8, v53

    move-object/from16 v57, v7

    :goto_2a
    move/from16 v58, v8

    goto :goto_2b

    :cond_41
    move-object/from16 v57, v10

    goto :goto_2a

    :goto_2b
    if-eqz v12, :cond_42

    move-object/from16 v59, v2

    goto :goto_2c

    :cond_42
    move-object/from16 v59, v13

    :goto_2c
    if-eqz v14, :cond_43

    move-object/from16 v60, v2

    goto :goto_2d

    :cond_43
    move-object/from16 v60, p9

    :goto_2d
    if-eqz v40, :cond_44

    move-object/from16 v61, v2

    goto :goto_2e

    :cond_44
    move-object/from16 v61, p10

    :goto_2e
    if-eqz v41, :cond_45

    move-object/from16 v62, v2

    goto :goto_2f

    :cond_45
    move-object/from16 v62, p11

    :goto_2f
    if-eqz v42, :cond_46

    move-object/from16 v63, v2

    goto :goto_30

    :cond_46
    move-object/from16 v63, p12

    :goto_30
    if-eqz v26, :cond_47

    move-object/from16 v64, v2

    goto :goto_31

    :cond_47
    move-object/from16 v64, p13

    :goto_31
    if-eqz v16, :cond_48

    move-object/from16 v65, v2

    goto :goto_32

    :cond_48
    move-object/from16 v65, p14

    :goto_32
    and-int/lit16 v7, v6, 0x4000

    if-eqz v7, :cond_49

    invoke-static {v4, v15, v4, v5}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v7

    and-int v31, v31, v19

    move-object/from16 v66, v7

    goto :goto_33

    :cond_49
    move-object/from16 v66, p15

    :goto_33
    and-int v7, v6, v17

    if-eqz v7, :cond_4a

    shr-int/lit8 v7, v31, 0x18

    and-int/lit8 v7, v7, 0xe

    invoke-virtual {v1, v15, v7}, Landroidx/compose/material3/SearchBarDefaults;->getInputFieldShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v7

    and-int v31, v31, v3

    move-object/from16 v67, v7

    :goto_34
    move/from16 v68, v31

    goto :goto_35

    :cond_4a
    move-object/from16 v67, p16

    goto :goto_34

    :goto_35
    and-int v3, v6, v25

    if-eqz v3, :cond_4b

    shr-int/lit8 v3, v68, 0xf

    and-int/lit16 v3, v3, 0x1c00

    const v51, 0x7fffff

    move-object v7, v2

    move/from16 v50, v3

    const-wide/16 v2, 0x0

    move v8, v4

    move v9, v5

    const-wide/16 v4, 0x0

    move-object v10, v7

    const-wide/16 v6, 0x0

    move v11, v8

    move v12, v9

    const-wide/16 v8, 0x0

    move-object v13, v10

    const/4 v10, 0x0

    move v14, v11

    move/from16 v16, v12

    const-wide/16 v11, 0x0

    move-object/from16 v17, v13

    move/from16 v18, v14

    const-wide/16 v13, 0x0

    move-object/from16 v47, v15

    move/from16 v19, v16

    const-wide/16 v15, 0x0

    move-object/from16 v20, v17

    move/from16 v22, v18

    const-wide/16 v17, 0x0

    move/from16 v24, v19

    move-object/from16 v23, v20

    const-wide/16 v19, 0x0

    move/from16 v25, v22

    const v26, 0x2d41c906

    const-wide/16 v21, 0x0

    move-object/from16 v27, v23

    move/from16 v29, v24

    const-wide/16 v23, 0x0

    move/from16 v30, v25

    move/from16 v31, v26

    const-wide/16 v25, 0x0

    move-object/from16 v33, v27

    const/16 v32, 0x4

    const-wide/16 v27, 0x0

    move/from16 v36, v29

    move/from16 v34, v30

    const-wide/16 v29, 0x0

    move/from16 v38, v31

    move/from16 v37, v32

    const-wide/16 v31, 0x0

    move-object/from16 v39, v33

    move/from16 v40, v34

    const-wide/16 v33, 0x0

    move/from16 v42, v36

    const/16 v41, 0x20

    const-wide/16 v35, 0x0

    move/from16 v43, v37

    move/from16 v44, v38

    const-wide/16 v37, 0x0

    move-object/from16 v45, v39

    move/from16 v46, v40

    const-wide/16 v39, 0x0

    move/from16 v48, v41

    move/from16 v49, v42

    const-wide/16 v41, 0x0

    move/from16 v69, v43

    move/from16 v70, v44

    const-wide/16 v43, 0x0

    move-object/from16 v71, v45

    move/from16 v72, v46

    const-wide/16 v45, 0x0

    move/from16 v73, v48

    const/16 v48, 0x0

    move/from16 v74, v49

    const/16 v49, 0x0

    move/from16 v0, v70

    invoke-virtual/range {v1 .. v51}, Landroidx/compose/material3/SearchBarDefaults;->inputFieldColors-JVEmHcM(JJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIII)Landroidx/compose/material3/TextFieldColors;

    move-result-object v2

    move-object/from16 v15, v47

    and-int v1, v68, v53

    move/from16 v31, v1

    goto :goto_36

    :cond_4b
    const v0, 0x2d41c906

    move-object/from16 v2, p17

    move/from16 v31, v68

    :goto_36
    if-eqz v52, :cond_4c

    move-object v7, v2

    move/from16 v10, v31

    move-object/from16 v1, v54

    move/from16 v2, v55

    move-object/from16 v3, v57

    move/from16 v8, v58

    move-object/from16 v9, v59

    move-object/from16 v4, v60

    move-object/from16 v5, v61

    move-object/from16 v12, v62

    move-object/from16 v13, v63

    move-object/from16 v6, v67

    const/16 v23, 0x0

    goto :goto_37

    :cond_4c
    move-object/from16 v23, p18

    move-object v7, v2

    move/from16 v10, v31

    move-object/from16 v1, v54

    move/from16 v2, v55

    move-object/from16 v3, v57

    move/from16 v8, v58

    move-object/from16 v9, v59

    move-object/from16 v4, v60

    move-object/from16 v5, v61

    move-object/from16 v12, v62

    move-object/from16 v13, v63

    move-object/from16 v6, v67

    :goto_37
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_4d

    const-string v11, "androidx.compose.material3.SearchBarDefaults.InputField (SearchBar.kt:1310)"

    invoke-static {v0, v8, v10, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4d
    if-nez v23, :cond_4f

    const v0, -0x6570034b

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v0, v11, :cond_4e

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4e
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_38
    const/4 v11, 0x0

    goto :goto_39

    :cond_4f
    const v0, -0x1c0be19e

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 v0, v23

    goto :goto_38

    :goto_39
    invoke-static {v0, v15, v11}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v14

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFocusManager()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v11

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/focus/FocusManager;

    move-object/from16 v16, v0

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalInputModeManager()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/input/InputModeManager;

    invoke-interface {v0}, Landroidx/compose/ui/input/InputModeManager;->getInputMode-aOaMEAU()I

    move-result v0

    sget-object v17, Landroidx/compose/ui/input/InputMode;->Companion:Landroidx/compose/ui/input/InputMode$Companion;

    move-object/from16 p4, v9

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/input/InputMode$Companion;->getTouch-aOaMEAU()I

    move-result v9

    invoke-static {v0, v9}, Landroidx/compose/ui/input/InputMode;->equals-impl0(II)Z

    move-result v0

    sget-object v9, Landroidx/compose/material3/internal/Strings;->Companion:Landroidx/compose/material3/internal/Strings$Companion;

    sget v9, Landroidx/compose/material3/R$string;->m3c_search_bar_search:I

    invoke-static {v9}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result v9

    move-object/from16 p5, v12

    const/4 v12, 0x0

    invoke-static {v9, v15, v12}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    sget v17, Landroidx/compose/material3/R$string;->m3c_suggestions_available:I

    move-object/from16 p6, v13

    invoke-static/range {v17 .. v17}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result v13

    invoke-static {v13, v15, v12}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v17

    const-wide/16 v19, 0x10

    cmp-long v19, v17, v19

    if-eqz v19, :cond_50

    move-wide/from16 v25, v17

    move/from16 v17, v10

    goto :goto_3a

    :cond_50
    move/from16 v17, v10

    invoke-static {v14}, Landroidx/compose/material3/SearchBarDefaults;->InputField$lambda$5(Landroidx/compose/runtime/State;)Z

    move-result v10

    invoke-virtual {v7, v2, v12, v10}, Landroidx/compose/material3/TextFieldColors;->textColor-XeAY9LY$material3(ZZZ)J

    move-result-wide v18

    move-wide/from16 v25, v18

    :goto_3a
    new-instance v24, Landroidx/compose/ui/text/TextStyle;

    const v54, 0xfffffe

    const/16 v55, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const-wide/16 v46, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    invoke-direct/range {v24 .. v55}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILjh2;)V

    move-object/from16 v10, v24

    invoke-virtual {v3, v10}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v24

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    sget-object v25, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v10, v12, :cond_51

    sget-object v10, Lgx2;->b:Lgx2;

    invoke-static {v10, v15}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lo22;Landroidx/compose/runtime/Composer;)Ly22;

    move-result-object v10

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_51
    check-cast v10, Ly22;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v12

    move-object/from16 p7, v3

    and-int/lit8 v3, v8, 0x70

    move/from16 p8, v12

    const/16 v12, 0x20

    if-ne v3, v12, :cond_52

    const/16 v18, 0x1

    goto :goto_3b

    :cond_52
    const/16 v18, 0x0

    :goto_3b
    or-int v18, p8, v18

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    or-int v18, v18, v19

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    or-int v18, v18, v19

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v18, :cond_54

    move/from16 v18, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v12, v2, :cond_53

    goto :goto_3c

    :cond_53
    move-object/from16 v2, p2

    goto :goto_3d

    :cond_54
    move/from16 v18, v2

    :goto_3c
    new-instance v12, Landroidx/compose/material3/SearchBarDefaults$InputField$1$1;

    move-object/from16 v2, p2

    invoke-direct {v12, v0, v2, v10, v11}, Landroidx/compose/material3/SearchBarDefaults$InputField$1$1;-><init>(ZLandroidx/compose/material3/SearchBarState;Ly22;Landroidx/compose/ui/focus/FocusManager;)V

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_3d
    check-cast v12, Lnl3;

    invoke-static {v1, v12}, Landroidx/compose/ui/input/key/KeyInputModifierKt;->onPreviewKeyEvent(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {}, Landroidx/compose/material3/SearchBarKt;->getSearchBarMinWidth()F

    move-result v19

    invoke-static {}, Landroidx/compose/material3/SearchBarKt;->access$getSearchBarMaxWidth$p()F

    move-result v20

    sget v21, Landroidx/compose/material3/SearchBarDefaults;->InputFieldHeight:F

    const/16 v22, 0x8

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 p8, v12

    move/from16 p9, v19

    move/from16 p11, v20

    move/from16 p10, v21

    move/from16 p13, v22

    move-object/from16 p14, v26

    move/from16 p12, v27

    invoke-static/range {p8 .. p14}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v19

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    or-int v19, v19, v20

    move-object/from16 v20, v1

    const/16 v1, 0x20

    if-ne v3, v1, :cond_55

    const/4 v1, 0x1

    goto :goto_3e

    :cond_55
    const/4 v1, 0x0

    :goto_3e
    or-int v1, v19, v1

    move/from16 p8, v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez p8, :cond_56

    move-object/from16 p8, v11

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v1, v11, :cond_57

    goto :goto_3f

    :cond_56
    move-object/from16 p8, v11

    :goto_3f
    new-instance v1, Lkj7;

    invoke-direct {v1, v0, v10, v2}, Lkj7;-><init>(ZLy22;Landroidx/compose/material3/SearchBarState;)V

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_57
    check-cast v1, Lnl3;

    invoke-static {v12, v1}, Landroidx/compose/ui/focus/FocusChangedModifierKt;->onFocusChanged(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    const/16 v12, 0x20

    if-ne v3, v12, :cond_58

    const/16 v19, 0x1

    goto :goto_40

    :cond_58
    const/16 v19, 0x0

    :goto_40
    or-int v11, v11, v19

    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    or-int v11, v11, v19

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_59

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v12, v11, :cond_5a

    :cond_59
    new-instance v12, Llj7;

    invoke-direct {v12, v9, v2, v13}, Llj7;-><init>(Ljava/lang/String;Landroidx/compose/material3/SearchBarState;Ljava/lang/String;)V

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5a
    check-cast v12, Lnl3;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x1

    invoke-static {v1, v11, v12, v13, v9}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLnl3;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v26

    sget-object v1, Landroidx/compose/foundation/text/input/TextFieldLineLimits$SingleLine;->INSTANCE:Landroidx/compose/foundation/text/input/TextFieldLineLimits$SingleLine;

    new-instance v12, Landroidx/compose/ui/graphics/SolidColor;

    move-object/from16 p9, v14

    invoke-virtual {v7, v11}, Landroidx/compose/material3/TextFieldColors;->cursorColor-vNxB06k$material3(Z)J

    move-result-wide v13

    invoke-direct {v12, v13, v14, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLjh2;)V

    new-instance v13, Landroidx/compose/foundation/text/KeyboardOptions;

    sget-object v14, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getSearch-eUduSuo()I

    move-result v14

    const/16 v21, 0x77

    const/16 v22, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 p10, v13

    move/from16 p14, v14

    move/from16 p18, v21

    move-object/from16 p19, v22

    move/from16 p11, v27

    move-object/from16 p12, v28

    move/from16 p13, v29

    move-object/from16 p15, v30

    move-object/from16 p16, v31

    move-object/from16 p17, v32

    invoke-direct/range {p10 .. p19}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(ILjava/lang/Boolean;IILandroidx/compose/ui/text/input/PlatformImeOptions;Ljava/lang/Boolean;Landroidx/compose/ui/text/intl/LocaleList;ILjh2;)V

    move-object/from16 v27, p10

    and-int/lit16 v13, v8, 0x380

    const/16 v14, 0x100

    if-ne v13, v14, :cond_5b

    const/4 v13, 0x1

    goto :goto_41

    :cond_5b
    move v13, v11

    :goto_41
    and-int/lit8 v14, v8, 0xe

    move/from16 v21, v8

    const/4 v8, 0x4

    if-ne v14, v8, :cond_5c

    const/16 v22, 0x1

    goto :goto_42

    :cond_5c
    move/from16 v22, v11

    :goto_42
    or-int v13, v13, v22

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v13, :cond_5e

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v8, v13, :cond_5d

    goto :goto_43

    :cond_5d
    move-object/from16 v13, p1

    move/from16 p10, v0

    move-object/from16 v0, p3

    goto :goto_44

    :cond_5e
    :goto_43
    new-instance v8, Lbj7;

    move-object/from16 v13, p1

    move/from16 p10, v0

    move-object/from16 v0, p3

    invoke-direct {v8, v0, v13}, Lbj7;-><init>(Lnl3;Landroidx/compose/foundation/text/input/TextFieldState;)V

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_44
    move-object/from16 v29, v8

    check-cast v29, Landroidx/compose/foundation/text/input/KeyboardActionHandler;

    sget-object v8, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    const/16 v9, 0x36

    if-nez v4, :cond_5f

    const v11, -0x65369d4c

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 p18, v1

    const/4 v0, 0x0

    goto :goto_45

    :cond_5f
    const v11, -0x65369d4b

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    new-instance v11, Landroidx/compose/material3/SearchBarDefaults$InputField$5$1;

    invoke-direct {v11, v4}, Landroidx/compose/material3/SearchBarDefaults$InputField$5$1;-><init>(Lbm3;)V

    const v0, 0x2d3e01dc

    move-object/from16 p18, v1

    const/4 v1, 0x1

    invoke-static {v0, v1, v11, v15, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_45
    if-nez v5, :cond_60

    const v1, -0x65336f2f

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 p19, v0

    const/4 v11, 0x0

    goto :goto_46

    :cond_60
    const v1, -0x65336f2e

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    new-instance v1, Landroidx/compose/material3/SearchBarDefaults$InputField$6$1;

    invoke-direct {v1, v5}, Landroidx/compose/material3/SearchBarDefaults$InputField$6$1;-><init>(Lbm3;)V

    const v11, 0x351083b

    move-object/from16 p19, v0

    const/4 v0, 0x1

    invoke-static {v11, v0, v1, v15, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object v11, v1

    :goto_46
    const/16 v0, 0xf

    const/4 v1, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    move/from16 p16, v0

    move-object/from16 p17, v1

    move-object/from16 p11, v8

    move/from16 p12, v30

    move/from16 p13, v31

    move/from16 p14, v32

    move/from16 p15, v34

    invoke-static/range {p11 .. p17}, Landroidx/compose/material3/TextFieldDefaults;->contentPaddingWithoutLabel-a9UjIt4$default(Landroidx/compose/material3/TextFieldDefaults;FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    move-object/from16 v1, p11

    new-instance v8, Landroidx/compose/material3/SearchBarDefaults$InputField$7;

    move-object v9, v0

    move-object/from16 v0, p9

    move-object/from16 p9, v9

    move/from16 v9, v18

    invoke-direct {v8, v7, v9, v6, v0}, Landroidx/compose/material3/SearchBarDefaults$InputField$7;-><init>(Landroidx/compose/material3/TextFieldColors;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/State;)V

    move-object/from16 v18, v0

    const v0, 0x596eed32

    move-object/from16 p12, v1

    const/16 v1, 0x36

    const/4 v2, 0x1

    invoke-static {v0, v2, v8, v15, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    or-int/lit16 v1, v14, 0x180

    shr-int/lit8 v8, v21, 0x9

    and-int/lit8 v8, v8, 0x70

    or-int/2addr v1, v8

    move/from16 v8, v17

    and-int/lit16 v2, v8, 0x1c00

    or-int/2addr v1, v2

    const/high16 v2, 0x1c00000

    and-int v2, v21, v2

    or-int/2addr v1, v2

    and-int/lit8 v2, v8, 0xe

    const/high16 v17, 0xd80000

    or-int v2, v2, v17

    and-int/lit8 v17, v8, 0x70

    or-int v2, v2, v17

    shr-int/lit8 v17, v8, 0x6

    const v30, 0xe000

    and-int v17, v17, v30

    or-int v2, v2, v17

    const/16 v72, 0x0

    const/16 v22, 0x3060

    move-object/from16 v67, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v7

    const/4 v7, 0x0

    move/from16 v17, v8

    const/4 v8, 0x0

    move/from16 v31, v14

    const/4 v14, 0x0

    move-object/from16 v47, v15

    const/4 v15, 0x0

    move/from16 v19, v17

    move-object/from16 v17, p9

    move-object/from16 p9, v18

    move-object/from16 v18, v0

    move/from16 v0, v31

    move/from16 v31, v19

    move-object/from16 v57, p7

    move-object/from16 v75, p8

    move/from16 v77, v3

    move-object/from16 v60, v4

    move-object/from16 v61, v5

    move v3, v9

    move-object/from16 v76, v10

    move-object/from16 v28, v12

    move-object/from16 v54, v20

    move/from16 v58, v21

    move-object/from16 v19, v47

    move-object/from16 v5, v65

    const/16 v33, 0x0

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    move-object/from16 v4, p18

    move-object/from16 v10, p19

    move/from16 v20, v1

    move/from16 v21, v2

    move-object v2, v13

    move-object/from16 v13, p6

    move-object/from16 v1, p12

    invoke-virtual/range {v1 .. v22}, Landroidx/compose/material3/TextFieldDefaults;->decorator(Landroidx/compose/foundation/text/input/TextFieldState;ZLandroidx/compose/foundation/text/input/TextFieldLineLimits;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldLabelPosition;Ldm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;ZLandroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lbm3;Landroidx/compose/runtime/Composer;III)Landroidx/compose/foundation/text/input/TextFieldDecorator;

    move-result-object v1

    move-object/from16 v59, v9

    move-object/from16 v62, v12

    move-object/from16 v63, v13

    move v9, v3

    move-object v12, v5

    move-object/from16 v19, v16

    const/high16 v2, 0x6180000

    or-int/2addr v2, v0

    shr-int/lit8 v3, v58, 0x6

    and-int/lit16 v5, v3, 0x380

    or-int/2addr v2, v5

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v2, v3

    shl-int/lit8 v3, v31, 0x6

    and-int v3, v3, v30

    or-int v16, v2, v3

    shr-int/lit8 v2, v31, 0x3

    and-int/lit16 v2, v2, 0x380

    and-int v3, v31, v30

    or-int v17, v2, v3

    const/16 v18, 0x200

    move v2, v9

    const/4 v9, 0x0

    move-object/from16 v78, p9

    move/from16 v20, p10

    move/from16 v79, v0

    move-object v13, v1

    move-object v8, v4

    move-object v10, v6

    move-object/from16 v5, v24

    move-object/from16 v1, v26

    move-object/from16 v6, v27

    move-object/from16 v11, v28

    move-object/from16 v7, v29

    move-object/from16 v15, v47

    move/from16 v3, v56

    move-object/from16 v4, v64

    move-object/from16 v14, v66

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v18}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Landroidx/compose/foundation/text/input/TextFieldLineLimits;Lbm3;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/input/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V

    move v9, v2

    move-object v6, v10

    move/from16 v0, v77

    const/16 v1, 0x20

    if-ne v0, v1, :cond_61

    const/4 v2, 0x1

    :goto_47
    move-object/from16 v10, v76

    goto :goto_48

    :cond_61
    const/4 v2, 0x0

    goto :goto_47

    :goto_48
    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_63

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v5, v2, :cond_62

    goto :goto_49

    :cond_62
    move-object/from16 v2, p2

    const/4 v13, 0x1

    goto :goto_4a

    :cond_63
    :goto_49
    new-instance v5, Lim;

    move-object/from16 v2, p2

    const/4 v13, 0x1

    invoke-direct {v5, v13, v2, v10}, Lim;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_4a
    check-cast v5, Lll3;

    const/4 v11, 0x0

    invoke-static {v6, v5, v15, v11}, Landroidx/compose/material3/SearchBarKt;->access$DetectClickFromInteractionSource(Landroidx/compose/foundation/interaction/InteractionSource;Lll3;Landroidx/compose/runtime/Composer;I)V

    if-ne v0, v1, :cond_64

    move v0, v13

    :goto_4b
    move/from16 v1, v79

    const/4 v8, 0x4

    goto :goto_4c

    :cond_64
    move v0, v11

    goto :goto_4b

    :goto_4c
    if-ne v1, v8, :cond_65

    move v1, v13

    goto :goto_4d

    :cond_65
    move v1, v11

    :goto_4d
    or-int/2addr v0, v1

    move-object/from16 v1, v78

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_67

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v5, v0, :cond_66

    goto :goto_4e

    :cond_66
    move-object/from16 v0, p1

    goto :goto_4f

    :cond_67
    :goto_4e
    new-instance v0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;

    const/4 v5, 0x0

    move-object/from16 p6, p1

    move-object/from16 p4, v0

    move-object/from16 p8, v1

    move-object/from16 p5, v2

    move-object/from16 p9, v5

    move-object/from16 p7, v10

    invoke-direct/range {p4 .. p9}, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;-><init>(Landroidx/compose/material3/SearchBarState;Landroidx/compose/foundation/text/input/TextFieldState;Ly22;Landroidx/compose/runtime/State;Le02;)V

    move-object/from16 v5, p4

    move-object/from16 v0, p6

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_4f
    check-cast v5, Lbm3;

    shr-int/lit8 v6, v58, 0x3

    and-int/lit8 v6, v6, 0xe

    shl-int/lit8 v7, v58, 0x3

    and-int/lit8 v7, v7, 0x70

    or-int/2addr v6, v7

    invoke-static {v2, v0, v5, v15, v6}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lbm3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {v2}, Landroidx/compose/material3/SearchBarKt;->access$isExpanded(Landroidx/compose/material3/SearchBarState;)Z

    move-result v5

    if-nez v5, :cond_68

    invoke-static {v1}, Landroidx/compose/material3/SearchBarDefaults;->InputField$lambda$5(Landroidx/compose/runtime/State;)Z

    move-result v1

    if-eqz v1, :cond_68

    if-eqz v20, :cond_68

    goto :goto_50

    :cond_68
    move v13, v11

    :goto_50
    invoke-static {v2}, Landroidx/compose/material3/SearchBarKt;->access$isExpanded(Landroidx/compose/material3/SearchBarState;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v5

    move-object/from16 v6, v75

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_69

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v7, v5, :cond_6a

    :cond_69
    new-instance v7, Landroidx/compose/material3/SearchBarDefaults$InputField$10$1;

    const/4 v10, 0x0

    invoke-direct {v7, v13, v6, v10}, Landroidx/compose/material3/SearchBarDefaults$InputField$10$1;-><init>(ZLandroidx/compose/ui/focus/FocusManager;Le02;)V

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6a
    check-cast v7, Lbm3;

    invoke-static {v1, v7, v15, v11}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lbm3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6b
    move v7, v3

    move v6, v9

    move-object/from16 v16, v14

    move-object/from16 v47, v15

    move-object/from16 v18, v19

    move-object/from16 v19, v23

    move-object/from16 v5, v54

    move-object/from16 v8, v57

    move-object/from16 v9, v59

    move-object/from16 v10, v60

    move-object/from16 v11, v61

    move-object/from16 v13, v63

    move-object/from16 v17, v67

    move-object v14, v4

    move-object v15, v12

    move-object/from16 v12, v62

    goto :goto_51

    :cond_6c
    move-object/from16 v2, p2

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v5, p4

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v14, p13

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move v6, v7

    move v7, v9

    move-object v8, v10

    move-object v9, v13

    move-object/from16 v47, v15

    move-object/from16 v10, p9

    move-object/from16 v13, p12

    move-object/from16 v15, p14

    :goto_51
    invoke-interface/range {v47 .. v47}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v1

    if-eqz v1, :cond_6d

    new-instance v0, Lcj7;

    move-object/from16 v4, p3

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move-object/from16 v80, v1

    move-object v3, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v22}, Lcj7;-><init>(Landroidx/compose/material3/SearchBarDefaults;Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/material3/SearchBarState;Lnl3;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;III)V

    move-object v1, v0

    move-object/from16 v0, v80

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_6d
    return-void
.end method

.method public final InputField(Landroidx/compose/foundation/text/input/TextFieldState;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V
    .locals 110
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/input/TextFieldState;",
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
            "ZZ",
            "Landroidx/compose/ui/text/TextStyle;",
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
            "Landroidx/compose/foundation/text/input/InputTransformation;",
            "Landroidx/compose/foundation/text/input/OutputTransformation;",
            "Landroidx/compose/foundation/ScrollState;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/TextFieldColors;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p21

    move/from16 v6, p22

    move/from16 v7, p23

    const v8, 0x76e29bb3

    move-object/from16 v9, p20

    .line 2264
    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    and-int/lit8 v9, v7, 0x1

    if-eqz v9, :cond_0

    or-int/lit8 v9, v5, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v9, v5, 0x6

    if-nez v9, :cond_2

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x4

    goto :goto_0

    :cond_1
    const/4 v9, 0x2

    :goto_0
    or-int/2addr v9, v5

    goto :goto_1

    :cond_2
    move v9, v5

    :goto_1
    and-int/lit8 v12, v7, 0x2

    if-eqz v12, :cond_3

    or-int/lit8 v9, v9, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v12, v5, 0x30

    if-nez v12, :cond_5

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v12, 0x20

    goto :goto_2

    :cond_4
    const/16 v12, 0x10

    :goto_2
    or-int/2addr v9, v12

    :cond_5
    :goto_3
    and-int/lit8 v12, v7, 0x4

    const/16 v16, 0x80

    if-eqz v12, :cond_6

    or-int/lit16 v9, v9, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v12, v5, 0x180

    if-nez v12, :cond_8

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_7

    const/16 v12, 0x100

    goto :goto_4

    :cond_7
    move/from16 v12, v16

    :goto_4
    or-int/2addr v9, v12

    :cond_8
    :goto_5
    and-int/lit8 v12, v7, 0x8

    const/16 v17, 0x400

    if-eqz v12, :cond_9

    or-int/lit16 v9, v9, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v12, v5, 0xc00

    if-nez v12, :cond_b

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 v12, 0x800

    goto :goto_6

    :cond_a
    move/from16 v12, v17

    :goto_6
    or-int/2addr v9, v12

    :cond_b
    :goto_7
    and-int/lit8 v12, v7, 0x10

    const/16 v18, 0x2000

    const/16 v19, 0x4000

    if-eqz v12, :cond_d

    or-int/lit16 v9, v9, 0x6000

    :cond_c
    move-object/from16 v2, p5

    goto :goto_9

    :cond_d
    and-int/lit16 v2, v5, 0x6000

    if-nez v2, :cond_c

    move-object/from16 v2, p5

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    move/from16 v21, v19

    goto :goto_8

    :cond_e
    move/from16 v21, v18

    :goto_8
    or-int v9, v9, v21

    :goto_9
    and-int/lit8 v21, v7, 0x20

    const/high16 v22, 0x30000

    const/high16 v23, 0x10000

    const/high16 v24, 0x20000

    if-eqz v21, :cond_f

    or-int v9, v9, v22

    move/from16 v8, p6

    goto :goto_b

    :cond_f
    and-int v25, v5, v22

    move/from16 v8, p6

    if-nez v25, :cond_11

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v26

    if-eqz v26, :cond_10

    move/from16 v26, v24

    goto :goto_a

    :cond_10
    move/from16 v26, v23

    :goto_a
    or-int v9, v9, v26

    :cond_11
    :goto_b
    and-int/lit8 v26, v7, 0x40

    const/high16 v27, 0x100000

    const/high16 v28, 0x80000

    const/high16 v29, 0x180000

    if-eqz v26, :cond_12

    or-int v9, v9, v29

    move/from16 v10, p7

    goto :goto_d

    :cond_12
    and-int v30, v5, v29

    move/from16 v10, p7

    if-nez v30, :cond_14

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v31

    if-eqz v31, :cond_13

    move/from16 v31, v27

    goto :goto_c

    :cond_13
    move/from16 v31, v28

    :goto_c
    or-int v9, v9, v31

    :cond_14
    :goto_d
    const/high16 v31, 0xc00000

    and-int v32, v5, v31

    const/high16 v33, 0x400000

    const/high16 v34, 0x800000

    if-nez v32, :cond_17

    and-int/lit16 v11, v7, 0x80

    if-nez v11, :cond_15

    move-object/from16 v11, p8

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_16

    move/from16 v35, v34

    goto :goto_e

    :cond_15
    move-object/from16 v11, p8

    :cond_16
    move/from16 v35, v33

    :goto_e
    or-int v9, v9, v35

    goto :goto_f

    :cond_17
    move-object/from16 v11, p8

    :goto_f
    and-int/lit16 v13, v7, 0x100

    const/high16 v36, 0x2000000

    const/high16 v37, 0x4000000

    const/high16 v38, 0x6000000

    if-eqz v13, :cond_18

    or-int v9, v9, v38

    move-object/from16 v14, p9

    goto :goto_11

    :cond_18
    and-int v39, v5, v38

    move-object/from16 v14, p9

    if-nez v39, :cond_1a

    invoke-interface {v15, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_19

    move/from16 v40, v37

    goto :goto_10

    :cond_19
    move/from16 v40, v36

    :goto_10
    or-int v9, v9, v40

    :cond_1a
    :goto_11
    and-int/lit16 v2, v7, 0x200

    const/high16 v40, 0x10000000

    const/high16 v41, 0x20000000

    const/high16 v42, 0x30000000

    if-eqz v2, :cond_1c

    or-int v9, v9, v42

    :cond_1b
    move/from16 v43, v2

    move-object/from16 v2, p10

    goto :goto_13

    :cond_1c
    and-int v43, v5, v42

    if-nez v43, :cond_1b

    move/from16 v43, v2

    move-object/from16 v2, p10

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_1d

    move/from16 v44, v41

    goto :goto_12

    :cond_1d
    move/from16 v44, v40

    :goto_12
    or-int v9, v9, v44

    :goto_13
    and-int/lit16 v2, v7, 0x400

    if-eqz v2, :cond_1e

    or-int/lit8 v30, v6, 0x6

    move/from16 v44, v2

    move-object/from16 v2, p11

    goto :goto_15

    :cond_1e
    and-int/lit8 v44, v6, 0x6

    if-nez v44, :cond_20

    move/from16 v44, v2

    move-object/from16 v2, p11

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1f

    const/16 v30, 0x4

    goto :goto_14

    :cond_1f
    const/16 v30, 0x2

    :goto_14
    or-int v30, v6, v30

    goto :goto_15

    :cond_20
    move/from16 v44, v2

    move-object/from16 v2, p11

    move/from16 v30, v6

    :goto_15
    and-int/lit16 v2, v7, 0x800

    if-eqz v2, :cond_21

    or-int/lit8 v30, v30, 0x30

    move/from16 v45, v2

    :goto_16
    move/from16 v2, v30

    goto :goto_18

    :cond_21
    and-int/lit8 v45, v6, 0x30

    if-nez v45, :cond_23

    move/from16 v45, v2

    move-object/from16 v2, p12

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_22

    const/16 v35, 0x20

    goto :goto_17

    :cond_22
    const/16 v35, 0x10

    :goto_17
    or-int v30, v30, v35

    goto :goto_16

    :cond_23
    move/from16 v45, v2

    move-object/from16 v2, p12

    goto :goto_16

    :goto_18
    and-int/lit16 v3, v7, 0x1000

    if-eqz v3, :cond_24

    or-int/lit16 v2, v2, 0x180

    goto :goto_19

    :cond_24
    move/from16 v30, v2

    and-int/lit16 v2, v6, 0x180

    if-nez v2, :cond_26

    move-object/from16 v2, p13

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_25

    const/16 v16, 0x100

    :cond_25
    or-int v16, v30, v16

    move/from16 v2, v16

    goto :goto_19

    :cond_26
    move-object/from16 v2, p13

    move/from16 v2, v30

    :goto_19
    move/from16 v16, v3

    and-int/lit16 v3, v7, 0x2000

    if-eqz v3, :cond_27

    or-int/lit16 v2, v2, 0xc00

    goto :goto_1a

    :cond_27
    move/from16 v30, v2

    and-int/lit16 v2, v6, 0xc00

    if-nez v2, :cond_29

    move-object/from16 v2, p14

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_28

    const/16 v17, 0x800

    :cond_28
    or-int v17, v30, v17

    move/from16 v2, v17

    goto :goto_1a

    :cond_29
    move-object/from16 v2, p14

    move/from16 v2, v30

    :goto_1a
    move/from16 v17, v3

    and-int/lit16 v3, v7, 0x4000

    if-eqz v3, :cond_2b

    or-int/lit16 v2, v2, 0x6000

    move/from16 v30, v2

    :cond_2a
    move-object/from16 v2, p15

    goto :goto_1b

    :cond_2b
    move/from16 v30, v2

    and-int/lit16 v2, v6, 0x6000

    if-nez v2, :cond_2a

    move-object/from16 v2, p15

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2c

    move/from16 v18, v19

    :cond_2c
    or-int v18, v30, v18

    move/from16 v30, v18

    :goto_1b
    and-int v18, v6, v22

    const v19, 0x8000

    if-nez v18, :cond_2e

    and-int v18, v7, v19

    move-object/from16 v2, p16

    if-nez v18, :cond_2d

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2d

    move/from16 v18, v24

    goto :goto_1c

    :cond_2d
    move/from16 v18, v23

    :goto_1c
    or-int v30, v30, v18

    goto :goto_1d

    :cond_2e
    move-object/from16 v2, p16

    :goto_1d
    and-int v18, v6, v29

    if-nez v18, :cond_30

    and-int v18, v7, v23

    move-object/from16 v2, p17

    if-nez v18, :cond_2f

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2f

    goto :goto_1e

    :cond_2f
    move/from16 v27, v28

    :goto_1e
    or-int v30, v30, v27

    goto :goto_1f

    :cond_30
    move-object/from16 v2, p17

    :goto_1f
    and-int v18, v6, v31

    if-nez v18, :cond_32

    and-int v18, v7, v24

    move-object/from16 v2, p18

    if-nez v18, :cond_31

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_31

    move/from16 v33, v34

    :cond_31
    or-int v30, v30, v33

    goto :goto_20

    :cond_32
    move-object/from16 v2, p18

    :goto_20
    const/high16 v18, 0x40000

    and-int v52, v7, v18

    if-eqz v52, :cond_33

    or-int v30, v30, v38

    move-object/from16 v2, p19

    goto :goto_21

    :cond_33
    and-int v18, v6, v38

    move-object/from16 v2, p19

    if-nez v18, :cond_35

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_34

    move/from16 v36, v37

    :cond_34
    or-int v30, v30, v36

    :cond_35
    :goto_21
    and-int v18, v7, v28

    if-eqz v18, :cond_36

    or-int v30, v30, v42

    goto :goto_22

    :cond_36
    and-int v18, v6, v42

    if-nez v18, :cond_38

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_37

    move/from16 v40, v41

    :cond_37
    or-int v30, v30, v40

    :cond_38
    :goto_22
    const v18, 0x12492493

    and-int v2, v9, v18

    move/from16 v22, v3

    const v3, 0x12492492

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_3a

    and-int v2, v30, v18

    if-eq v2, v3, :cond_39

    goto :goto_23

    :cond_39
    move v2, v4

    goto :goto_24

    :cond_3a
    :goto_23
    move v2, v5

    :goto_24
    and-int/lit8 v3, v9, 0x1

    invoke-interface {v15, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v2, p21, 0x1

    const v3, -0x380001

    const v18, -0x70001

    const v53, -0x1c00001

    move/from16 v27, v2

    const/4 v2, 0x0

    if-eqz v27, :cond_40

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v27

    if-eqz v27, :cond_3b

    goto :goto_25

    .line 2265
    :cond_3b
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v12, v7, 0x80

    if-eqz v12, :cond_3c

    and-int v9, v9, v53

    :cond_3c
    and-int v12, v7, v19

    if-eqz v12, :cond_3d

    and-int v30, v30, v18

    :cond_3d
    and-int v12, v7, v23

    if-eqz v12, :cond_3e

    and-int v30, v30, v3

    :cond_3e
    and-int v3, v7, v24

    if-eqz v3, :cond_3f

    and-int v30, v30, v53

    :cond_3f
    move-object/from16 v54, p5

    move-object/from16 v3, p10

    move-object/from16 v4, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v64, p14

    move-object/from16 v5, p15

    move-object/from16 v66, p16

    move-object/from16 v6, p17

    move-object/from16 v7, p18

    move-object/from16 v23, p19

    move v2, v8

    move v8, v9

    move/from16 v56, v10

    move-object v1, v11

    move-object v9, v14

    move/from16 v10, v30

    const v0, 0x76e29bb3

    goto/16 :goto_36

    :cond_40
    :goto_25
    if-eqz v12, :cond_41

    .line 2266
    sget-object v12, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v54, v12

    goto :goto_26

    :cond_41
    move-object/from16 v54, p5

    :goto_26
    if-eqz v21, :cond_42

    move/from16 v55, v5

    goto :goto_27

    :cond_42
    move/from16 v55, v8

    :goto_27
    if-eqz v26, :cond_43

    move/from16 v56, v4

    goto :goto_28

    :cond_43
    move/from16 v56, v10

    :goto_28
    and-int/lit16 v8, v7, 0x80

    if-eqz v8, :cond_44

    .line 2267
    invoke-static {}, Landroidx/compose/material3/TextKt;->getLocalTextStyle()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v8

    .line 2268
    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/text/TextStyle;

    and-int v9, v9, v53

    move-object/from16 v57, v8

    :goto_29
    move/from16 v58, v9

    goto :goto_2a

    :cond_44
    move-object/from16 v57, v11

    goto :goto_29

    :goto_2a
    if-eqz v13, :cond_45

    move-object/from16 v59, v2

    goto :goto_2b

    :cond_45
    move-object/from16 v59, v14

    :goto_2b
    if-eqz v43, :cond_46

    move-object/from16 v60, v2

    goto :goto_2c

    :cond_46
    move-object/from16 v60, p10

    :goto_2c
    if-eqz v44, :cond_47

    move-object/from16 v61, v2

    goto :goto_2d

    :cond_47
    move-object/from16 v61, p11

    :goto_2d
    if-eqz v45, :cond_48

    move-object/from16 v62, v2

    goto :goto_2e

    :cond_48
    move-object/from16 v62, p12

    :goto_2e
    if-eqz v16, :cond_49

    move-object/from16 v63, v2

    goto :goto_2f

    :cond_49
    move-object/from16 v63, p13

    :goto_2f
    if-eqz v17, :cond_4a

    move-object/from16 v64, v2

    goto :goto_30

    :cond_4a
    move-object/from16 v64, p14

    :goto_30
    if-eqz v22, :cond_4b

    move-object/from16 v65, v2

    goto :goto_31

    :cond_4b
    move-object/from16 v65, p15

    :goto_31
    and-int v8, v7, v19

    if-eqz v8, :cond_4c

    .line 2269
    invoke-static {v4, v15, v4, v5}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v8

    and-int v30, v30, v18

    move-object/from16 v66, v8

    goto :goto_32

    :cond_4c
    move-object/from16 v66, p16

    :goto_32
    and-int v8, v7, v23

    if-eqz v8, :cond_4d

    shr-int/lit8 v8, v30, 0x1b

    and-int/lit8 v8, v8, 0xe

    .line 2270
    invoke-virtual {v1, v15, v8}, Landroidx/compose/material3/SearchBarDefaults;->getInputFieldShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v8

    and-int v30, v30, v3

    move-object/from16 v67, v8

    :goto_33
    move/from16 v68, v30

    goto :goto_34

    :cond_4d
    move-object/from16 v67, p17

    goto :goto_33

    :goto_34
    and-int v3, v7, v24

    if-eqz v3, :cond_4e

    shr-int/lit8 v3, v68, 0x12

    and-int/lit16 v3, v3, 0x1c00

    const v51, 0x7fffff

    move-object v8, v2

    move/from16 v50, v3

    const-wide/16 v2, 0x0

    move v9, v4

    move v10, v5

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v11, v8

    move v12, v9

    const-wide/16 v8, 0x0

    move v13, v10

    const/4 v10, 0x0

    move-object v14, v11

    move/from16 v16, v12

    const-wide/16 v11, 0x0

    move/from16 v18, v13

    move-object/from16 v17, v14

    const-wide/16 v13, 0x0

    move-object/from16 v47, v15

    move/from16 v19, v16

    const-wide/16 v15, 0x0

    move-object/from16 v21, v17

    move/from16 v22, v18

    const-wide/16 v17, 0x0

    move/from16 v24, v19

    const/16 v23, 0x800

    const-wide/16 v19, 0x0

    move-object/from16 v26, v21

    move/from16 v27, v22

    const-wide/16 v21, 0x0

    move/from16 v28, v23

    move/from16 v29, v24

    const-wide/16 v23, 0x0

    move-object/from16 v30, v26

    const v31, 0x76e29bb3

    const-wide/16 v25, 0x0

    move/from16 v34, v27

    move/from16 v33, v28

    const-wide/16 v27, 0x0

    move/from16 v36, v29

    move-object/from16 v35, v30

    const-wide/16 v29, 0x0

    move/from16 v38, v31

    const/16 v37, 0x4

    const-wide/16 v31, 0x0

    move/from16 v40, v33

    move/from16 v41, v34

    const-wide/16 v33, 0x0

    move-object/from16 v42, v35

    move/from16 v43, v36

    const-wide/16 v35, 0x0

    move/from16 v44, v37

    move/from16 v45, v38

    const-wide/16 v37, 0x0

    move/from16 v46, v40

    const/16 v48, 0x20

    const-wide/16 v39, 0x0

    move/from16 v69, v41

    move-object/from16 v49, v42

    const-wide/16 v41, 0x0

    move/from16 v71, v43

    move/from16 v70, v44

    const-wide/16 v43, 0x0

    move/from16 v73, v45

    move/from16 v72, v46

    const-wide/16 v45, 0x0

    move/from16 v74, v48

    const/16 v48, 0x0

    move-object/from16 v75, v49

    const/16 v49, 0x0

    move/from16 v0, v73

    .line 2271
    invoke-virtual/range {v1 .. v51}, Landroidx/compose/material3/SearchBarDefaults;->inputFieldColors-JVEmHcM(JJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIII)Landroidx/compose/material3/TextFieldColors;

    move-result-object v2

    move-object/from16 v15, v47

    and-int v1, v68, v53

    move/from16 v30, v1

    goto :goto_35

    :cond_4e
    const v0, 0x76e29bb3

    move-object/from16 v2, p18

    move/from16 v30, v68

    :goto_35
    if-eqz v52, :cond_4f

    move-object v7, v2

    move/from16 v10, v30

    move/from16 v2, v55

    move-object/from16 v1, v57

    move/from16 v8, v58

    move-object/from16 v9, v59

    move-object/from16 v3, v60

    move-object/from16 v4, v61

    move-object/from16 v12, v62

    move-object/from16 v13, v63

    move-object/from16 v5, v65

    move-object/from16 v6, v67

    const/16 v23, 0x0

    goto :goto_36

    :cond_4f
    move-object/from16 v23, p19

    move-object v7, v2

    move/from16 v10, v30

    move/from16 v2, v55

    move-object/from16 v1, v57

    move/from16 v8, v58

    move-object/from16 v9, v59

    move-object/from16 v3, v60

    move-object/from16 v4, v61

    move-object/from16 v12, v62

    move-object/from16 v13, v63

    move-object/from16 v5, v65

    move-object/from16 v6, v67

    .line 2272
    :goto_36
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_50

    const-string v11, "androidx.compose.material3.SearchBarDefaults.InputField (SearchBar.kt:1520)"

    invoke-static {v0, v8, v10, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_50
    if-nez v23, :cond_52

    const v0, -0x334b17f8    # -9.484704E7f

    .line 2273
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 2274
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 2275
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v0, v11, :cond_51

    .line 2276
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    .line 2277
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2278
    :cond_51
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_37
    const/4 v11, 0x0

    goto :goto_38

    :cond_52
    const v0, 0x48aafcaf

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 v0, v23

    goto :goto_37

    .line 2279
    :goto_38
    invoke-static {v0, v15, v11}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v14

    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 2280
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .line 2281
    sget-object v24, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v16, v0

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v14, v0, :cond_53

    .line 2282
    new-instance v14, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v14}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 2283
    invoke-interface {v15, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2284
    :cond_53
    check-cast v14, Landroidx/compose/ui/focus/FocusRequester;

    .line 2285
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFocusManager()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 2286
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    .line 2287
    check-cast v0, Landroidx/compose/ui/focus/FocusManager;

    .line 2288
    sget-object v17, Landroidx/compose/material3/internal/Strings;->Companion:Landroidx/compose/material3/internal/Strings$Companion;

    .line 2289
    sget v17, Landroidx/compose/material3/R$string;->m3c_search_bar_search:I

    move-object/from16 p12, v0

    invoke-static/range {v17 .. v17}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result v0

    move-object/from16 p13, v5

    const/4 v5, 0x0

    .line 2290
    invoke-static {v0, v15, v5}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    .line 2291
    sget v17, Landroidx/compose/material3/R$string;->m3c_suggestions_available:I

    move-object/from16 p14, v9

    invoke-static/range {v17 .. v17}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result v9

    .line 2292
    invoke-static {v9, v15, v5}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    .line 2293
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v17

    const-wide/16 v19, 0x10

    cmp-long v19, v17, v19

    if-eqz v19, :cond_54

    :goto_39
    move-wide/from16 v77, v17

    goto :goto_3a

    .line 2294
    :cond_54
    invoke-virtual {v7, v2, v5, v11}, Landroidx/compose/material3/TextFieldColors;->textColor-XeAY9LY$material3(ZZZ)J

    move-result-wide v17

    goto :goto_39

    .line 2295
    :goto_3a
    new-instance v76, Landroidx/compose/ui/text/TextStyle;

    const v106, 0xfffffe

    const/16 v107, 0x0

    const-wide/16 v79, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const-wide/16 v86, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const-wide/16 v91, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    const-wide/16 v98, 0x0

    const/16 v100, 0x0

    const/16 v101, 0x0

    const/16 v102, 0x0

    const/16 v103, 0x0

    const/16 v104, 0x0

    const/16 v105, 0x0

    invoke-direct/range {v76 .. v107}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILjh2;)V

    move-object/from16 v5, v76

    invoke-virtual {v1, v5}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v25

    .line 2296
    invoke-static {}, Landroidx/compose/material3/SearchBarKt;->getSearchBarMinWidth()F

    move-result v5

    .line 2297
    invoke-static {}, Landroidx/compose/material3/SearchBarKt;->access$getSearchBarMaxWidth$p()F

    move-result v17

    .line 2298
    sget v18, Landroidx/compose/material3/SearchBarDefaults;->InputFieldHeight:F

    const/16 v19, 0x8

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 p6, v5

    move/from16 p8, v17

    move/from16 p7, v18

    move/from16 p10, v19

    move-object/from16 p11, v20

    move/from16 p9, v21

    move-object/from16 p5, v54

    .line 2299
    invoke-static/range {p5 .. p11}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 2300
    invoke-static {v5, v14}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    and-int/lit16 v14, v8, 0x1c00

    move-object/from16 p5, v1

    const/16 v1, 0x800

    if-ne v14, v1, :cond_55

    const/4 v1, 0x1

    goto :goto_3b

    :cond_55
    const/4 v1, 0x0

    .line 2301
    :goto_3b
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v1, :cond_57

    .line 2302
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v14, v1, :cond_56

    goto :goto_3c

    :cond_56
    move-object/from16 v1, p4

    move/from16 v17, v10

    goto :goto_3d

    .line 2303
    :cond_57
    :goto_3c
    new-instance v14, Lgj7;

    move-object/from16 v1, p4

    move/from16 v17, v10

    const/4 v10, 0x0

    invoke-direct {v14, v1, v10}, Lgj7;-><init>(Lnl3;I)V

    .line 2304
    invoke-interface {v15, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2305
    :goto_3d
    check-cast v14, Lnl3;

    invoke-static {v5, v14}, Landroidx/compose/ui/focus/FocusChangedModifierKt;->onFocusChanged(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 2306
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    and-int/lit16 v14, v8, 0x380

    const/16 v1, 0x100

    if-ne v14, v1, :cond_58

    const/4 v1, 0x1

    goto :goto_3e

    :cond_58
    const/4 v1, 0x0

    :goto_3e
    or-int/2addr v1, v10

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v1, v10

    .line 2307
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v1, :cond_5a

    .line 2308
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v10, v1, :cond_59

    goto :goto_3f

    :cond_59
    move/from16 v1, p3

    goto :goto_40

    .line 2309
    :cond_5a
    :goto_3f
    new-instance v10, Lhj7;

    move/from16 v1, p3

    invoke-direct {v10, v0, v1, v9}, Lhj7;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 2310
    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2311
    :goto_40
    check-cast v10, Lnl3;

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x1

    invoke-static {v5, v9, v10, v14, v0}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLnl3;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v26

    .line 2312
    sget-object v5, Landroidx/compose/foundation/text/input/TextFieldLineLimits$SingleLine;->INSTANCE:Landroidx/compose/foundation/text/input/TextFieldLineLimits$SingleLine;

    .line 2313
    new-instance v10, Landroidx/compose/ui/graphics/SolidColor;

    move-object/from16 v47, v15

    invoke-virtual {v7, v9}, Landroidx/compose/material3/TextFieldColors;->cursorColor-vNxB06k$material3(Z)J

    move-result-wide v14

    invoke-direct {v10, v14, v15, v0}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLjh2;)V

    .line 2314
    new-instance v27, Landroidx/compose/foundation/text/KeyboardOptions;

    sget-object v14, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getSearch-eUduSuo()I

    move-result v31

    const/16 v35, 0x77

    const/16 v36, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-direct/range {v27 .. v36}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(ILjava/lang/Boolean;IILandroidx/compose/ui/text/input/PlatformImeOptions;Ljava/lang/Boolean;Landroidx/compose/ui/text/intl/LocaleList;ILjh2;)V

    and-int/lit8 v14, v8, 0x70

    const/16 v15, 0x20

    if-ne v14, v15, :cond_5b

    const/4 v14, 0x1

    goto :goto_41

    :cond_5b
    move v14, v9

    :goto_41
    and-int/lit8 v15, v8, 0xe

    const/4 v0, 0x4

    if-ne v15, v0, :cond_5c

    const/4 v0, 0x1

    goto :goto_42

    :cond_5c
    move v0, v9

    :goto_42
    or-int/2addr v0, v14

    .line 2315
    invoke-interface/range {v47 .. v47}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v0, :cond_5e

    .line 2316
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v14, v0, :cond_5d

    goto :goto_43

    :cond_5d
    move-object/from16 v0, p1

    move/from16 v19, v8

    move-object/from16 v9, v47

    move-object/from16 v8, p2

    goto :goto_44

    .line 2317
    :cond_5e
    :goto_43
    new-instance v14, Lij7;

    move-object/from16 v0, p1

    move/from16 v19, v8

    move-object/from16 v8, p2

    invoke-direct {v14, v8, v0}, Lij7;-><init>(Lnl3;Landroidx/compose/foundation/text/input/TextFieldState;)V

    move-object/from16 v9, v47

    .line 2318
    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2319
    :goto_44
    move-object/from16 v28, v14

    check-cast v28, Landroidx/compose/foundation/text/input/KeyboardActionHandler;

    .line 2320
    sget-object v31, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    if-nez v3, :cond_5f

    const v14, -0x33277df9

    .line 2321
    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 p7, v3

    const/4 v0, 0x0

    goto :goto_45

    :cond_5f
    const v14, -0x33277df8

    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 2322
    new-instance v14, Landroidx/compose/material3/SearchBarDefaults$InputField$15$1;

    invoke-direct {v14, v3}, Landroidx/compose/material3/SearchBarDefaults$InputField$15$1;-><init>(Lbm3;)V

    const v0, 0x12bc937e

    move-object/from16 p7, v3

    const/16 v1, 0x36

    const/4 v3, 0x1

    invoke-static {v0, v3, v14, v9, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    .line 2323
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_45
    if-nez v4, :cond_60

    const v1, -0x33244fdc

    .line 2324
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 p8, v0

    const/4 v1, 0x0

    goto :goto_46

    :cond_60
    const v1, -0x33244fdb

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 2325
    new-instance v1, Landroidx/compose/material3/SearchBarDefaults$InputField$16$1;

    invoke-direct {v1, v4}, Landroidx/compose/material3/SearchBarDefaults$InputField$16$1;-><init>(Lbm3;)V

    const v3, 0x22aefcbf

    move-object/from16 p8, v0

    const/4 v0, 0x1

    const/16 v14, 0x36

    invoke-static {v3, v0, v1, v9, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    .line 2326
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_46
    const/16 v36, 0xf

    const/16 v37, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    .line 2327
    invoke-static/range {v31 .. v37}, Landroidx/compose/material3/TextFieldDefaults;->contentPaddingWithoutLabel-a9UjIt4$default(Landroidx/compose/material3/TextFieldDefaults;FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    .line 2328
    new-instance v3, Landroidx/compose/material3/SearchBarDefaults$InputField$17;

    invoke-direct {v3, v7, v2, v11, v6}, Landroidx/compose/material3/SearchBarDefaults$InputField$17;-><init>(Landroidx/compose/material3/TextFieldColors;ZZLandroidx/compose/ui/graphics/Shape;)V

    const v14, -0x5c791f98

    move-object/from16 p9, v0

    move-object/from16 p6, v1

    const/16 v0, 0x36

    const/4 v1, 0x1

    invoke-static {v14, v1, v3, v9, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v18

    or-int/lit16 v0, v15, 0x180

    shr-int/lit8 v3, v19, 0xc

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v0, v3

    shr-int/lit8 v3, v17, 0x3

    and-int/lit16 v14, v3, 0x1c00

    or-int/2addr v0, v14

    shr-int/lit8 v14, v19, 0x3

    const/high16 v20, 0x1c00000

    and-int v14, v14, v20

    or-int v20, v0, v14

    and-int/lit8 v0, v3, 0xe

    const/high16 v14, 0xd80000

    or-int/2addr v0, v14

    and-int/lit8 v14, v3, 0x70

    or-int/2addr v0, v14

    shr-int/lit8 v14, v17, 0x9

    const v32, 0xe000

    and-int v14, v14, v32

    or-int v21, v0, v14

    const/16 v22, 0x3060

    move-object/from16 v67, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    move v0, v15

    const/4 v15, 0x0

    move-object/from16 v57, p5

    move-object/from16 v60, p7

    move/from16 v33, v0

    move/from16 v41, v1

    move/from16 v34, v3

    move-object/from16 v61, v4

    move-object v4, v5

    move/from16 v29, v11

    move/from16 v0, v17

    move/from16 v58, v19

    move-object/from16 v1, v31

    const/16 v71, 0x0

    move-object/from16 v11, p6

    move-object/from16 v17, p9

    move-object/from16 v5, p13

    move v3, v2

    move-object/from16 v19, v9

    move-object/from16 v31, v10

    move-object/from16 v2, p1

    move-object/from16 v10, p8

    move-object/from16 v9, p14

    .line 2329
    invoke-virtual/range {v1 .. v22}, Landroidx/compose/material3/TextFieldDefaults;->decorator(Landroidx/compose/foundation/text/input/TextFieldState;ZLandroidx/compose/foundation/text/input/TextFieldLineLimits;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldLabelPosition;Ldm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;ZLandroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lbm3;Landroidx/compose/runtime/Composer;III)Landroidx/compose/foundation/text/input/TextFieldDecorator;

    move-result-object v1

    move v2, v3

    move-object v8, v4

    move-object/from16 v59, v9

    move-object/from16 v62, v12

    move-object/from16 v63, v13

    move-object/from16 v47, v19

    move-object v12, v5

    move-object/from16 v19, v16

    const/high16 v3, 0x6180000

    or-int v3, v33, v3

    shr-int/lit8 v4, v58, 0x9

    and-int/lit16 v5, v4, 0x380

    or-int/2addr v3, v5

    and-int/lit16 v4, v4, 0x1c00

    or-int/2addr v3, v4

    shl-int/lit8 v4, v0, 0x3

    and-int v4, v4, v32

    or-int v16, v3, v4

    shr-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0x380

    and-int v3, v34, v32

    or-int v17, v0, v3

    const/16 v18, 0x200

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object/from16 v108, p12

    move-object v13, v1

    move-object v10, v6

    move-object/from16 v5, v25

    move-object/from16 v1, v26

    move-object/from16 v6, v27

    move-object/from16 v7, v28

    move-object/from16 v11, v31

    move-object/from16 v15, v47

    move/from16 v3, v56

    move-object/from16 v4, v64

    move-object/from16 v14, v66

    .line 2330
    invoke-static/range {v0 .. v18}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Landroidx/compose/foundation/text/input/TextFieldLineLimits;Lbm3;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/input/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V

    if-nez p3, :cond_61

    if-eqz v29, :cond_61

    move/from16 v0, v41

    goto :goto_47

    :cond_61
    move/from16 v0, v71

    .line 2331
    :goto_47
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v5

    move-object/from16 v6, v108

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    .line 2332
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_62

    .line 2333
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v7, v5, :cond_63

    .line 2334
    :cond_62
    new-instance v7, Landroidx/compose/material3/SearchBarDefaults$InputField$18$1;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v6, v8}, Landroidx/compose/material3/SearchBarDefaults$InputField$18$1;-><init>(ZLandroidx/compose/ui/focus/FocusManager;Le02;)V

    .line 2335
    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2336
    :cond_63
    check-cast v7, Lbm3;

    shr-int/lit8 v0, v58, 0x6

    and-int/lit8 v0, v0, 0xe

    invoke-static {v1, v7, v15, v0}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lbm3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_64
    move v7, v2

    move v8, v3

    move-object/from16 v16, v12

    move-object/from16 v17, v14

    move-object/from16 v47, v15

    move-object/from16 v20, v23

    move-object/from16 v6, v54

    move-object/from16 v9, v57

    move-object/from16 v10, v59

    move-object/from16 v11, v60

    move-object/from16 v12, v61

    move-object/from16 v13, v62

    move-object/from16 v14, v63

    move-object/from16 v18, v67

    move-object v15, v4

    goto :goto_48

    .line 2337
    :cond_65
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v6, p5

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move v7, v8

    move v8, v10

    move-object v9, v11

    move-object v10, v14

    move-object/from16 v47, v15

    move-object/from16 v11, p10

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    .line 2338
    :goto_48
    invoke-interface/range {v47 .. v47}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_66

    move-object v1, v0

    new-instance v0, Ljj7;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move-object/from16 v109, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v23}, Ljj7;-><init>(Landroidx/compose/material3/SearchBarDefaults;Landroidx/compose/foundation/text/input/TextFieldState;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;III)V

    move-object/from16 v1, v109

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_66
    return-void
.end method

.method public final InputField(Ljava/lang/String;Lnl3;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V
    .locals 71
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
            "Landroidx/compose/material3/TextFieldColors;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p14

    move/from16 v13, p15

    move/from16 v14, p16

    const v1, 0x2c95da87

    move-object/from16 v2, p13

    .line 2339
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    and-int/lit8 v3, v14, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v12, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v12, 0x6

    if-nez v3, :cond_2

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v12

    goto :goto_1

    :cond_2
    move v3, v12

    :goto_1
    and-int/lit8 v6, v14, 0x2

    if-eqz v6, :cond_4

    or-int/lit8 v3, v3, 0x30

    :cond_3
    move-object/from16 v6, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v6, v12, 0x30

    if-nez v6, :cond_3

    move-object/from16 v6, p2

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/16 v15, 0x20

    goto :goto_2

    :cond_5
    const/16 v15, 0x10

    :goto_2
    or-int/2addr v3, v15

    :goto_3
    and-int/lit8 v15, v14, 0x4

    const/16 v16, 0x80

    if-eqz v15, :cond_6

    or-int/lit16 v3, v3, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v15, v12, 0x180

    if-nez v15, :cond_8

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    const/16 v15, 0x100

    goto :goto_4

    :cond_7
    move/from16 v15, v16

    :goto_4
    or-int/2addr v3, v15

    :cond_8
    :goto_5
    and-int/lit8 v15, v14, 0x8

    if-eqz v15, :cond_9

    or-int/lit16 v3, v3, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v15, v12, 0xc00

    if-nez v15, :cond_b

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v15

    if-eqz v15, :cond_a

    const/16 v15, 0x800

    goto :goto_6

    :cond_a
    const/16 v15, 0x400

    :goto_6
    or-int/2addr v3, v15

    :cond_b
    :goto_7
    and-int/lit8 v15, v14, 0x10

    if-eqz v15, :cond_c

    or-int/lit16 v3, v3, 0x6000

    goto :goto_9

    :cond_c
    and-int/lit16 v15, v12, 0x6000

    if-nez v15, :cond_e

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/16 v15, 0x4000

    goto :goto_8

    :cond_d
    const/16 v15, 0x2000

    :goto_8
    or-int/2addr v3, v15

    :cond_e
    :goto_9
    and-int/lit8 v15, v14, 0x20

    const/high16 v18, 0x30000

    if-eqz v15, :cond_f

    or-int v3, v3, v18

    move-object/from16 v7, p6

    goto :goto_b

    :cond_f
    and-int v18, v12, v18

    move-object/from16 v7, p6

    if-nez v18, :cond_11

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v18, 0x10000

    :goto_a
    or-int v3, v3, v18

    :cond_11
    :goto_b
    and-int/lit8 v18, v14, 0x40

    const/high16 v19, 0x180000

    if-eqz v18, :cond_12

    or-int v3, v3, v19

    move/from16 v8, p7

    goto :goto_d

    :cond_12
    and-int v19, v12, v19

    move/from16 v8, p7

    if-nez v19, :cond_14

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_13

    const/high16 v19, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v19, 0x80000

    :goto_c
    or-int v3, v3, v19

    :cond_14
    :goto_d
    and-int/lit16 v4, v14, 0x80

    const/high16 v19, 0xc00000

    if-eqz v4, :cond_15

    or-int v3, v3, v19

    move-object/from16 v5, p8

    goto :goto_f

    :cond_15
    and-int v19, v12, v19

    move-object/from16 v5, p8

    if-nez v19, :cond_17

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    const/high16 v19, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v19, 0x400000

    :goto_e
    or-int v3, v3, v19

    :cond_17
    :goto_f
    and-int/lit16 v1, v14, 0x100

    const/high16 v19, 0x6000000

    if-eqz v1, :cond_19

    or-int v3, v3, v19

    :cond_18
    move/from16 v19, v1

    move-object/from16 v1, p9

    goto :goto_11

    :cond_19
    and-int v19, v12, v19

    if-nez v19, :cond_18

    move/from16 v19, v1

    move-object/from16 v1, p9

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    const/high16 v20, 0x4000000

    goto :goto_10

    :cond_1a
    const/high16 v20, 0x2000000

    :goto_10
    or-int v3, v3, v20

    :goto_11
    and-int/lit16 v1, v14, 0x200

    const/high16 v20, 0x30000000

    if-eqz v1, :cond_1c

    or-int v3, v3, v20

    :cond_1b
    move/from16 v20, v1

    move-object/from16 v1, p10

    goto :goto_13

    :cond_1c
    and-int v20, v12, v20

    if-nez v20, :cond_1b

    move/from16 v20, v1

    move-object/from16 v1, p10

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1d

    const/high16 v21, 0x20000000

    goto :goto_12

    :cond_1d
    const/high16 v21, 0x10000000

    :goto_12
    or-int v3, v3, v21

    :goto_13
    and-int/lit8 v21, v13, 0x6

    if-nez v21, :cond_20

    and-int/lit16 v1, v14, 0x400

    if-nez v1, :cond_1e

    move-object/from16 v1, p11

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1f

    const/16 v21, 0x4

    goto :goto_14

    :cond_1e
    move-object/from16 v1, p11

    :cond_1f
    const/16 v21, 0x2

    :goto_14
    or-int v21, v13, v21

    goto :goto_15

    :cond_20
    move-object/from16 v1, p11

    move/from16 v21, v13

    :goto_15
    and-int/lit16 v1, v14, 0x800

    if-eqz v1, :cond_22

    or-int/lit8 v21, v21, 0x30

    move/from16 v66, v1

    :cond_21
    :goto_16
    move/from16 v1, v21

    goto :goto_18

    :cond_22
    and-int/lit8 v22, v13, 0x30

    move/from16 v66, v1

    move-object/from16 v1, p12

    if-nez v22, :cond_21

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_23

    const/16 v17, 0x20

    goto :goto_17

    :cond_23
    const/16 v17, 0x10

    :goto_17
    or-int v21, v21, v17

    goto :goto_16

    :goto_18
    move/from16 v17, v4

    and-int/lit16 v4, v14, 0x1000

    if-eqz v4, :cond_25

    or-int/lit16 v1, v1, 0x180

    :cond_24
    move-object/from16 v4, p0

    goto :goto_19

    :cond_25
    and-int/lit16 v4, v13, 0x180

    if-nez v4, :cond_24

    move-object/from16 v4, p0

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_26

    const/16 v16, 0x100

    :cond_26
    or-int v1, v1, v16

    :goto_19
    const v16, 0x12492493

    and-int v4, v3, v16

    const v5, 0x12492492

    if-ne v4, v5, :cond_28

    and-int/lit16 v4, v1, 0x93

    const/16 v5, 0x92

    if-eq v4, v5, :cond_27

    goto :goto_1a

    :cond_27
    const/4 v4, 0x0

    goto :goto_1b

    :cond_28
    :goto_1a
    const/4 v4, 0x1

    :goto_1b
    and-int/lit8 v5, v3, 0x1

    invoke-interface {v2, v4, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v4, p14, 0x1

    if-eqz v4, :cond_2b

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_29

    goto :goto_1c

    .line 2340
    :cond_29
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v4, v14, 0x400

    if-eqz v4, :cond_2a

    and-int/lit8 v1, v1, -0xf

    :cond_2a
    move-object/from16 v67, p9

    move-object/from16 v6, p10

    move-object/from16 v20, p12

    move-object v15, v2

    move-object v4, v7

    move v2, v8

    move-object/from16 v7, p8

    move v8, v1

    move-object/from16 v1, p11

    goto/16 :goto_22

    :cond_2b
    :goto_1c
    if-eqz v15, :cond_2c

    .line 2341
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_1d

    :cond_2c
    move-object v4, v7

    :goto_1d
    if-eqz v18, :cond_2d

    const/4 v8, 0x1

    :cond_2d
    if-eqz v17, :cond_2e

    const/4 v7, 0x0

    goto :goto_1e

    :cond_2e
    move-object/from16 v7, p8

    :goto_1e
    if-eqz v19, :cond_2f

    const/16 v67, 0x0

    goto :goto_1f

    :cond_2f
    move-object/from16 v67, p9

    :goto_1f
    if-eqz v20, :cond_30

    const/16 v68, 0x0

    goto :goto_20

    :cond_30
    move-object/from16 v68, p10

    :goto_20
    and-int/lit16 v15, v14, 0x400

    if-eqz v15, :cond_31

    shl-int/lit8 v15, v1, 0x3

    and-int/lit16 v15, v15, 0x1c00

    const v65, 0x7fffff

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const-wide/16 v59, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    move-object/from16 v61, v2

    move/from16 v64, v15

    move-object/from16 v15, p0

    .line 2342
    invoke-virtual/range {v15 .. v65}, Landroidx/compose/material3/SearchBarDefaults;->inputFieldColors-JVEmHcM(JJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIII)Landroidx/compose/material3/TextFieldColors;

    move-result-object v2

    move-object/from16 v15, v61

    and-int/lit8 v1, v1, -0xf

    goto :goto_21

    :cond_31
    move-object v15, v2

    move-object/from16 v2, p11

    :goto_21
    move v6, v8

    move v8, v1

    move-object v1, v2

    move v2, v6

    if-eqz v66, :cond_32

    move-object/from16 v6, v68

    const/16 v20, 0x0

    goto :goto_22

    :cond_32
    move-object/from16 v20, p12

    move-object/from16 v6, v68

    .line 2343
    :goto_22
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v16

    if-eqz v16, :cond_33

    const-string v5, "androidx.compose.material3.SearchBarDefaults.InputField (SearchBar.kt:1655)"

    const v12, 0x2c95da87

    invoke-static {v12, v3, v8, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_33
    if-nez v20, :cond_35

    const v5, 0x72aba354

    .line 2344
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 2345
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .line 2346
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v5, v8, :cond_34

    .line 2347
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v5

    .line 2348
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2349
    :cond_34
    check-cast v5, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_23
    const/4 v8, 0x0

    goto :goto_24

    :cond_35
    const v5, 0x5e89a7e3

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 v5, v20

    goto :goto_23

    .line 2350
    :goto_24
    invoke-static {v5, v15, v8}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v12

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 2351
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .line 2352
    sget-object v21, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p6, v4

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v12, v4, :cond_36

    .line 2353
    new-instance v12, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v12}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 2354
    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2355
    :cond_36
    check-cast v12, Landroidx/compose/ui/focus/FocusRequester;

    .line 2356
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFocusManager()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    .line 2357
    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    .line 2358
    check-cast v4, Landroidx/compose/ui/focus/FocusManager;

    .line 2359
    sget-object v18, Landroidx/compose/material3/internal/Strings;->Companion:Landroidx/compose/material3/internal/Strings$Companion;

    .line 2360
    sget v18, Landroidx/compose/material3/R$string;->m3c_search_bar_search:I

    move-object/from16 v19, v4

    invoke-static/range {v18 .. v18}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result v4

    move-object/from16 v18, v5

    const/4 v5, 0x0

    .line 2361
    invoke-static {v4, v15, v5}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    .line 2362
    sget v22, Landroidx/compose/material3/R$string;->m3c_suggestions_available:I

    move-object/from16 v23, v6

    invoke-static/range {v22 .. v22}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result v6

    .line 2363
    invoke-static {v6, v15, v5}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    .line 2364
    invoke-static {}, Landroidx/compose/material3/TextKt;->getLocalTextStyle()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    .line 2365
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/TextStyle;

    .line 2366
    invoke-virtual {v5}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v24

    const-wide/16 v26, 0x10

    cmp-long v5, v24, v26

    if-eqz v5, :cond_37

    :goto_25
    move-wide/from16 v27, v24

    goto :goto_26

    :cond_37
    const/4 v5, 0x0

    .line 2367
    invoke-virtual {v1, v2, v5, v8}, Landroidx/compose/material3/TextFieldColors;->textColor-XeAY9LY$material3(ZZZ)J

    move-result-wide v24

    goto :goto_25

    .line 2368
    :goto_26
    invoke-static {}, Landroidx/compose/material3/SearchBarKt;->getSearchBarMinWidth()F

    move-result v5

    .line 2369
    invoke-static {}, Landroidx/compose/material3/SearchBarKt;->access$getSearchBarMaxWidth$p()F

    move-result v22

    .line 2370
    sget v24, Landroidx/compose/material3/SearchBarDefaults;->InputFieldHeight:F

    const/16 v25, 0x8

    const/16 v26, 0x0

    const/16 v29, 0x0

    move/from16 p7, v5

    move/from16 p9, v22

    move/from16 p8, v24

    move/from16 p11, v25

    move-object/from16 p12, v26

    move/from16 p10, v29

    .line 2371
    invoke-static/range {p6 .. p12}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    move-object/from16 v22, p6

    .line 2372
    invoke-static {v5, v12}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const v12, 0xe000

    and-int/2addr v12, v3

    move/from16 v24, v2

    const/16 v2, 0x4000

    if-ne v12, v2, :cond_38

    const/4 v2, 0x1

    goto :goto_27

    :cond_38
    const/4 v2, 0x0

    .line 2373
    :goto_27
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v2, :cond_39

    .line 2374
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v12, v2, :cond_3a

    .line 2375
    :cond_39
    new-instance v12, Lqz1;

    const/4 v2, 0x2

    invoke-direct {v12, v11, v2}, Lqz1;-><init>(Ljava/lang/Object;I)V

    .line 2376
    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2377
    :cond_3a
    check-cast v12, Lnl3;

    invoke-static {v5, v12}, Landroidx/compose/ui/focus/FocusChangedModifierKt;->onFocusChanged(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 2378
    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    and-int/lit16 v12, v3, 0x1c00

    move/from16 p6, v5

    const/16 v5, 0x800

    if-ne v12, v5, :cond_3b

    const/4 v5, 0x1

    goto :goto_28

    :cond_3b
    const/4 v5, 0x0

    :goto_28
    or-int v5, p6, v5

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v5, v12

    .line 2379
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v5, :cond_3c

    .line 2380
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v12, v5, :cond_3d

    .line 2381
    :cond_3c
    new-instance v12, Lej7;

    invoke-direct {v12, v4, v10, v6}, Lej7;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 2382
    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2383
    :cond_3d
    check-cast v12, Lnl3;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v2, v5, v12, v6, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLnl3;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    .line 2384
    invoke-static {}, Landroidx/compose/material3/TextKt;->getLocalTextStyle()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    .line 2385
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/TextStyle;

    .line 2386
    new-instance v26, Landroidx/compose/ui/text/TextStyle;

    const v56, 0xfffffe

    const/16 v57, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-wide/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const-wide/16 v48, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    invoke-direct/range {v26 .. v57}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILjh2;)V

    move-object/from16 v4, v26

    invoke-virtual {v2, v4}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v25

    .line 2387
    new-instance v14, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/compose/material3/TextFieldColors;->cursorColor-vNxB06k$material3(Z)J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {v14, v4, v5, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLjh2;)V

    .line 2388
    new-instance v26, Landroidx/compose/foundation/text/KeyboardOptions;

    sget-object v4, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getSearch-eUduSuo()I

    move-result v30

    const/16 v34, 0x77

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v26 .. v35}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(ILjava/lang/Boolean;IILandroidx/compose/ui/text/input/PlatformImeOptions;Ljava/lang/Boolean;Landroidx/compose/ui/text/intl/LocaleList;ILjh2;)V

    and-int/lit16 v4, v3, 0x380

    const/16 v5, 0x100

    if-ne v4, v5, :cond_3e

    const/4 v4, 0x1

    goto :goto_29

    :cond_3e
    move v4, v2

    :goto_29
    and-int/lit8 v5, v3, 0xe

    const/4 v2, 0x4

    if-ne v5, v2, :cond_3f

    const/4 v2, 0x1

    goto :goto_2a

    :cond_3f
    const/4 v2, 0x0

    :goto_2a
    or-int/2addr v2, v4

    .line 2389
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_40

    .line 2390
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v4, v2, :cond_41

    .line 2391
    :cond_40
    new-instance v4, Lyt0;

    const/4 v2, 0x2

    invoke-direct {v4, v2, v9, v0}, Lyt0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2392
    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2393
    :cond_41
    move-object/from16 v32, v4

    check-cast v32, Lnl3;

    new-instance v27, Landroidx/compose/foundation/text/KeyboardActions;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x2f

    const/16 v35, 0x0

    invoke-direct/range {v27 .. v35}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;ILjh2;)V

    .line 2394
    new-instance v0, Landroidx/compose/material3/SearchBarDefaults$InputField$23;

    move/from16 v16, v3

    move-object v4, v7

    move-object/from16 v3, v18

    move-object/from16 v69, v19

    move-object/from16 v6, v23

    move/from16 v2, v24

    const/16 v19, 0x0

    move-object v7, v1

    move/from16 v18, v5

    move-object/from16 v5, v67

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/SearchBarDefaults$InputField$23;-><init>(Ljava/lang/String;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;Lbm3;Lbm3;Landroidx/compose/material3/TextFieldColors;Z)V

    move-object/from16 v24, v4

    move-object/from16 v68, v6

    move-object/from16 v23, v7

    move/from16 v28, v8

    const/16 v1, 0x36

    const v4, -0x308389bc

    const/4 v6, 0x1

    invoke-static {v4, v6, v0, v15, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/high16 v1, 0x6180000

    or-int v1, v18, v1

    and-int/lit8 v4, v16, 0x70

    or-int/2addr v1, v4

    shr-int/lit8 v4, v16, 0x9

    and-int/lit16 v5, v4, 0x1c00

    or-int v17, v1, v5

    const/high16 v18, 0x30000

    move/from16 v5, v19

    const/16 v19, 0x1e10

    move v1, v4

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v13, v3

    move v3, v2

    move-object v2, v12

    const/4 v12, 0x0

    move-object/from16 v7, v25

    move/from16 v25, v5

    move-object v5, v7

    move-object/from16 v16, v15

    move-object/from16 v7, v27

    move-object v15, v0

    move/from16 v27, v6

    move-object/from16 v6, v26

    move-object/from16 v0, p1

    move/from16 v26, v1

    move-object/from16 v1, p2

    .line 2395
    invoke-static/range {v0 .. v19}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField(Ljava/lang/String;Lnl3;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lnl3;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Ldm3;Landroidx/compose/runtime/Composer;III)V

    move v2, v3

    move-object/from16 v15, v16

    if-nez p4, :cond_42

    if-eqz v28, :cond_42

    move/from16 v12, v27

    goto :goto_2b

    :cond_42
    move/from16 v12, v25

    .line 2396
    :goto_2b
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v1

    move-object/from16 v4, v69

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 2397
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_43

    .line 2398
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_44

    .line 2399
    :cond_43
    new-instance v3, Landroidx/compose/material3/SearchBarDefaults$InputField$24$1;

    const/4 v6, 0x0

    invoke-direct {v3, v12, v4, v6}, Landroidx/compose/material3/SearchBarDefaults$InputField$24$1;-><init>(ZLandroidx/compose/ui/focus/FocusManager;Le02;)V

    .line 2400
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2401
    :cond_44
    check-cast v3, Lbm3;

    and-int/lit8 v1, v26, 0xe

    invoke-static {v0, v3, v15, v1}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lbm3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_45
    move v8, v2

    move-object/from16 v13, v20

    move-object/from16 v7, v22

    move-object/from16 v12, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v67

    move-object/from16 v11, v68

    goto :goto_2c

    :cond_46
    move-object v15, v2

    .line 2402
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    .line 2403
    :goto_2c
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_47

    move-object v1, v0

    new-instance v0, Lfj7;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v70, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v16}, Lfj7;-><init>(Landroidx/compose/material3/SearchBarDefaults;Ljava/lang/String;Lnl3;Lnl3;ZLnl3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Lbm3;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;III)V

    move-object/from16 v1, v70

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_47
    return-void
.end method

.method public final colors-Klgx-Pg(JJLandroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SearchBarColors;
    .locals 54

    move-object/from16 v0, p6

    move/from16 v1, p7

    and-int/lit8 v2, p8, 0x1

    const/4 v3, 0x6

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/SearchBarTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    move-wide/from16 v41, v4

    goto :goto_0

    :cond_0
    move-wide/from16 v41, p1

    :goto_0
    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_1

    sget-object v2, Landroidx/compose/material3/tokens/SearchViewTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchViewTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/SearchViewTokens;->getDividerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v2

    move-wide/from16 v52, v2

    goto :goto_1

    :cond_1
    move-wide/from16 v52, p3

    :goto_1
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_2

    and-int/lit8 v2, v1, 0xe

    shl-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    shl-int/lit8 v3, v1, 0x6

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v2, v3

    and-int/lit16 v3, v1, 0x1c00

    or-int v50, v2, v3

    const v51, 0xfffff

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    move-wide/from16 v43, v41

    move-wide/from16 v45, v41

    move-object/from16 v47, v0

    move v0, v1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v51}, Landroidx/compose/material3/SearchBarDefaults;->inputFieldColors-JVEmHcM(JJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIII)Landroidx/compose/material3/TextFieldColors;

    move-result-object v1

    goto :goto_2

    :cond_2
    move v0, v1

    move-object/from16 v1, p5

    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.SearchBarDefaults.colors (SearchBar.kt:1137)"

    const v4, 0x29d6871d

    invoke-static {v4, v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3
    new-instance v0, Landroidx/compose/material3/SearchBarColors;

    const/4 v2, 0x0

    move-object/from16 p0, v0

    move-object/from16 p5, v1

    move-object/from16 p6, v2

    move-wide/from16 p1, v41

    move-wide/from16 p3, v52

    invoke-direct/range {p0 .. p6}, Landroidx/compose/material3/SearchBarColors;-><init>(JJLandroidx/compose/material3/TextFieldColors;Ljh2;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    return-object v0
.end method

.method public final synthetic colors-dgg9oW8(JJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SearchBarColors;
    .locals 55
    .annotation runtime Lul2;
    .end annotation

    move-object/from16 v0, p5

    move/from16 v1, p6

    and-int/lit8 v2, p7, 0x1

    const/4 v3, 0x6

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/SearchBarTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    move-wide/from16 v41, v4

    goto :goto_0

    :cond_0
    move-wide/from16 v41, p1

    :goto_0
    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_1

    sget-object v2, Landroidx/compose/material3/tokens/SearchViewTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchViewTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/SearchViewTokens;->getDividerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    move-wide/from16 v52, v4

    goto :goto_1

    :cond_1
    move-wide/from16 v52, p3

    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v4, "androidx.compose.material3.SearchBarDefaults.colors (SearchBar.kt:1753)"

    const v5, 0x351f77ce

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    new-instance v54, Landroidx/compose/material3/SearchBarColors;

    and-int/lit8 v2, v1, 0xe

    shl-int/lit8 v4, v1, 0x3

    and-int/lit8 v5, v4, 0x70

    or-int/2addr v2, v5

    shl-int/2addr v1, v3

    and-int/lit16 v1, v1, 0x380

    or-int/2addr v1, v2

    and-int/lit16 v2, v4, 0x1c00

    or-int v50, v1, v2

    const v51, 0xfffff

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    move-wide/from16 v43, v41

    move-wide/from16 v45, v41

    move-object/from16 v1, p0

    move-object/from16 v47, v0

    invoke-virtual/range {v1 .. v51}, Landroidx/compose/material3/SearchBarDefaults;->inputFieldColors-JVEmHcM(JJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIII)Landroidx/compose/material3/TextFieldColors;

    move-result-object v0

    const/4 v1, 0x0

    move-object/from16 p5, v0

    move-object/from16 p6, v1

    move-wide/from16 p1, v41

    move-wide/from16 p3, v52

    move-object/from16 p0, v54

    invoke-direct/range {p0 .. p6}, Landroidx/compose/material3/SearchBarColors;-><init>(JJLandroidx/compose/material3/TextFieldColors;Ljh2;)V

    move-object/from16 v0, p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    return-object v0
.end method

.method public final enterAlwaysSearchBarScrollBehavior(FFLll3;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SearchBarScrollBehavior;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Lll3<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;Z",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material3/SearchBarScrollBehavior;"
        }
    .end annotation

    move-object/from16 v0, p7

    move/from16 v1, p8

    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_1

    const v3, -0x800001

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_2

    new-instance v4, Lkr2;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lkr2;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v4, Lll3;

    goto :goto_2

    :cond_3
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, p9, 0x8

    const/4 v6, 0x6

    if-eqz v5, :cond_4

    sget-object v5, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v5, v0, v6}, Landroidx/compose/material3/MotionSchemeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v5

    goto :goto_3

    :cond_4
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v7, p9, 0x10

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    invoke-static {v0, v8}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->rememberSplineBasedDecay(Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/DecayAnimationSpec;

    move-result-object v7

    goto :goto_4

    :cond_5
    move-object/from16 v7, p5

    :goto_4
    const/16 v9, 0x20

    and-int/lit8 v10, p9, 0x20

    if-eqz v10, :cond_6

    move v10, v8

    goto :goto_5

    :cond_6
    move/from16 v10, p6

    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, -0x1

    const-string v12, "androidx.compose.material3.SearchBarDefaults.enterAlwaysSearchBarScrollBehavior (SearchBar.kt:1094)"

    const v13, 0x48dde1b6

    invoke-static {v13, v1, v11, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_7
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    filled-new-array {v5, v7, v4, v11}, [Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->Companion:Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$Companion;

    invoke-virtual {v12, v4, v5, v7}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$Companion;->Saver(Lll3;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v12

    and-int/lit8 v13, v1, 0xe

    xor-int/2addr v6, v13

    const/4 v13, 0x4

    const/4 v14, 0x1

    if-le v6, v13, :cond_8

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v6

    if-nez v6, :cond_9

    :cond_8
    and-int/lit8 v6, v1, 0x6

    if-ne v6, v13, :cond_a

    :cond_9
    move v6, v14

    goto :goto_6

    :cond_a
    move v6, v8

    :goto_6
    and-int/lit8 v13, v1, 0x70

    xor-int/lit8 v13, v13, 0x30

    if-le v13, v9, :cond_b

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v13

    if-nez v13, :cond_c

    :cond_b
    and-int/lit8 v13, v1, 0x30

    if-ne v13, v9, :cond_d

    :cond_c
    move v9, v14

    goto :goto_7

    :cond_d
    move v9, v8

    :goto_7
    or-int/2addr v6, v9

    and-int/lit16 v9, v1, 0x380

    xor-int/lit16 v9, v9, 0x180

    const/16 v13, 0x100

    if-le v9, v13, :cond_e

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    :cond_e
    and-int/lit16 v9, v1, 0x180

    if-ne v9, v13, :cond_10

    :cond_f
    move v9, v14

    goto :goto_8

    :cond_10
    move v9, v8

    :goto_8
    or-int/2addr v6, v9

    const/high16 v9, 0x70000

    and-int/2addr v9, v1

    const/high16 v13, 0x30000

    xor-int/2addr v9, v13

    const/high16 v15, 0x20000

    if-le v9, v15, :cond_11

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v9

    if-nez v9, :cond_13

    :cond_11
    and-int/2addr v1, v13

    if-ne v1, v15, :cond_12

    goto :goto_9

    :cond_12
    move v14, v8

    :cond_13
    :goto_9
    or-int v1, v6, v14

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v1, v6

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v1, v6

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_14

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v6, v1, :cond_15

    :cond_14
    new-instance v1, Ldj7;

    move-object/from16 p0, v1

    move/from16 p1, v2

    move/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v7

    move/from16 p4, v10

    invoke-direct/range {p0 .. p6}, Ldj7;-><init>(FFLll3;ZLandroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;)V

    move-object/from16 v6, p0

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_15
    check-cast v6, Lll3;

    invoke-static {v11, v12, v6, v0, v8}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lll3;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_16
    return-object v0
.end method

.method public final getDockedShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;
    .locals 2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    const-string v0, "androidx.compose.material3.SearchBarDefaults.<get-dockedShape> (SearchBar.kt:1047)"

    const v1, -0x5644df09

    invoke-static {v1, p2, p0, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p0, Landroidx/compose/material3/tokens/SearchViewTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchViewTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/SearchViewTokens;->getDockedContainerShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object p0

    const/4 p2, 0x6

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method

.method public final getElevation-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/SearchBarDefaults;->Elevation:F

    return p0
.end method

.method public final getFullScreenShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;
    .locals 2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    const-string v0, "androidx.compose.material3.SearchBarDefaults.<get-fullScreenShape> (SearchBar.kt:1043)"

    const v1, -0x77cd8077

    invoke-static {v1, p2, p0, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p0, Landroidx/compose/material3/tokens/SearchViewTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchViewTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/SearchViewTokens;->getFullScreenContainerShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object p0

    const/4 p2, 0x6

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method

.method public final getFullScreenWindowInsets(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;
    .locals 2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    const-string v0, "androidx.compose.material3.SearchBarDefaults.<get-fullScreenWindowInsets> (SearchBar.kt:1059)"

    const v1, -0x68052b48

    invoke-static {v1, p2, p0, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p0, Landroidx/compose/foundation/layout/WindowInsets;->Companion:Landroidx/compose/foundation/layout/WindowInsets$Companion;

    const/4 p2, 0x6

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->getSafeDrawing(Landroidx/compose/foundation/layout/WindowInsets$Companion;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method

.method public final getInputFieldHeight-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/SearchBarDefaults;->InputFieldHeight:F

    return p0
.end method

.method public final getInputFieldShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;
    .locals 2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    const-string v0, "androidx.compose.material3.SearchBarDefaults.<get-inputFieldShape> (SearchBar.kt:1039)"

    const v1, -0x6988c70d

    invoke-static {v1, p2, p0, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p0, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/SearchBarTokens;->getContainerShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object p0

    const/4 p2, 0x6

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method

.method public final getShadowElevation-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/SearchBarDefaults;->ShadowElevation:F

    return p0
.end method

.method public final getTonalElevation-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/SearchBarDefaults;->TonalElevation:F

    return p0
.end method

.method public final getWindowInsets(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;
    .locals 2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    const-string v0, "androidx.compose.material3.SearchBarDefaults.<get-windowInsets> (SearchBar.kt:1053)"

    const v1, -0x6b0ba792

    invoke-static {v1, p2, p0, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p0, Landroidx/compose/foundation/layout/WindowInsets;->Companion:Landroidx/compose/foundation/layout/WindowInsets$Companion;

    const/4 p2, 0x6

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/internal/SystemBarsDefaultInsets_androidKt;->getSystemBarsForVisualComponents(Landroidx/compose/foundation/layout/WindowInsets$Companion;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object p0

    sget-object p1, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getHorizontal-JoeWqyM()I

    move-result p2

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getTop-JoeWqyM()I

    move-result p1

    invoke-static {p2, p1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->plus-gK_yJZ4(II)I

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/WindowInsetsKt;->only-bOOhFvg(Landroidx/compose/foundation/layout/WindowInsets;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method

.method public final synthetic inputFieldColors--u-KgnY(JJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material3/TextFieldColors;
    .locals 52
    .annotation runtime Lul2;
    .end annotation

    move-object/from16 v0, p24

    move/from16 v1, p25

    move/from16 v2, p26

    move/from16 v3, p27

    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x6

    if-eqz v4, :cond_0

    sget-object v4, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/SearchBarTokens;->getInputTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v6

    goto :goto_0

    :cond_0
    move-wide/from16 v6, p1

    :goto_0
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_1

    sget-object v4, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledInputColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v8

    invoke-static {v8, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v9

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledInputOpacity()F

    move-result v11

    const/16 v15, 0xe

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v16}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v8

    goto :goto_1

    :cond_1
    move-wide/from16 v8, p3

    :goto_1
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_2

    sget-object v4, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getCaretColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v10

    goto :goto_2

    :cond_2
    move-wide/from16 v10, p5

    :goto_2
    and-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_3

    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    goto :goto_3

    :cond_3
    move-object/from16 v4, p7

    :goto_3
    and-int/lit8 v12, v3, 0x10

    if-eqz v12, :cond_4

    sget-object v12, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v12}, Landroidx/compose/material3/tokens/SearchBarTokens;->getLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v12

    invoke-static {v12, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    goto :goto_4

    :cond_4
    move-wide/from16 v12, p8

    :goto_4
    and-int/lit8 v14, v3, 0x20

    if-eqz v14, :cond_5

    sget-object v14, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v14}, Landroidx/compose/material3/tokens/SearchBarTokens;->getLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v14

    invoke-static {v14, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v14

    goto :goto_5

    :cond_5
    move-wide/from16 v14, p10

    :goto_5
    and-int/lit8 v16, v3, 0x40

    if-eqz v16, :cond_6

    sget-object v16, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    move-object/from16 p1, v4

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v17

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledLeadingIconOpacity()F

    move-result v4

    const/16 v16, 0xe

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 p4, v4

    move/from16 p8, v16

    move-wide/from16 p2, v17

    move-object/from16 p9, v19

    move/from16 p5, v20

    move/from16 p6, v21

    move/from16 p7, v22

    invoke-static/range {p2 .. p9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v16

    goto :goto_6

    :cond_6
    move-object/from16 p1, v4

    move-wide/from16 v16, p12

    :goto_6
    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_7

    sget-object v4, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/SearchBarTokens;->getTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v18

    goto :goto_7

    :cond_7
    move-wide/from16 v18, p14

    :goto_7
    and-int/lit16 v4, v3, 0x100

    if-eqz v4, :cond_8

    sget-object v4, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/SearchBarTokens;->getTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v20

    goto :goto_8

    :cond_8
    move-wide/from16 v20, p16

    :goto_8
    and-int/lit16 v4, v3, 0x200

    if-eqz v4, :cond_9

    sget-object v4, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    move-object/from16 p2, v4

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v22

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledTrailingIconOpacity()F

    move-result v4

    const/16 v24, 0xe

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 p5, v4

    move-wide/from16 p3, v22

    move/from16 p9, v24

    move-object/from16 p10, v25

    move/from16 p6, v26

    move/from16 p7, v27

    move/from16 p8, v28

    invoke-static/range {p3 .. p10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v22

    goto :goto_9

    :cond_9
    move-wide/from16 v22, p18

    :goto_9
    and-int/lit16 v4, v3, 0x400

    if-eqz v4, :cond_a

    sget-object v4, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/SearchBarTokens;->getSupportingTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v24

    goto :goto_a

    :cond_a
    move-wide/from16 v24, p20

    :goto_a
    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_b

    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledInputColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v26

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledInputOpacity()F

    move-result v3

    const/16 v4, 0xe

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 p4, v3

    move/from16 p8, v4

    move-wide/from16 p2, v26

    move-object/from16 p9, v28

    move/from16 p5, v29

    move/from16 p6, v30

    move/from16 p7, v31

    invoke-static/range {p2 .. p9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v3

    move-wide/from16 v27, v3

    goto :goto_b

    :cond_b
    move-wide/from16 v27, p22

    :goto_b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_c

    const v3, 0x6dd3292a

    const-string v4, "androidx.compose.material3.SearchBarDefaults.inputFieldColors (SearchBar.kt:1854)"

    invoke-static {v3, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_c
    and-int/lit8 v3, v1, 0xe

    shl-int/lit8 v4, v1, 0x3

    and-int/lit8 v26, v4, 0x70

    or-int v3, v3, v26

    move/from16 v26, v5

    and-int/lit16 v5, v4, 0x380

    or-int/2addr v3, v5

    and-int/lit16 v5, v4, 0x1c00

    or-int/2addr v3, v5

    const v5, 0xe000

    and-int/2addr v5, v4

    or-int/2addr v3, v5

    const/high16 v5, 0x70000

    and-int/2addr v5, v4

    or-int/2addr v3, v5

    const/high16 v5, 0x380000

    and-int/2addr v5, v4

    or-int/2addr v3, v5

    const/high16 v5, 0x1c00000

    and-int/2addr v5, v4

    or-int/2addr v3, v5

    const/high16 v5, 0xe000000

    and-int/2addr v5, v4

    or-int/2addr v3, v5

    const/high16 v5, 0x70000000

    and-int/2addr v4, v5

    or-int v48, v3, v4

    shr-int/lit8 v1, v1, 0x1b

    and-int/lit8 v1, v1, 0xe

    shl-int/lit8 v3, v2, 0x3

    and-int/lit8 v4, v3, 0x70

    or-int/2addr v1, v4

    shl-int/lit8 v2, v2, 0x6

    and-int/lit16 v4, v2, 0x380

    or-int/2addr v1, v4

    and-int/lit16 v2, v2, 0x1c00

    or-int v49, v1, v2

    and-int/lit16 v1, v3, 0x1c00

    const v51, 0x7fc000

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    move-wide v4, v6

    move-wide v2, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v11, v12

    move-wide v13, v14

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move-wide/from16 v21, v22

    move-wide/from16 v23, v24

    move-wide/from16 v25, v23

    move-object/from16 v10, p1

    move-object/from16 v47, v0

    move/from16 v50, v1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v51}, Landroidx/compose/material3/SearchBarDefaults;->inputFieldColors-JVEmHcM(JJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIII)Landroidx/compose/material3/TextFieldColors;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_d
    return-object v0
.end method

.method public final synthetic inputFieldColors-ITpI4ow(JJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material3/TextFieldColors;
    .locals 58
    .annotation runtime Lul2;
    .end annotation

    move-object/from16 v0, p28

    move/from16 v1, p29

    move/from16 v2, p30

    move/from16 v3, p31

    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x6

    if-eqz v4, :cond_0

    sget-object v4, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/SearchBarTokens;->getInputTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v6

    goto :goto_0

    :cond_0
    move-wide/from16 v6, p1

    :goto_0
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_1

    sget-object v4, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/SearchBarTokens;->getInputTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v8

    goto :goto_1

    :cond_1
    move-wide/from16 v8, p3

    :goto_1
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_2

    sget-object v4, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledInputColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v10

    invoke-static {v10, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v11

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledInputOpacity()F

    move-result v13

    const/16 v17, 0xe

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v18}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v10

    goto :goto_2

    :cond_2
    move-wide/from16 v10, p5

    :goto_2
    and-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_3

    sget-object v4, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getCaretColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    goto :goto_3

    :cond_3
    move-wide/from16 v12, p7

    :goto_3
    and-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_4

    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    goto :goto_4

    :cond_4
    move-object/from16 v4, p9

    :goto_4
    and-int/lit8 v14, v3, 0x20

    if-eqz v14, :cond_5

    sget-object v14, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v14}, Landroidx/compose/material3/tokens/SearchBarTokens;->getLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v14

    invoke-static {v14, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v14

    goto :goto_5

    :cond_5
    move-wide/from16 v14, p10

    :goto_5
    and-int/lit8 v16, v3, 0x40

    if-eqz v16, :cond_6

    sget-object v16, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    move-object/from16 p1, v4

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/material3/tokens/SearchBarTokens;->getLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v16

    goto :goto_6

    :cond_6
    move-object/from16 p1, v4

    move-wide/from16 v16, p12

    :goto_6
    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_7

    sget-object v4, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    move-object/from16 p2, v4

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v18

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledLeadingIconOpacity()F

    move-result v4

    const/16 v20, 0xe

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 p5, v4

    move-wide/from16 p3, v18

    move/from16 p9, v20

    move-object/from16 p10, v21

    move/from16 p6, v22

    move/from16 p7, v23

    move/from16 p8, v24

    invoke-static/range {p3 .. p10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v18

    goto :goto_7

    :cond_7
    move-wide/from16 v18, p14

    :goto_7
    and-int/lit16 v4, v3, 0x100

    if-eqz v4, :cond_8

    sget-object v4, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/SearchBarTokens;->getTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v20

    goto :goto_8

    :cond_8
    move-wide/from16 v20, p16

    :goto_8
    and-int/lit16 v4, v3, 0x200

    if-eqz v4, :cond_9

    sget-object v4, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/SearchBarTokens;->getTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v22

    goto :goto_9

    :cond_9
    move-wide/from16 v22, p18

    :goto_9
    and-int/lit16 v4, v3, 0x400

    if-eqz v4, :cond_a

    sget-object v4, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    move-object/from16 p2, v4

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v24

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledTrailingIconOpacity()F

    move-result v4

    const/16 v26, 0xe

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 p5, v4

    move-wide/from16 p3, v24

    move/from16 p9, v26

    move-object/from16 p10, v27

    move/from16 p6, v28

    move/from16 p7, v29

    move/from16 p8, v30

    invoke-static/range {p3 .. p10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v24

    goto :goto_a

    :cond_a
    move-wide/from16 v24, p20

    :goto_a
    and-int/lit16 v4, v3, 0x800

    if-eqz v4, :cond_b

    sget-object v4, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/SearchBarTokens;->getSupportingTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v26

    goto :goto_b

    :cond_b
    move-wide/from16 v26, p22

    :goto_b
    and-int/lit16 v4, v3, 0x1000

    if-eqz v4, :cond_c

    sget-object v4, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/SearchBarTokens;->getSupportingTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v28

    goto :goto_c

    :cond_c
    move-wide/from16 v28, p24

    :goto_c
    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_d

    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledInputColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v30

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledInputOpacity()F

    move-result v3

    const/16 v4, 0xe

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move/from16 p4, v3

    move/from16 p8, v4

    move-wide/from16 p2, v30

    move-object/from16 p9, v32

    move/from16 p5, v33

    move/from16 p6, v34

    move/from16 p7, v35

    invoke-static/range {p2 .. p9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v3

    goto :goto_d

    :cond_d
    move-wide/from16 v3, p26

    :goto_d
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v30

    if-eqz v30, :cond_e

    const v5, -0x7a19b8c4

    move-wide/from16 p2, v3

    const-string v3, "androidx.compose.material3.SearchBarDefaults.inputFieldColors (SearchBar.kt:1794)"

    invoke-static {v5, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_e

    :cond_e
    move-wide/from16 p2, v3

    :goto_e
    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getInputPrefixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v30

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getInputPrefixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v32

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getInputPrefixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v34

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledInputOpacity()F

    move-result v4

    const/16 v36, 0xe

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move/from16 p6, v4

    move-wide/from16 p4, v34

    move/from16 p10, v36

    move-object/from16 p11, v37

    move/from16 p7, v38

    move/from16 p8, v39

    move/from16 p9, v40

    invoke-static/range {p4 .. p11}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v34

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getInputSuffixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v36

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getInputSuffixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v38

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getInputSuffixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v40

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledInputOpacity()F

    move-result v3

    const/16 v4, 0xe

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    move/from16 p6, v3

    move/from16 p10, v4

    move-wide/from16 p4, v40

    move-object/from16 p11, v42

    move/from16 p7, v43

    move/from16 p8, v44

    move/from16 p9, v45

    invoke-static/range {p4 .. p11}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v3

    sget-object v40, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual/range {v40 .. v40}, Landroidx/compose/material3/tokens/SearchBarTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v1

    invoke-static {v1, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v41

    invoke-virtual/range {v40 .. v40}, Landroidx/compose/material3/tokens/SearchBarTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v1

    invoke-static {v1, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v43

    invoke-virtual/range {v40 .. v40}, Landroidx/compose/material3/tokens/SearchBarTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v1

    invoke-static {v1, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v45

    const v1, 0x7ffffffe

    and-int v48, p29, v1

    and-int/lit16 v1, v2, 0x1ffe

    shr-int/lit8 v2, v2, 0x3

    and-int/lit16 v2, v2, 0x1c00

    const/16 v51, 0x0

    move-object/from16 v47, v0

    move/from16 v49, v1

    move/from16 v50, v2

    move-object/from16 v1, p0

    move-wide/from16 v52, v10

    move-object/from16 v10, p1

    move-wide/from16 v54, v26

    move-wide/from16 v56, v28

    move-wide/from16 v27, p2

    move-wide/from16 v29, v30

    move-wide/from16 v31, v32

    move-wide/from16 v33, v34

    move-wide/from16 v35, v36

    move-wide/from16 v37, v38

    move-wide/from16 v39, v3

    move-wide v2, v6

    move-wide v4, v8

    move-wide/from16 v6, v52

    move-wide v8, v12

    move-wide v11, v14

    move-wide/from16 v13, v16

    move-wide/from16 v15, v18

    move-wide/from16 v17, v20

    move-wide/from16 v19, v22

    move-wide/from16 v21, v24

    move-wide/from16 v23, v54

    move-wide/from16 v25, v56

    invoke-virtual/range {v1 .. v51}, Landroidx/compose/material3/SearchBarDefaults;->inputFieldColors-JVEmHcM(JJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIII)Landroidx/compose/material3/TextFieldColors;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_f
    return-object v0
.end method

.method public final inputFieldColors-JVEmHcM(JJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIII)Landroidx/compose/material3/TextFieldColors;
    .locals 97

    move-object/from16 v0, p46

    move/from16 v1, p47

    move/from16 v2, p48

    move/from16 v3, p50

    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x6

    if-eqz v4, :cond_0

    sget-object v4, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/SearchBarTokens;->getInputTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v6

    goto :goto_0

    :cond_0
    move-wide/from16 v6, p1

    :goto_0
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_1

    sget-object v4, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/SearchBarTokens;->getInputTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v8

    goto :goto_1

    :cond_1
    move-wide/from16 v8, p3

    :goto_1
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_2

    sget-object v4, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledInputColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v10

    invoke-static {v10, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v11

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledInputOpacity()F

    move-result v13

    const/16 v17, 0xe

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v18}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v10

    goto :goto_2

    :cond_2
    move-wide/from16 v10, p5

    :goto_2
    and-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_3

    sget-object v4, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getCaretColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    move-wide/from16 v18, v12

    goto :goto_3

    :cond_3
    move-wide/from16 v18, p7

    :goto_3
    and-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_4

    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    move-object/from16 v22, v4

    goto :goto_4

    :cond_4
    move-object/from16 v22, p9

    :goto_4
    and-int/lit8 v4, v3, 0x20

    if-eqz v4, :cond_5

    sget-object v4, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/SearchBarTokens;->getLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    move-wide/from16 v31, v12

    goto :goto_5

    :cond_5
    move-wide/from16 v31, p10

    :goto_5
    and-int/lit8 v4, v3, 0x40

    if-eqz v4, :cond_6

    sget-object v4, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/SearchBarTokens;->getLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    move-wide/from16 v33, v12

    goto :goto_6

    :cond_6
    move-wide/from16 v33, p12

    :goto_6
    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_7

    sget-object v4, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v12

    invoke-static {v12, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledLeadingIconOpacity()F

    move-result v4

    const/16 v14, 0xe

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move/from16 p2, v4

    move-wide/from16 p0, v12

    move/from16 p6, v14

    move-object/from16 p7, v15

    move/from16 p3, v16

    move/from16 p4, v17

    move/from16 p5, v20

    invoke-static/range {p0 .. p7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v12

    move-wide/from16 v35, v12

    goto :goto_7

    :cond_7
    move-wide/from16 v35, p14

    :goto_7
    and-int/lit16 v4, v3, 0x100

    if-eqz v4, :cond_8

    sget-object v4, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/SearchBarTokens;->getTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    move-wide/from16 v39, v12

    goto :goto_8

    :cond_8
    move-wide/from16 v39, p16

    :goto_8
    and-int/lit16 v4, v3, 0x200

    if-eqz v4, :cond_9

    sget-object v4, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/SearchBarTokens;->getTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    move-wide/from16 v41, v12

    goto :goto_9

    :cond_9
    move-wide/from16 v41, p18

    :goto_9
    and-int/lit16 v4, v3, 0x400

    if-eqz v4, :cond_a

    sget-object v4, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v12

    invoke-static {v12, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledTrailingIconOpacity()F

    move-result v4

    const/16 v14, 0xe

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move/from16 p2, v4

    move-wide/from16 p0, v12

    move/from16 p6, v14

    move-object/from16 p7, v15

    move/from16 p3, v16

    move/from16 p4, v17

    move/from16 p5, v20

    invoke-static/range {p0 .. p7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v12

    move-wide/from16 v43, v12

    goto :goto_a

    :cond_a
    move-wide/from16 v43, p20

    :goto_a
    and-int/lit16 v4, v3, 0x800

    if-eqz v4, :cond_b

    sget-object v4, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/SearchBarTokens;->getSupportingTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    move-wide/from16 v55, v12

    goto :goto_b

    :cond_b
    move-wide/from16 v55, p22

    :goto_b
    and-int/lit16 v4, v3, 0x1000

    if-eqz v4, :cond_c

    sget-object v4, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/SearchBarTokens;->getSupportingTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    move-wide/from16 v57, v12

    goto :goto_c

    :cond_c
    move-wide/from16 v57, p24

    :goto_c
    and-int/lit16 v4, v3, 0x2000

    if-eqz v4, :cond_d

    sget-object v4, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledInputColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v12

    invoke-static {v12, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledInputOpacity()F

    move-result v4

    const/16 v14, 0xe

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move/from16 p2, v4

    move-wide/from16 p0, v12

    move/from16 p6, v14

    move-object/from16 p7, v15

    move/from16 p3, v16

    move/from16 p4, v17

    move/from16 p5, v20

    invoke-static/range {p0 .. p7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v12

    move-wide/from16 v59, v12

    goto :goto_d

    :cond_d
    move-wide/from16 v59, p26

    :goto_d
    and-int/lit16 v4, v3, 0x4000

    if-eqz v4, :cond_e

    sget-object v4, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getInputPrefixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    move-wide/from16 v71, v12

    goto :goto_e

    :cond_e
    move-wide/from16 v71, p28

    :goto_e
    const v4, 0x8000

    and-int/2addr v4, v3

    if-eqz v4, :cond_f

    sget-object v4, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getInputPrefixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    move-wide/from16 v73, v12

    goto :goto_f

    :cond_f
    move-wide/from16 v73, p30

    :goto_f
    const/high16 v4, 0x10000

    and-int/2addr v4, v3

    if-eqz v4, :cond_10

    sget-object v4, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getInputPrefixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v12

    invoke-static {v12, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledInputOpacity()F

    move-result v4

    const/16 v14, 0xe

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move/from16 p2, v4

    move-wide/from16 p0, v12

    move/from16 p6, v14

    move-object/from16 p7, v15

    move/from16 p3, v16

    move/from16 p4, v17

    move/from16 p5, v20

    invoke-static/range {p0 .. p7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v12

    move-wide/from16 v75, v12

    goto :goto_10

    :cond_10
    move-wide/from16 v75, p32

    :goto_10
    const/high16 v4, 0x20000

    and-int/2addr v4, v3

    if-eqz v4, :cond_11

    sget-object v4, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getInputSuffixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    move-wide/from16 v79, v12

    goto :goto_11

    :cond_11
    move-wide/from16 v79, p34

    :goto_11
    const/high16 v4, 0x40000

    and-int/2addr v4, v3

    if-eqz v4, :cond_12

    sget-object v4, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getInputSuffixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    move-wide/from16 v81, v12

    goto :goto_12

    :cond_12
    move-wide/from16 v81, p36

    :goto_12
    const/high16 v4, 0x80000

    and-int/2addr v4, v3

    if-eqz v4, :cond_13

    sget-object v4, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getInputSuffixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v12

    invoke-static {v12, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledInputOpacity()F

    move-result v4

    const/16 v14, 0xe

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move/from16 p2, v4

    move-wide/from16 p0, v12

    move/from16 p6, v14

    move-object/from16 p7, v15

    move/from16 p3, v16

    move/from16 p4, v17

    move/from16 p5, v20

    invoke-static/range {p0 .. p7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v12

    move-wide/from16 v83, v12

    goto :goto_13

    :cond_13
    move-wide/from16 v83, p38

    :goto_13
    const/high16 v4, 0x100000

    and-int/2addr v4, v3

    if-eqz v4, :cond_14

    sget-object v4, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/SearchBarTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    goto :goto_14

    :cond_14
    move-wide/from16 v12, p40

    :goto_14
    const/high16 v4, 0x200000

    and-int/2addr v4, v3

    if-eqz v4, :cond_15

    sget-object v4, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/SearchBarTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v14

    goto :goto_15

    :cond_15
    move-wide/from16 v14, p42

    :goto_15
    const/high16 v4, 0x400000

    and-int/2addr v3, v4

    if-eqz v3, :cond_16

    sget-object v3, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/SearchBarTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v3

    invoke-static {v3, v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v3

    goto :goto_16

    :cond_16
    move-wide/from16 v3, p44

    :goto_16
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_17

    const v5, -0x77377c33

    const-string v0, "androidx.compose.material3.SearchBarDefaults.inputFieldColors (SearchBar.kt:1220)"

    invoke-static {v5, v1, v2, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_17
    sget-object v0, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    and-int/lit16 v5, v1, 0x3fe

    shl-int/lit8 v16, p49, 0xc

    const v17, 0xe000

    and-int v17, v16, v17

    or-int v5, v5, v17

    const/high16 v17, 0x70000

    and-int v20, v16, v17

    or-int v5, v5, v20

    const/high16 v20, 0x380000

    and-int v16, v16, v20

    or-int v5, v5, v16

    shl-int/lit8 v16, v1, 0xf

    const/high16 v21, 0xe000000

    and-int v16, v16, v21

    or-int v88, v5, v16

    shr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0xe

    and-int v16, v1, v17

    or-int v5, v5, v16

    and-int v16, v1, v20

    or-int v5, v5, v16

    const/high16 v16, 0x1c00000

    and-int v17, v1, v16

    or-int v5, v5, v17

    shl-int/lit8 v17, v1, 0x3

    const/high16 v20, 0x70000000

    and-int v17, v17, v20

    or-int v89, v5, v17

    shr-int/lit8 v1, v1, 0x1b

    and-int/lit8 v1, v1, 0xe

    shl-int/lit8 v5, v2, 0x3

    and-int/lit8 v17, v5, 0x70

    or-int v1, v1, v17

    shl-int/lit8 v17, v2, 0x12

    and-int v16, v17, v16

    or-int v1, v1, v16

    and-int v16, v17, v21

    or-int v1, v1, v16

    and-int v16, v17, v20

    or-int v90, v1, v16

    const/high16 v1, 0x1ff0000

    and-int/2addr v1, v5

    shl-int/lit8 v5, v2, 0x6

    and-int v5, v5, v20

    or-int v91, v1, v5

    shr-int/lit8 v1, v2, 0x18

    and-int/lit8 v2, v1, 0xe

    or-int/lit16 v2, v2, 0xc00

    and-int/lit8 v1, v1, 0x70

    or-int v92, v2, v1

    const v93, 0x47c47a88

    const/16 v94, 0x88f

    move-wide/from16 v95, v14

    move-wide v14, v3

    move-wide v2, v6

    move-wide v6, v10

    move-wide v10, v12

    move-wide/from16 v12, v95

    move-wide v4, v8

    const-wide/16 v8, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v61, 0x0

    const-wide/16 v63, 0x0

    const-wide/16 v65, 0x0

    const-wide/16 v67, 0x0

    const-wide/16 v69, 0x0

    const-wide/16 v77, 0x0

    const-wide/16 v85, 0x0

    move-object/from16 v87, p46

    move-object v1, v0

    invoke-virtual/range {v1 .. v94}, Landroidx/compose/material3/TextFieldDefaults;->colors-0hiis_0(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIIIIII)Landroidx/compose/material3/TextFieldColors;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_18
    return-object v0
.end method
