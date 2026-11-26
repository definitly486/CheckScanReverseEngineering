.class public final synthetic Lir2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lll3;


# direct methods
.method public synthetic constructor <init>(Lll3;I)V
    .locals 0

    iput p2, p0, Lir2;->b:I

    iput-object p1, p0, Lir2;->c:Lll3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lir2;->b:I

    iget-object p0, p0, Lir2;->c:Lll3;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/unit/Density;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt;->d(Lll3;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/geometry/Offset;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->i(Lll3;Landroidx/compose/ui/input/pointer/PointerInputChange;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
