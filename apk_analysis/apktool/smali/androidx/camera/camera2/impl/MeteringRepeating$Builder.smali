.class public final Landroidx/camera/camera2/impl/MeteringRepeating$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/UseCaseConfig$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/impl/MeteringRepeating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/UseCaseConfig$Builder<",
        "Landroidx/camera/camera2/impl/MeteringRepeating;",
        "Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;",
        "Landroidx/camera/camera2/impl/MeteringRepeating$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private final cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

.field private final displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/DisplayInfoManager;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    iput-object p2, p0, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/camera2/impl/MeteringRepeating;
    .locals 3

    new-instance v0, Landroidx/camera/camera2/impl/MeteringRepeating;

    iget-object v1, p0, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->getUseCaseConfig()Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;

    move-result-object v2

    iget-object p0, p0, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    invoke-direct {v0, v1, v2, p0}, Landroidx/camera/camera2/impl/MeteringRepeating;-><init>(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;Landroidx/camera/camera2/impl/DisplayInfoManager;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->build()Landroidx/camera/camera2/impl/MeteringRepeating;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getMutableConfig()Landroidx/camera/core/impl/MutableConfig;
    .locals 0

    .line 8
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object p0

    return-object p0
.end method

.method public getMutableConfig()Landroidx/camera/core/impl/MutableOptionsBundle;
    .locals 0

    invoke-static {}, Landroidx/camera/core/impl/MutableOptionsBundle;->create()Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public getUseCaseConfig()Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;
    .locals 0

    new-instance p0, Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;

    invoke-direct {p0}, Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;
    .locals 0

    .line 6
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->getUseCaseConfig()Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;

    move-result-object p0

    return-object p0
.end method

.method public setCaptureOptionUnpacker(Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;)Landroidx/camera/camera2/impl/MeteringRepeating$Builder;
    .locals 0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public bridge synthetic setCaptureOptionUnpacker(Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->setCaptureOptionUnpacker(Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;)Landroidx/camera/camera2/impl/MeteringRepeating$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setCaptureType(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;)Landroidx/camera/camera2/impl/MeteringRepeating$Builder;
    .locals 0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public bridge synthetic setCaptureType(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->setCaptureType(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;)Landroidx/camera/camera2/impl/MeteringRepeating$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setDefaultCaptureConfig(Landroidx/camera/core/impl/CaptureConfig;)Landroidx/camera/camera2/impl/MeteringRepeating$Builder;
    .locals 0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public bridge synthetic setDefaultCaptureConfig(Landroidx/camera/core/impl/CaptureConfig;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->setDefaultCaptureConfig(Landroidx/camera/core/impl/CaptureConfig;)Landroidx/camera/camera2/impl/MeteringRepeating$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setDefaultSessionConfig(Landroidx/camera/core/impl/SessionConfig;)Landroidx/camera/camera2/impl/MeteringRepeating$Builder;
    .locals 0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public bridge synthetic setDefaultSessionConfig(Landroidx/camera/core/impl/SessionConfig;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->setDefaultSessionConfig(Landroidx/camera/core/impl/SessionConfig;)Landroidx/camera/camera2/impl/MeteringRepeating$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setHighResolutionDisabled(Z)Landroidx/camera/camera2/impl/MeteringRepeating$Builder;
    .locals 0

    .line 5
    return-object p0
.end method

.method public bridge synthetic setHighResolutionDisabled(Z)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->setHighResolutionDisabled(Z)Landroidx/camera/camera2/impl/MeteringRepeating$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setSessionOptionUnpacker(Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;)Landroidx/camera/camera2/impl/MeteringRepeating$Builder;
    .locals 0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public bridge synthetic setSessionOptionUnpacker(Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->setSessionOptionUnpacker(Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;)Landroidx/camera/camera2/impl/MeteringRepeating$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setStreamUseCase(Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/camera2/impl/MeteringRepeating$Builder;
    .locals 0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public bridge synthetic setStreamUseCase(Landroidx/camera/core/impl/StreamUseCase;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->setStreamUseCase(Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/camera2/impl/MeteringRepeating$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setSurfaceOccupancyPriority(I)Landroidx/camera/camera2/impl/MeteringRepeating$Builder;
    .locals 0

    .line 5
    return-object p0
.end method

.method public bridge synthetic setSurfaceOccupancyPriority(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->setSurfaceOccupancyPriority(I)Landroidx/camera/camera2/impl/MeteringRepeating$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setTargetClass(Ljava/lang/Class;)Landroidx/camera/camera2/impl/MeteringRepeating$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroidx/camera/camera2/impl/MeteringRepeating;",
            ">;)",
            "Landroidx/camera/camera2/impl/MeteringRepeating$Builder;"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public bridge synthetic setTargetClass(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->setTargetClass(Ljava/lang/Class;)Landroidx/camera/camera2/impl/MeteringRepeating$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setTargetName(Ljava/lang/String;)Landroidx/camera/camera2/impl/MeteringRepeating$Builder;
    .locals 0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public bridge synthetic setTargetName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->setTargetName(Ljava/lang/String;)Landroidx/camera/camera2/impl/MeteringRepeating$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setZslDisabled(Z)Landroidx/camera/camera2/impl/MeteringRepeating$Builder;
    .locals 0

    .line 5
    return-object p0
.end method

.method public bridge synthetic setZslDisabled(Z)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->setZslDisabled(Z)Landroidx/camera/camera2/impl/MeteringRepeating$Builder;

    move-result-object p0

    return-object p0
.end method
