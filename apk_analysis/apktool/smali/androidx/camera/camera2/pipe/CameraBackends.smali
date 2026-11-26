.class public interface abstract Landroidx/camera/camera2/pipe/CameraBackends;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract get-SG3A4s8(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;
.end method

.method public abstract getActiveIds()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraBackendId;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllIds()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraBackendId;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefault()Landroidx/camera/camera2/pipe/CameraBackend;
.end method

.method public abstract shutdown(Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
