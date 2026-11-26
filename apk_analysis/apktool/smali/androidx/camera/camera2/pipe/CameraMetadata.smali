.class public interface abstract Landroidx/camera/camera2/pipe/CameraMetadata;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/Metadata;
.implements Landroidx/camera/camera2/pipe/UnsafeWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/CameraMetadata$Companion;
    }
.end annotation


# static fields
.field public static final CAPABILITIES_BURST_CAPTURE:I = 0x6

.field public static final CAPABILITIES_COLOR_SPACE_PROFILES:I = 0x14

.field public static final CAPABILITIES_CONSTRAINED_HIGH_SPEED_VIDEO:I = 0x9

.field public static final CAPABILITIES_DEPTH_OUTPUT:I = 0x8

.field public static final CAPABILITIES_DYNAMIC_RANGE_TEN_BIT:I = 0x12

.field public static final CAPABILITIES_LOGICAL_MULTI_CAMERA:I = 0xb

.field public static final CAPABILITIES_MANUAL_POST_PROCESSING:I = 0x2

.field public static final CAPABILITIES_MANUAL_SENSOR:I = 0x1

.field public static final CAPABILITIES_MONOCHROME:I = 0xc

.field public static final CAPABILITIES_MOTION_TRACKING:I = 0xa

.field public static final CAPABILITIES_OFFLINE_REPROCESSING:I = 0xf

.field public static final CAPABILITIES_PRIVATE_REPROCESSING:I = 0x4

.field public static final CAPABILITIES_RAW:I = 0x3

.field public static final CAPABILITIES_READ_SENSOR_SETTINGS:I = 0x5

.field public static final CAPABILITIES_REMOSAIC_REPROCESSING:I = 0x11

.field public static final CAPABILITIES_SECURE_IMAGE_DATA:I = 0xd

.field public static final CAPABILITIES_STREAM_USE_CASE:I = 0x13

.field public static final CAPABILITIES_SYSTEM_CAMERA:I = 0xe

.field public static final CAPABILITIES_ULTRA_HIGH_RESOLUTION_SENSOR:I = 0x10

.field public static final CAPABILITIES_YUV_REPROCESSING:I = 0x7

.field public static final Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->$$INSTANCE:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    sput-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    return-void
.end method

.method public static getAvailableCapabilities(Landroidx/camera/camera2/pipe/CameraMetadata;)[I
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getAvailableCapabilities(Landroidx/camera/camera2/pipe/CameraMetadata;)[I

    move-result-object p0

    return-object p0
.end method

.method public static getAvailableColorSpaceProfiles(Landroidx/camera/camera2/pipe/CameraMetadata;)Landroidx/camera/camera2/pipe/CameraColorSpaceProfiles;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getAvailableColorSpaceProfiles(Landroidx/camera/camera2/pipe/CameraMetadata;)Landroidx/camera/camera2/pipe/CameraColorSpaceProfiles;

    move-result-object p0

    return-object p0
.end method

.method public static getAvailableVideoStabilizationModes(Landroidx/camera/camera2/pipe/CameraMetadata;)[I
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getAvailableVideoStabilizationModes(Landroidx/camera/camera2/pipe/CameraMetadata;)[I

    move-result-object p0

    return-object p0
.end method

.method public static getCAMERA_AVAILABLE_COLOR_SPACE_PROFILES()Landroidx/camera/camera2/pipe/Metadata$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "Landroidx/camera/camera2/pipe/CameraColorSpaceProfiles;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getCAMERA_AVAILABLE_COLOR_SPACE_PROFILES()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v0

    return-object v0
.end method

.method public static getCAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP()Landroidx/camera/camera2/pipe/Metadata$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "Landroidx/camera/camera2/pipe/CameraMultiResolutionStreamConfigurationMap;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getCAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v0

    return-object v0
.end method

.method public static getCAMERA_STREAM_CONFIGURATION_MAP()Landroidx/camera/camera2/pipe/Metadata$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "Landroidx/camera/camera2/pipe/CameraStreamConfigurationMap;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getCAMERA_STREAM_CONFIGURATION_MAP()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTorchStrengthLevel(Landroidx/camera/camera2/pipe/CameraMetadata;)I
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getDefaultTorchStrengthLevel(Landroidx/camera/camera2/pipe/CameraMetadata;)I

    move-result p0

    return p0
.end method

.method public static getMaxTorchStrengthLevel(Landroidx/camera/camera2/pipe/CameraMetadata;)I
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getMaxTorchStrengthLevel(Landroidx/camera/camera2/pipe/CameraMetadata;)I

    move-result p0

    return p0
.end method

.method public static getMultiResolutionStreamConfigurationMap(Landroidx/camera/camera2/pipe/CameraMetadata;)Landroidx/camera/camera2/pipe/CameraMultiResolutionStreamConfigurationMap;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getMultiResolutionStreamConfigurationMap(Landroidx/camera/camera2/pipe/CameraMetadata;)Landroidx/camera/camera2/pipe/CameraMultiResolutionStreamConfigurationMap;

    move-result-object p0

    return-object p0
.end method

.method public static getStreamConfigurationMap(Landroidx/camera/camera2/pipe/CameraMetadata;)Landroidx/camera/camera2/pipe/CameraStreamConfigurationMap;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getStreamConfigurationMap(Landroidx/camera/camera2/pipe/CameraMetadata;)Landroidx/camera/camera2/pipe/CameraStreamConfigurationMap;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportsAutoFocusTrigger(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsAutoFocusTrigger(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static getSupportsBurstCapture(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsBurstCapture(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static getSupportsColorSpaceProfiles(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsColorSpaceProfiles(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static getSupportsDepthOutput(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsDepthOutput(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static getSupportsDynamicRangeTenBit(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsDynamicRangeTenBit(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static getSupportsHighSpeedVideo(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsHighSpeedVideo(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static getSupportsLogicalMultiCamera(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsLogicalMultiCamera(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static getSupportsLowLightBoost(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsLowLightBoost(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static getSupportsManualPostProcessing(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsManualPostProcessing(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static getSupportsManualSensor(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsManualSensor(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static getSupportsMonochrome(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsMonochrome(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static getSupportsMotionTracking(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsMotionTracking(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static getSupportsOfflineReprocessing(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsOfflineReprocessing(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static getSupportsPreviewStabilization(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsPreviewStabilization(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static getSupportsPrivateReprocessing(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsPrivateReprocessing(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static getSupportsRaw(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsRaw(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static getSupportsRemosaicProcessing(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsRemosaicProcessing(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static getSupportsSecureImageData(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsSecureImageData(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static getSupportsSensorSettings(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsSensorSettings(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static getSupportsStreamUseCase(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsStreamUseCase(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static getSupportsSystemCamera(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsSystemCamera(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static getSupportsTorchStrength(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsTorchStrength(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static getSupportsUltraHighResolutionSensor(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsUltraHighResolutionSensor(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static getSupportsYuvReprocessing(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsYuvReprocessing(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static getSupportsZoomOverride(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsZoomOverride(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static isHardwareLevel3(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevel3(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static isHardwareLevelExternal(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelExternal(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static isHardwareLevelFull(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelFull(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public static isHardwareLevelLimited(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLimited(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract awaitExtensionMetadata(I)Landroidx/camera/camera2/pipe/CameraExtensionMetadata;
.end method

.method public abstract awaitPhysicalMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;
.end method

.method public abstract get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getCamera-Dz_R5H8()Ljava/lang/String;
.end method

.method public abstract getExtensionMetadata(ILe02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/CameraExtensionMetadata;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getKeys()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract getOrDefault(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;TT;)TT;"
        }
    .end annotation
.end method

.method public abstract getPhysicalCameraIds()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhysicalMetadata-0r8Bogc(Ljava/lang/String;Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getPhysicalRequestKeys()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract getRequestKeys()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract getResultKeys()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract getSessionCharacteristicsKeys()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract getSessionKeys()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract getSupportedExtensions()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isRedacted()Z
.end method
