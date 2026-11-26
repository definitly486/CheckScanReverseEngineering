.class public final synthetic Lo44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lo44;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lo44;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lyads/lh1;->c(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lyads/jr0;->a(Ljava/lang/String;)Lyads/jr0;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lyads/t02;

    invoke-static {p1}, Lyads/a62;->a(Lyads/t02;)Lyads/br0;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;->b(F)Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Landroidx/work/impl/utils/PreferenceUtils;->a(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    invoke-static {p1}, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->b(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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
