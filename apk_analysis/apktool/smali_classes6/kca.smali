.class public final synthetic Lkca;
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

    iput p2, p0, Lkca;->b:I

    iput-object p1, p0, Lkca;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkca;->b:I

    iget-object p0, p0, Lkca;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/runtime/State;

    invoke-static {p0}, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;->a(Landroidx/compose/runtime/State;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/tq3;

    invoke-static {p0}, Lyads/tq3;->B2(Lyads/tq3;)Lyads/pa1;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lyads/tq3;

    invoke-static {p0}, Lyads/tq3;->ia(Lyads/tq3;)Lyads/rr5;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lyads/tq3;

    invoke-static {p0}, Lyads/tq3;->q8(Lyads/tq3;)Lyads/y82;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lyads/tq3;

    invoke-static {p0}, Lyads/tq3;->g7(Lyads/tq3;)Lyads/k12;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lyads/tq3;

    invoke-static {p0}, Lyads/tq3;->t5(Lyads/tq3;)Lyads/zq1;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lyads/tq3;

    invoke-static {p0}, Lyads/tq3;->u0(Lyads/tq3;)Lyads/ru0;

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
