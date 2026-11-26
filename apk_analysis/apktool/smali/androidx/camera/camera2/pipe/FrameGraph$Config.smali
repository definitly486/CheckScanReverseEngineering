.class public final Landroidx/camera/camera2/pipe/FrameGraph$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/FrameGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field private final cameraGraphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraGraph$Config;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/FrameGraph$Config;->cameraGraphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    return-void
.end method


# virtual methods
.method public final getCameraGraphConfig()Landroidx/camera/camera2/pipe/CameraGraph$Config;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/FrameGraph$Config;->cameraGraphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    return-object p0
.end method
