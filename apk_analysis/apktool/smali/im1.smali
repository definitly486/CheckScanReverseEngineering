.class public final synthetic Lim1;
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

    iput p2, p0, Lim1;->b:I

    iput-object p1, p0, Lim1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lim1;->b:I

    iget-object p0, p0, Lim1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lbm3;

    check-cast p1, Ljava/lang/Exception;

    invoke-static {p0, p1}, Lyads/jk1;->b(Lbm3;Ljava/lang/Exception;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/b76;

    check-cast p1, Lyads/u66;

    invoke-static {p0, p1}, Lyads/b76;->a(Lyads/b76;Lyads/u66;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Ljava/lang/String;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-static {p0, p1}, Landroidx/compose/material3/TimePickerKt;->B(Ljava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/foundation/text/selection/SelectionManager;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->h(Landroidx/compose/foundation/text/selection/SelectionManager;J)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->a(Landroidx/camera/camera2/pipe/compat/RequestCloseById;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/paging/LoadStateAdapter;

    check-cast p1, Landroidx/paging/CombinedLoadStates;

    invoke-static {p0, p1}, Landroidx/paging/PagingDataAdapter;->d(Landroidx/paging/LoadStateAdapter;Landroidx/paging/CombinedLoadStates;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Landroidx/compose/ui/layout/Placeable;

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-static {p0, p1}, Landroidx/compose/material3/ClockFaceSizeModifier;->a(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

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
