.class public final synthetic Leh0;
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

    iput p2, p0, Leh0;->b:I

    iput-object p1, p0, Leh0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Leh0;->b:I

    iget-object p0, p0, Leh0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lll3;

    invoke-static {p0}, Lyads/fc3;->a(Lll3;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    invoke-static {p0}, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;->b(Landroidx/compose/foundation/text/TextFieldScrollerPosition;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lnl3;

    invoke-static {p0}, Landroidx/compose/material3/ExposedDropdownMenuKt;->f(Lnl3;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/lifecycle/CoroutineLiveData;

    invoke-static {p0}, Landroidx/lifecycle/CoroutineLiveData;->a(Landroidx/lifecycle/CoroutineLiveData;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Landroidx/camera/core/CameraX;->b(Landroid/content/Context;)Landroidx/camera/core/RotationProvider;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->c(Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    invoke-static {p0}, Landroidx/compose/foundation/text/BasicTextKt;->r(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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
