.class public final synthetic Lsz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

.field public final synthetic c:Ldm3;


# direct methods
.method public synthetic constructor <init>(Ldm3;Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsz1;->b:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iput-object p1, p0, Lsz1;->c:Ldm3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lsz1;->b:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iget-object p0, p0, Lsz1;->c:Ldm3;

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/foundation/layout/ContextualFlowColumnOverflow$Companion;->b(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Ldm3;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
