.class public final synthetic Lyz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lyz0;->b:I

    iput-object p2, p0, Lyz0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lyz0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lyz0;->b:I

    iget-object v1, p0, Lyz0;->d:Ljava/lang/Object;

    iget-object p0, p0, Lyz0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    check-cast v1, Landroid/graphics/SurfaceTexture;

    invoke-static {p0, v1}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->b(Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    check-cast v1, Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {p0, v1}, Landroidx/camera/camera2/impl/CameraCallbackMap;->n(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
