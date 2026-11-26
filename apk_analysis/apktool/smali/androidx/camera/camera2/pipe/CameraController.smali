.class public interface abstract Landroidx/camera/camera2/pipe/CameraController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/CameraController$ControllerState;
    }
.end annotation


# direct methods
.method public static awaitClosed$suspendImpl(Landroidx/camera/camera2/pipe/CameraController;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraController;",
            "Le02<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public awaitClosed(Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/CameraController;->awaitClosed$suspendImpl(Landroidx/camera/camera2/pipe/CameraController;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract close()V
.end method

.method public abstract getCameraGraphId()Landroidx/camera/camera2/pipe/CameraGraphId;
.end method

.method public abstract getCameraId-Dz_R5H8()Ljava/lang/String;
.end method

.method public abstract getOutputLatency-n5Pu2dI(Landroidx/camera/camera2/pipe/StreamId;)Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;
.end method

.method public abstract isForeground()Z
.end method

.method public abstract setForeground(Z)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract updateSurfaceMap(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            "+",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation
.end method
