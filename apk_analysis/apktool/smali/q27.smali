.class public final synthetic Lq27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcm3;


# direct methods
.method public synthetic constructor <init>(Lcm3;II)V
    .locals 0

    iput p3, p0, Lq27;->b:I

    iput-object p1, p0, Lq27;->d:Lcm3;

    iput p2, p0, Lq27;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lq27;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lq27;->d:Lcm3;

    check-cast v0, Lbm3;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget p0, p0, Lq27;->c:I

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionContainerKt;->j(Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lq27;->d:Lcm3;

    check-cast v0, Lnl3;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget p0, p0, Lq27;->c:I

    invoke-static {v0, p0, p1, p2}, Landroidx/activity/compose/ReportDrawnKt;->c(Lnl3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
