.class final Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;
.super Landroidx/activity/ComponentDialog;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/platform/ViewRootForInspector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper$WhenMappings;
    }
.end annotation


# instance fields
.field private final composeView:Landroid/view/View;

.field private final dialogLayout:Landroidx/compose/material3/ModalWideNavigationRailDialogLayout;

.field private final maxSupportedElevation:F

.field private onDismissRequest:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private properties:Landroidx/compose/material3/ModalWideNavigationRailProperties;


# direct methods
.method public constructor <init>(Lll3;Landroidx/compose/material3/ModalWideNavigationRailProperties;Landroid/view/View;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Ljava/util/UUID;Lnl3;Lll3;Landroidx/compose/material3/RailPredictiveBackState;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;",
            "Landroidx/compose/material3/ModalWideNavigationRailProperties;",
            "Landroid/view/View;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/unit/Density;",
            "Ljava/util/UUID;",
            "Lnl3<",
            "-",
            "Ljava/lang/Float;",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Landroidx/compose/material3/RailPredictiveBackState;",
            "Z)V"
        }
    .end annotation

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroidx/compose/material3/R$style;->EdgeToEdgeFloatingDialogWindowTheme:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/activity/ComponentDialog;-><init>(Landroid/content/Context;IILjh2;)V

    iput-object p1, p0, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->onDismissRequest:Lll3;

    iput-object p2, p0, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->properties:Landroidx/compose/material3/ModalWideNavigationRailProperties;

    move-object/from16 p1, p3

    iput-object p1, p0, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->composeView:Landroid/view/View;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    iput v0, p0, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->maxSupportedElevation:F

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/view/Window;->requestFeature(I)Z

    const v3, 0x106000d

    invoke-virtual {v6, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-static {v6, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    new-instance v4, Landroidx/compose/material3/ModalWideNavigationRailDialogLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v3, p0, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->properties:Landroidx/compose/material3/ModalWideNavigationRailProperties;

    invoke-virtual {v3}, Landroidx/compose/material3/ModalWideNavigationRailProperties;->getShouldDismissOnBackPress()Z

    move-result v7

    iget-object v8, p0, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->onDismissRequest:Lll3;

    move-object/from16 v12, p4

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v4 .. v12}, Landroidx/compose/material3/ModalWideNavigationRailDialogLayout;-><init>(Landroid/content/Context;Landroid/view/Window;ZLll3;Lnl3;Lll3;Landroidx/compose/material3/RailPredictiveBackState;Landroidx/compose/ui/unit/LayoutDirection;)V

    sget v3, Landroidx/compose/ui/R$id;->compose_view_saveable_id_tag:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Dialog:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v7, p6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setElevation(F)V

    new-instance v0, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper$1$2;

    invoke-direct {v0}, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper$1$2;-><init>()V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iput-object v4, p0, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->dialogLayout:Landroidx/compose/material3/ModalWideNavigationRailDialogLayout;

    invoke-virtual {p0, v4}, Landroidx/activity/ComponentDialog;->setContentView(Landroid/view/View;)V

    invoke-static {p1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-static {v4, v0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    invoke-static {p1}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->get(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v0

    invoke-static {v4, v0}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V

    invoke-static {p1}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->get(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;

    move-result-object p1

    invoke-static {v4, p1}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    iget-object p1, p0, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->onDismissRequest:Lll3;

    iget-object v0, p0, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->properties:Landroidx/compose/material3/ModalWideNavigationRailProperties;

    invoke-virtual {p0, p1, v0, v12}, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->updateParameters(Lll3;Landroidx/compose/material3/ModalWideNavigationRailProperties;Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {v6, p1}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p1

    xor-int/lit8 v0, p10, 0x1

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V

    invoke-virtual {p0}, Landroidx/activity/ComponentDialog;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    new-instance v0, Landroidx/compose/material3/q2;

    invoke-direct {v0, p0}, Landroidx/compose/material3/q2;-><init>(Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 p3, p0

    move-object p2, p1

    move-object/from16 p5, v0

    move/from16 p6, v1

    move-object/from16 p7, v2

    move/from16 p4, v3

    invoke-static/range {p2 .. p7}, Landroidx/activity/OnBackPressedDispatcherKt;->addCallback$default(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleOwner;ZLnl3;ILjava/lang/Object;)Landroidx/activity/OnBackPressedCallback;

    return-void

    :cond_0
    const-string p0, "Dialog has no window"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    throw v3
.end method

.method private static final _init_$lambda$3(Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;Landroidx/activity/OnBackPressedCallback;)Lj59;
    .locals 0

    iget-object p1, p0, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->properties:Landroidx/compose/material3/ModalWideNavigationRailProperties;

    invoke-virtual {p1}, Landroidx/compose/material3/ModalWideNavigationRailProperties;->getShouldDismissOnBackPress()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->onDismissRequest:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic e(Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;Landroidx/activity/OnBackPressedCallback;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->_init_$lambda$3(Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;Landroidx/activity/OnBackPressedCallback;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 2

    iget-object p0, p0, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->dialogLayout:Landroidx/compose/material3/ModalWideNavigationRailDialogLayout;

    sget-object v0, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutDirection(I)V

    return-void
.end method

.method private final setSecurePolicy(Landroidx/compose/ui/window/SecureFlagPolicy;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->composeView:Landroid/view/View;

    invoke-static {v0}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->isFlagSecureEnabled(Landroid/view/View;)Z

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/material3/internal/BasicEdgeToEdgeDialog_androidKt;->shouldApplySecureFlag(Landroidx/compose/ui/window/SecureFlagPolicy;Z)Z

    move-result p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x2000

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/16 p1, -0x2001

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public final disposeComposition()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->dialogLayout:Landroidx/compose/material3/ModalWideNavigationRailDialogLayout;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->disposeComposition()V

    return-void
.end method

.method public getSubCompositionView()Landroidx/compose/ui/platform/AbstractComposeView;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->dialogLayout:Landroidx/compose/material3/ModalWideNavigationRailDialogLayout;

    return-object p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->onDismissRequest:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    :cond_0
    return p1
.end method

.method public final setContent(Landroidx/compose/runtime/CompositionContext;Lbm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/CompositionContext;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->dialogLayout:Landroidx/compose/material3/ModalWideNavigationRailDialogLayout;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ModalWideNavigationRailDialogLayout;->setContent(Landroidx/compose/runtime/CompositionContext;Lbm3;)V

    return-void
.end method

.method public final updateParameters(Lll3;Landroidx/compose/material3/ModalWideNavigationRailProperties;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;",
            "Landroidx/compose/material3/ModalWideNavigationRailProperties;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->onDismissRequest:Lll3;

    iput-object p2, p0, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->properties:Landroidx/compose/material3/ModalWideNavigationRailProperties;

    invoke-virtual {p2}, Landroidx/compose/material3/ModalWideNavigationRailProperties;->getSecurePolicy()Landroidx/compose/ui/window/SecureFlagPolicy;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->setSecurePolicy(Landroidx/compose/ui/window/SecureFlagPolicy;)V

    invoke-direct {p0, p3}, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, -0x1

    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_1

    const/16 p1, 0x30

    goto :goto_0

    :cond_1
    const/16 p1, 0x10

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_2
    return-void
.end method
