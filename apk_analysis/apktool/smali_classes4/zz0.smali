.class public final synthetic Lzz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lzz0;->b:I

    iput-object p1, p0, Lzz0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lzz0;->d:Ljava/lang/Object;

    iput-object p3, p0, Lzz0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lzz0;->b:I

    iget-object v1, p0, Lzz0;->e:Ljava/lang/Object;

    iget-object v2, p0, Lzz0;->d:Ljava/lang/Object;

    iget-object p0, p0, Lzz0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/google/firebase/perf/transport/TransportManager;

    check-cast v2, Lcom/google/firebase/perf/v1/GaugeMetric;

    check-cast v1, Lcom/google/firebase/perf/v1/ApplicationProcessState;

    invoke-static {p0, v2, v1}, Lcom/google/firebase/perf/transport/TransportManager;->f(Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/core/impl/CameraCaptureCallback;

    check-cast v2, Landroidx/camera/camera2/impl/CameraCallbackMap;

    check-cast v1, Landroidx/camera/camera2/pipe/RequestMetadata;

    invoke-static {p0, v2, v1}, Landroidx/camera/camera2/impl/CameraCallbackMap;->g(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
