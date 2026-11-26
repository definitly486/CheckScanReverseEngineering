.class public final synthetic Llz0;
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

    iput p2, p0, Llz0;->b:I

    iput-object p1, p0, Llz0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Llz0;->b:I

    iget-object p0, p0, Llz0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/work/Worker;

    invoke-static {p0}, Landroidx/work/Worker;->c(Landroidx/work/Worker;)Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/animation/core/Transition;

    invoke-static {p0}, Landroidx/compose/animation/core/Transition;->d(Landroidx/compose/animation/core/Transition;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-static {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->d(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->a(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;

    invoke-static {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->F(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/camera/camera2/internal/HighSpeedResolver;

    invoke-static {p0}, Landroidx/camera/camera2/internal/HighSpeedResolver;->c(Landroidx/camera/camera2/internal/HighSpeedResolver;)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;

    invoke-static {p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->a(Landroidx/window/embedding/ExtensionEmbeddingBackend;)Landroidx/window/embedding/SplitController$SplitSupportStatus;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->b(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;)Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
