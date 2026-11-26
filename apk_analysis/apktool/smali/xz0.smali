.class public final synthetic Lxz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/core/impl/CameraCaptureCallback;

.field public final synthetic c:Landroidx/camera/camera2/impl/CameraCallbackMap;

.field public final synthetic d:Landroidx/camera/camera2/pipe/RequestMetadata;

.field public final synthetic e:Landroidx/camera/camera2/adapter/CaptureResultAdapter;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;Landroidx/camera/camera2/adapter/CaptureResultAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxz0;->b:Landroidx/camera/core/impl/CameraCaptureCallback;

    iput-object p2, p0, Lxz0;->c:Landroidx/camera/camera2/impl/CameraCallbackMap;

    iput-object p3, p0, Lxz0;->d:Landroidx/camera/camera2/pipe/RequestMetadata;

    iput-object p4, p0, Lxz0;->e:Landroidx/camera/camera2/adapter/CaptureResultAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lxz0;->d:Landroidx/camera/camera2/pipe/RequestMetadata;

    iget-object v1, p0, Lxz0;->e:Landroidx/camera/camera2/adapter/CaptureResultAdapter;

    iget-object v2, p0, Lxz0;->b:Landroidx/camera/core/impl/CameraCaptureCallback;

    iget-object p0, p0, Lxz0;->c:Landroidx/camera/camera2/impl/CameraCallbackMap;

    invoke-static {v2, p0, v0, v1}, Landroidx/camera/camera2/impl/CameraCallbackMap;->d(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;Landroidx/camera/camera2/adapter/CaptureResultAdapter;)V

    return-void
.end method
