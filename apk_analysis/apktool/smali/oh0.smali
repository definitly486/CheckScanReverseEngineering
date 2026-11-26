.class public final synthetic Loh0;
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

    iput p2, p0, Loh0;->b:I

    iput-object p1, p0, Loh0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Loh0;->b:I

    iget-object p0, p0, Loh0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/yf2;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lyads/yf2;->a(Lyads/yf2;Ljava/lang/String;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lxo9;

    invoke-static {p0, p1}, Lyads/bt0;->a(Lll3;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Ljava/lang/String;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {p0, p1}, Landroidx/work/impl/model/WorkTagDao_Impl;->d(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/runtime/State;

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/Scrollable2DStateKt;->a(Landroidx/compose/runtime/State;Landroidx/compose/ui/geometry/Offset;)Landroidx/compose/ui/geometry/Offset;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->e(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/material3/SheetState;

    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    invoke-static {p0, p1}, Landroidx/compose/material3/BottomSheetScaffoldKt;->e(Landroidx/compose/material3/SheetState;Landroidx/compose/ui/graphics/GraphicsLayerScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Landroidx/compose/material3/TooltipState;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-static {p0, p1}, Landroidx/compose/material3/internal/BasicTooltipKt;->g(Landroidx/compose/material3/TooltipState;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
