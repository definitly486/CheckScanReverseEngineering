.class public final synthetic Ltz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

.field public final synthetic c:Landroid/hardware/camera2/CameraCaptureSession;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltz0;->b:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    iput-object p2, p0, Ltz0;->c:Landroid/hardware/camera2/CameraCaptureSession;

    iput-wide p3, p0, Ltz0;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ltz0;->c:Landroid/hardware/camera2/CameraCaptureSession;

    iget-wide v1, p0, Ltz0;->d:J

    iget-object p0, p0, Ltz0;->b:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    invoke-static {p0, v0, v1, v2}, Landroidx/camera/camera2/impl/CameraCallbackMap;->k(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;J)V

    return-void
.end method
