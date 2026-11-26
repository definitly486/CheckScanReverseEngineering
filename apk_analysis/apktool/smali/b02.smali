.class public final synthetic Lb02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

.field public final synthetic d:Ldm3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Ldm3;I)V
    .locals 0

    iput p3, p0, Lb02;->b:I

    iput-object p1, p0, Lb02;->c:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iput-object p2, p0, Lb02;->d:Ldm3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb02;->b:I

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lb02;->c:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iget-object p0, p0, Lb02;->d:Ldm3;

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/foundation/layout/FlowColumnOverflow$Companion;->a(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Ldm3;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lb02;->c:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iget-object p0, p0, Lb02;->d:Ldm3;

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion;->c(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Ldm3;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
