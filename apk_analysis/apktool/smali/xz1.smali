.class public final synthetic Lxz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lxz1;->b:I

    iput-object p2, p0, Lxz1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lxz1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lxz1;->b:I

    iget-object v1, p0, Lxz1;->d:Ljava/lang/Object;

    iget-object p0, p0, Lxz1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/go1;

    check-cast v1, Ljava/util/ArrayList;

    check-cast p1, Lorg/json/JSONObject;

    check-cast p2, Lyads/tn1;

    invoke-static {p0, v1, p1, p2}, Lyads/go1;->a(Lyads/go1;Ljava/util/List;Lorg/json/JSONObject;Lyads/tn1;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    check-cast v1, Ldm3;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, v1, p1, p2}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion;->f(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Ldm3;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
