.class public final synthetic Lcl5;
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

    iput p2, p0, Lcl5;->b:I

    iput-object p1, p0, Lcl5;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcl5;->b:I

    iget-object p0, p0, Lcl5;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/zl4;

    check-cast p1, Lyads/sd4;

    invoke-static {p0, p1}, Lyads/zl4;->a(Lyads/zl4;Lyads/sd4;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lbm3;

    check-cast p1, Ljava/lang/Exception;

    invoke-static {p0, p1}, Lyads/jk1;->a(Lbm3;Ljava/lang/Exception;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Ljava/lang/String;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {p0, p1}, Landroidx/work/impl/model/WorkProgressDao_Impl;->b(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Landroidx/work/Data;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/foundation/text/selection/SelectionManager;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->e(Landroidx/compose/foundation/text/selection/SelectionManager;J)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/foundation/content/ReceiveContentNode;

    check-cast p1, Landroidx/compose/ui/draganddrop/DragAndDropEvent;

    invoke-static {p0, p1}, Landroidx/compose/foundation/content/ReceiveContentNode;->a(Landroidx/compose/foundation/content/ReceiveContentNode;Landroidx/compose/ui/draganddrop/DragAndDropEvent;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lxp1;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->c(Lxp1;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lll3;

    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    invoke-static {p0, p1}, Landroidx/compose/material3/NavigationItemKt;->d(Lll3;Landroidx/compose/ui/graphics/GraphicsLayerScope;)Lj59;

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
