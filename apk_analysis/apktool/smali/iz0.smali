.class public final synthetic Liz0;
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

    iput p2, p0, Liz0;->b:I

    iput-object p1, p0, Liz0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Liz0;->b:I

    iget-object p0, p0, Liz0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/al4;

    invoke-static {p0}, Lyads/al4;->a(Lyads/al4;)Lyads/qk2;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/foundation/ScrollState;

    invoke-static {p0}, Landroidx/compose/foundation/ScrollState;->c(Landroidx/compose/foundation/ScrollState;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    invoke-static {p0}, Landroidx/compose/runtime/GapComposer;->d(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/tooling/ComposeStackTrace;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->h(Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
