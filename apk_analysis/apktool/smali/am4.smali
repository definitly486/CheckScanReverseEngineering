.class public final synthetic Lam4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lam4;->b:I

    iput-object p2, p0, Lam4;->c:Ljava/lang/Object;

    iput-object p3, p0, Lam4;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lam4;->b:I

    iget-object v1, p0, Lam4;->d:Ljava/lang/Object;

    iget-object p0, p0, Lam4;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/animation/core/Transition;

    check-cast v1, Landroidx/compose/animation/core/Transition$DeferredAnimation;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-static {p0, v1, p1}, Landroidx/compose/animation/core/TransitionKt;->i(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/ui/unit/Density;

    check-cast v1, Landroidx/compose/runtime/MutableState;

    check-cast p1, Lll3;

    invoke-static {p0, v1, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt;->j(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;Lll3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/material3/SheetState;

    check-cast v1, Landroidx/compose/animation/core/Animatable;

    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    invoke-static {p0, v1, p1}, Landroidx/compose/material3/ModalBottomSheetKt;->r(Landroidx/compose/material3/SheetState;Landroidx/compose/animation/core/Animatable;Landroidx/compose/ui/graphics/GraphicsLayerScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, v1, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->d(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
