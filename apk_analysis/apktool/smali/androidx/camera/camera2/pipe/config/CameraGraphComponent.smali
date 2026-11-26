.class public interface abstract Landroidx/camera/camera2/pipe/config/CameraGraphComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/camera/camera2/pipe/config/CameraGraphScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/config/CameraGraphComponent$Builder;
    }
.end annotation


# virtual methods
.method public abstract cameraGraph()Landroidx/camera/camera2/pipe/CameraGraph;
.end method

.method public abstract controller3A()Landroidx/camera/camera2/pipe/graph/Controller3A;
.end method

.method public abstract frameCaptureQueue()Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;
.end method

.method public abstract frameDistributor()Landroidx/camera/camera2/pipe/internal/FrameDistributor;
.end method

.method public abstract graphProcessor()Landroidx/camera/camera2/pipe/graph/GraphProcessor;
.end method

.method public abstract sessionLock()Landroidx/camera/camera2/pipe/internal/GraphSessionLock;
.end method
