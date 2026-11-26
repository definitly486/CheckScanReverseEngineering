.class public final synthetic Ld01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/core/impl/CameraCaptureCallback;

.field public final synthetic c:Landroidx/camera/camera2/impl/CameraCallbackMap;

.field public final synthetic d:Landroidx/camera/camera2/pipe/RequestMetadata;

.field public final synthetic e:Landroidx/camera/core/impl/CameraCaptureFailure;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;Landroidx/camera/core/impl/CameraCaptureFailure;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld01;->b:Landroidx/camera/core/impl/CameraCaptureCallback;

    iput-object p2, p0, Ld01;->c:Landroidx/camera/camera2/impl/CameraCallbackMap;

    iput-object p3, p0, Ld01;->d:Landroidx/camera/camera2/pipe/RequestMetadata;

    iput-object p4, p0, Ld01;->e:Landroidx/camera/core/impl/CameraCaptureFailure;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ld01;->d:Landroidx/camera/camera2/pipe/RequestMetadata;

    iget-object v1, p0, Ld01;->e:Landroidx/camera/core/impl/CameraCaptureFailure;

    iget-object v2, p0, Ld01;->b:Landroidx/camera/core/impl/CameraCaptureCallback;

    iget-object p0, p0, Ld01;->c:Landroidx/camera/camera2/impl/CameraCallbackMap;

    invoke-static {v2, p0, v0, v1}, Landroidx/camera/camera2/impl/CameraCallbackMap;->f(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;Landroidx/camera/core/impl/CameraCaptureFailure;)V

    return-void
.end method
