.class public final synthetic Lxs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lxs;->b:I

    iput-object p1, p0, Lxs;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lxs;->b:I

    iget-object p0, p0, Lxs;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/m62;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lyads/c62;->b(Lyads/m62;Z)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lr07;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Landroidx/navigation/NavGraphNavigator;->c(Lr07;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->b(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/runtime/collection/MutableVector;

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/FlowLayoutKt;->e(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/BasicTextFieldKt;->g(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/paging/AsyncPagingDataDiffer;

    check-cast p1, Landroidx/paging/CombinedLoadStates;

    invoke-static {p0, p1}, Landroidx/paging/AsyncPagingDataDiffer;->b(Landroidx/paging/AsyncPagingDataDiffer;Landroidx/paging/CombinedLoadStates;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
