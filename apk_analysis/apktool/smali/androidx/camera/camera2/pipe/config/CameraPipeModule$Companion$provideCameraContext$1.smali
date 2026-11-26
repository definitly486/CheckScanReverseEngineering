.class public final Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion$provideCameraContext$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CameraContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion;->provideCameraContext(Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraBackends;)Landroidx/camera/camera2/pipe/CameraContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final cameraBackends:Landroidx/camera/camera2/pipe/CameraBackends;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraBackends;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion$provideCameraContext$1;->appContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion$provideCameraContext$1;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion$provideCameraContext$1;->cameraBackends:Landroidx/camera/camera2/pipe/CameraBackends;

    return-void
.end method


# virtual methods
.method public getAppContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion$provideCameraContext$1;->appContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCameraBackends()Landroidx/camera/camera2/pipe/CameraBackends;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion$provideCameraContext$1;->cameraBackends:Landroidx/camera/camera2/pipe/CameraBackends;

    return-object p0
.end method

.method public getThreads()Landroidx/camera/camera2/pipe/core/Threads;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion$provideCameraContext$1;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    return-object p0
.end method
