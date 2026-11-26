.class public final synthetic Lu12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lu12;->b:I

    iput-object p1, p0, Lu12;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lu12;->b:I

    iget-object p0, p0, Lu12;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->M(Lyads/nq0;)Lyads/rg2;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/gf0;

    invoke-static {p0}, Lyads/gf0;->k(Lyads/gf0;)Lyads/wu3;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/foundation/text/selection/SelectionManager;

    invoke-static {p0}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->a(Landroidx/compose/foundation/text/selection/SelectionManager;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/material3/internal/FloatProducer;

    invoke-static {p0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->c(Landroidx/compose/material3/internal/FloatProducer;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Ls96;

    iget-object v0, p0, Ls96;->j:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmp7;

    invoke-static {p0, v0}, Lx97;->a(Lmp7;[Lmp7;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/foundation/gestures/Orientation;

    invoke-static {p0}, Landroidx/compose/foundation/text/CoreTextFieldKt;->l(Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
