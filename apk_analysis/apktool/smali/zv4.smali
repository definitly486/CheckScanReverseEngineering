.class public final synthetic Lzv4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/foundation/text/TextDragObserver;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/TextDragObserver;I)V
    .locals 0

    iput p2, p0, Lzv4;->b:I

    iput-object p1, p0, Lzv4;->c:Landroidx/compose/foundation/text/TextDragObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lzv4;->b:I

    iget-object p0, p0, Lzv4;->c:Landroidx/compose/foundation/text/TextDragObserver;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->b(Landroidx/compose/foundation/text/TextDragObserver;Landroidx/compose/ui/input/pointer/PointerInputChange;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/LongPressTextDragObserverKt;->c(Landroidx/compose/foundation/text/TextDragObserver;Landroidx/compose/ui/geometry/Offset;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
