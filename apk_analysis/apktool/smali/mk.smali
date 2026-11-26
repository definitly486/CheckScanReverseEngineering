.class public final synthetic Lmk;
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

    iput p2, p0, Lmk;->b:I

    iput-object p1, p0, Lmk;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmk;->b:I

    iget-object p0, p0, Lmk;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lyads/sy0;->a(Ljava/lang/Object;Ljava/util/List;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lll3;

    check-cast p1, Landroidx/compose/ui/unit/Density;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt;->e(Lll3;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/geometry/Offset;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/ui/graphics/ColorProducer;

    check-cast p1, Landroidx/compose/ui/draw/CacheDrawScope;

    invoke-static {p0, p1}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Ldm3;

    check-cast p1, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/FlowRowOverflow$Companion;->d(Ldm3;Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)Lbm3;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->c(Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;Ljava/lang/Object;)Lj59;

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
