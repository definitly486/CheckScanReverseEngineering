.class public final synthetic Lvba;
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

    iput p2, p0, Lvba;->b:I

    iput-object p1, p0, Lvba;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lvba;->b:I

    iget-object p0, p0, Lvba;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->d(Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/tq3;

    invoke-static {p0}, Lyads/tq3;->p2(Lyads/tq3;)Lyads/f91;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lyads/tq3;

    invoke-static {p0}, Lyads/tq3;->Q1(Lyads/tq3;)Lyads/y51;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lyads/tq3;

    invoke-static {p0}, Lyads/tq3;->O8(Lyads/tq3;)Lyads/sa2;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lyads/tq3;

    invoke-static {p0}, Lyads/tq3;->O6(Lyads/tq3;)Lyads/oz1;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lyads/tq3;

    invoke-static {p0}, Lyads/tq3;->n5(Lyads/tq3;)Lyads/nq1;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lyads/tq3;

    invoke-static {p0}, Lyads/tq3;->G3(Lyads/tq3;)Lyads/xf1;

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
