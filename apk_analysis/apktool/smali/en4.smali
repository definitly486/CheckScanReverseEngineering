.class public final synthetic Len4;
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

    iput p2, p0, Len4;->b:I

    iput-object p1, p0, Len4;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Len4;->b:I

    iget-object p0, p0, Len4;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/foundation/text/selection/SelectionManager;

    check-cast p1, Landroidx/compose/ui/focus/FocusState;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->n(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/ui/focus/FocusState;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->a(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->e(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
