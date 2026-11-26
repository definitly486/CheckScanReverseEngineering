.class public final synthetic Lmca;
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

    iput p2, p0, Lmca;->b:I

    iput-object p1, p0, Lmca;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmca;->b:I

    iget-object p0, p0, Lmca;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-static {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt;->e(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/tq3;

    invoke-static {p0}, Lyads/tq3;->D2(Lyads/tq3;)Lyads/ra1;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lyads/tq3;

    invoke-static {p0}, Lyads/tq3;->ka(Lyads/tq3;)Lyads/vr5;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lyads/tq3;

    invoke-static {p0}, Lyads/tq3;->e(Lyads/tq3;)Lyads/lj;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lyads/tq3;

    invoke-static {p0}, Lyads/tq3;->c7(Lyads/tq3;)Lyads/z02;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lyads/tq3;

    invoke-static {p0}, Lyads/tq3;->E5(Lyads/tq3;)Lyads/ms1;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lyads/tq3;

    invoke-static {p0}, Lyads/tq3;->U3(Lyads/tq3;)Lyads/sh1;

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
