.class public interface abstract Landroidx/camera/camera2/pipe/compat/VirtualCamera;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/VirtualCamera$DefaultImpls;
    }
.end annotation


# direct methods
.method public static synthetic disconnect-TPqeGZw$default(Landroidx/camera/camera2/pipe/compat/VirtualCamera;Landroidx/camera/camera2/pipe/CameraError;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/compat/VirtualCamera;->disconnect-TPqeGZw(Landroidx/camera/camera2/pipe/CameraError;)V

    return-void

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: disconnect-TPqeGZw"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract disconnect-TPqeGZw(Landroidx/camera/camera2/pipe/CameraError;)V
.end method

.method public abstract getState()Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Landroidx/camera/camera2/pipe/compat/CameraState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getValue()Landroidx/camera/camera2/pipe/compat/CameraState;
.end method
