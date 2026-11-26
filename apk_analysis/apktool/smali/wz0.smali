.class public final synthetic Lwz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

.field public final synthetic c:Landroid/hardware/camera2/CameraCaptureSession;

.field public final synthetic d:Landroid/hardware/camera2/CaptureRequest;

.field public final synthetic e:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwz0;->b:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    iput-object p2, p0, Lwz0;->c:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object p3, p0, Lwz0;->d:Landroid/hardware/camera2/CaptureRequest;

    iput-object p4, p0, Lwz0;->e:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lwz0;->d:Landroid/hardware/camera2/CaptureRequest;

    iget-object v1, p0, Lwz0;->e:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v2, p0, Lwz0;->b:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    iget-object p0, p0, Lwz0;->c:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {v2, p0, v0, v1}, Landroidx/camera/camera2/impl/CameraCallbackMap;->l(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method
