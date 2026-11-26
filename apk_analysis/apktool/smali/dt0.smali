.class public final synthetic Ldt0;
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

    iput p2, p0, Ldt0;->b:I

    iput-object p1, p0, Ldt0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ldt0;->b:I

    iget-object p0, p0, Ldt0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, [Lbm3;

    check-cast p1, Lyads/n8;

    invoke-static {p0, p1}, Lyads/yl0;->c([Lbm3;Lyads/n8;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/wc5;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lyads/q31;->a(Lyads/wc5;Landroid/graphics/Bitmap;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Ljava/util/Collection;

    check-cast p1, Ljava/util/Set;

    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateSet;->a(Ljava/util/Collection;Ljava/util/Set;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/runtime/State;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/ScrollableStateKt;->a(Landroidx/compose/runtime/State;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/material3/SheetState;

    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    invoke-static {p0, p1}, Landroidx/compose/material3/BottomSheetScaffoldKt;->b(Landroidx/compose/material3/SheetState;Landroidx/compose/ui/graphics/GraphicsLayerScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
