.class public final Landroidx/camera/camera2/adapter/CameraInternalAdapterKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final cameraAdapterIds:Llt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lkt;->b(I)Llt;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/adapter/CameraInternalAdapterKt;->cameraAdapterIds:Llt;

    return-void
.end method

.method public static final getCameraAdapterIds()Llt;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/adapter/CameraInternalAdapterKt;->cameraAdapterIds:Llt;

    return-object v0
.end method
