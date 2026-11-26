.class public interface abstract Landroidx/camera/camera2/pipe/internal/CameraErrorListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/internal/CameraErrorListener$DefaultImpls;
    }
.end annotation


# direct methods
.method public static synthetic onCameraError-3M5Xam4$default(Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    return-void

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: onCameraError-3M5Xam4"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract onCameraError-3M5Xam4(Ljava/lang/String;IZ)V
.end method
