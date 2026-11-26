.class public interface abstract Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;
    }
.end annotation


# virtual methods
.method public abstract getCameraAvailability()Ly68;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly68<",
            "Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCameraPriorities()Lys7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lys7<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end method
