.class public final Landroidx/camera/camera2/pipe/CameraMetadata$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

.field private static final CAMERA_AVAILABLE_COLOR_SPACE_PROFILES:Landroidx/camera/camera2/pipe/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "Landroidx/camera/camera2/pipe/CameraColorSpaceProfiles;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP:Landroidx/camera/camera2/pipe/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "Landroidx/camera/camera2/pipe/CameraMultiResolutionStreamConfigurationMap;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAMERA_STREAM_CONFIGURATION_MAP:Landroidx/camera/camera2/pipe/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "Landroidx/camera/camera2/pipe/CameraStreamConfigurationMap;",
            ">;"
        }
    .end annotation
.end field

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

.field private static EMPTY_INT_ARRAY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->$$INSTANCE:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    sget-object v0, Landroidx/camera/camera2/pipe/Metadata$Key;->Companion:Landroidx/camera/camera2/pipe/Metadata$Key$Companion;

    const-class v1, Landroidx/camera/camera2/pipe/CameraStreamConfigurationMap;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    const-string v2, "androidx.camera.camera2.pipe.scalar.streamConfigurationMap"

    invoke-virtual {v0, v2, v1}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;->create(Ljava/lang/String;Lne4;)Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v1

    sput-object v1, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->CAMERA_STREAM_CONFIGURATION_MAP:Landroidx/camera/camera2/pipe/Metadata$Key;

    const-class v1, Landroidx/camera/camera2/pipe/CameraMultiResolutionStreamConfigurationMap;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    const-string v2, "androidx.camera.camera2.pipe.scalar.multiResolutionStreamConfigurationMap"

    invoke-virtual {v0, v2, v1}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;->create(Ljava/lang/String;Lne4;)Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v1

    sput-object v1, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP:Landroidx/camera/camera2/pipe/Metadata$Key;

    const-class v1, Landroidx/camera/camera2/pipe/CameraColorSpaceProfiles;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    const-string v2, "androidx.camera.camera2.pipe.request.availableColorSpaceProfilesMap"

    invoke-virtual {v0, v2, v1}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;->create(Ljava/lang/String;Lne4;)Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->CAMERA_AVAILABLE_COLOR_SPACE_PROFILES:Landroidx/camera/camera2/pipe/Metadata$Key;

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->EMPTY_INT_ARRAY:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getCAMERA_AVAILABLE_COLOR_SPACE_PROFILES$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCAMERA_STREAM_CONFIGURATION_MAP$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getAvailableCapabilities(Landroidx/camera/camera2/pipe/CameraMetadata;)[I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_0

    sget-object p0, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->EMPTY_INT_ARRAY:[I

    :cond_0
    return-object p0
.end method

.method public final getAvailableColorSpaceProfiles(Landroidx/camera/camera2/pipe/CameraMetadata;)Landroidx/camera/camera2/pipe/CameraColorSpaceProfiles;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->CAMERA_AVAILABLE_COLOR_SPACE_PROFILES:Landroidx/camera/camera2/pipe/Metadata$Key;

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/Metadata;->get(Landroidx/camera/camera2/pipe/Metadata$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/CameraColorSpaceProfiles;

    if-nez p0, :cond_2

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p0, v0, :cond_1

    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_COLOR_SPACE_PROFILES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/ColorSpaceProfiles;

    if-eqz p0, :cond_0

    new-instance p1, Landroidx/camera/camera2/pipe/compat/Camera2ColorSpaceProfiles;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/pipe/compat/Camera2ColorSpaceProfiles;-><init>(Landroid/hardware/camera2/params/ColorSpaceProfiles;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Landroidx/camera/camera2/pipe/UnsupportedCameraColorSpaceProfiles;->INSTANCE:Landroidx/camera/camera2/pipe/UnsupportedCameraColorSpaceProfiles;

    :cond_2
    return-object p0
.end method

.method public final getAvailableVideoStabilizationModes(Landroidx/camera/camera2/pipe/CameraMetadata;)[I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_0

    sget-object p0, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->EMPTY_INT_ARRAY:[I

    :cond_0
    return-object p0
.end method

.method public final getCAMERA_AVAILABLE_COLOR_SPACE_PROFILES()Landroidx/camera/camera2/pipe/Metadata$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "Landroidx/camera/camera2/pipe/CameraColorSpaceProfiles;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->CAMERA_AVAILABLE_COLOR_SPACE_PROFILES:Landroidx/camera/camera2/pipe/Metadata$Key;

    return-object p0
.end method

.method public final getCAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP()Landroidx/camera/camera2/pipe/Metadata$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "Landroidx/camera/camera2/pipe/CameraMultiResolutionStreamConfigurationMap;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP:Landroidx/camera/camera2/pipe/Metadata$Key;

    return-object p0
.end method

.method public final getCAMERA_STREAM_CONFIGURATION_MAP()Landroidx/camera/camera2/pipe/Metadata$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "Landroidx/camera/camera2/pipe/CameraStreamConfigurationMap;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->CAMERA_STREAM_CONFIGURATION_MAP:Landroidx/camera/camera2/pipe/Metadata$Key;

    return-object p0
.end method

.method public final getDefaultTorchStrengthLevel(Landroidx/camera/camera2/pipe/CameraMetadata;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt p0, v0, :cond_0

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Api35Compat;->getDefaultTorchStrengthLevel(Landroidx/camera/camera2/pipe/CameraMetadata;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getEMPTY_INT_ARRAY()[I
    .locals 0

    sget-object p0, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->EMPTY_INT_ARRAY:[I

    return-object p0
.end method

.method public final getMaxTorchStrengthLevel(Landroidx/camera/camera2/pipe/CameraMetadata;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt p0, v0, :cond_0

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Api35Compat;->getMaxTorchStrengthLevel(Landroidx/camera/camera2/pipe/CameraMetadata;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getMultiResolutionStreamConfigurationMap(Landroidx/camera/camera2/pipe/CameraMetadata;)Landroidx/camera/camera2/pipe/CameraMultiResolutionStreamConfigurationMap;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP:Landroidx/camera/camera2/pipe/Metadata$Key;

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/Metadata;->get(Landroidx/camera/camera2/pipe/Metadata$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/CameraMultiResolutionStreamConfigurationMap;

    if-nez p0, :cond_1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    const/4 v1, 0x0

    if-lt p0, v0, :cond_0

    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    if-eqz p0, :cond_0

    new-instance p1, Landroidx/camera/camera2/pipe/compat/Camera2MultiResolutionStreamConfigurationMap;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/pipe/compat/Camera2MultiResolutionStreamConfigurationMap;-><init>(Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;)V

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    return-object p0
.end method

.method public final getStreamConfigurationMap(Landroidx/camera/camera2/pipe/CameraMetadata;)Landroidx/camera/camera2/pipe/CameraStreamConfigurationMap;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->CAMERA_STREAM_CONFIGURATION_MAP:Landroidx/camera/camera2/pipe/Metadata$Key;

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/Metadata;->get(Landroidx/camera/camera2/pipe/Metadata$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/CameraStreamConfigurationMap;

    if-nez p0, :cond_1

    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz p0, :cond_0

    new-instance p1, Loz0;

    invoke-direct {p1, p0}, Loz0;-><init>(Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public final getSupportsAutoFocusTrigger(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_2

    return v0

    :cond_2
    invoke-static {p0, v1}, Lyr;->C([II)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lyr;->C([II)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lyr;->C([II)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lyr;->C([II)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final getSupportsBurstCapture(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    const/4 v0, 0x6

    invoke-static {p1, p0, p1, v0}, Lxy;->g(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraMetadata$Companion;Landroidx/camera/camera2/pipe/CameraMetadata;I)Z

    move-result p0

    return p0
.end method

.method public final getSupportsColorSpaceProfiles(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    const/16 v0, 0x14

    invoke-static {p1, p0, p1, v0}, Lxy;->g(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraMetadata$Companion;Landroidx/camera/camera2/pipe/CameraMetadata;I)Z

    move-result p0

    return p0
.end method

.method public final getSupportsDepthOutput(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    const/16 v0, 0x8

    invoke-static {p1, p0, p1, v0}, Lxy;->g(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraMetadata$Companion;Landroidx/camera/camera2/pipe/CameraMetadata;I)Z

    move-result p0

    return p0
.end method

.method public final getSupportsDynamicRangeTenBit(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    const/16 v0, 0x12

    invoke-static {p1, p0, p1, v0}, Lxy;->g(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraMetadata$Companion;Landroidx/camera/camera2/pipe/CameraMetadata;I)Z

    move-result p0

    return p0
.end method

.method public final getSupportsHighSpeedVideo(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    const/16 v0, 0x9

    invoke-static {p1, p0, p1, v0}, Lxy;->g(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraMetadata$Companion;Landroidx/camera/camera2/pipe/CameraMetadata;I)Z

    move-result p0

    return p0
.end method

.method public final getSupportsLogicalMultiCamera(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    const/16 v0, 0xb

    invoke-static {p1, p0, p1, v0}, Lxy;->g(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraMetadata$Companion;Landroidx/camera/camera2/pipe/CameraMetadata;I)Z

    move-result p0

    return p0
.end method

.method public final getSupportsLowLightBoost(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p1, 0x6

    invoke-static {p0, p1}, Lyr;->C([II)Z

    move-result p0

    return p0
.end method

.method public final getSupportsManualPostProcessing(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    const/4 v0, 0x2

    invoke-static {p1, p0, p1, v0}, Lxy;->g(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraMetadata$Companion;Landroidx/camera/camera2/pipe/CameraMetadata;I)Z

    move-result p0

    return p0
.end method

.method public final getSupportsManualSensor(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p0, p1, v0}, Lxy;->g(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraMetadata$Companion;Landroidx/camera/camera2/pipe/CameraMetadata;I)Z

    move-result p0

    return p0
.end method

.method public final getSupportsMonochrome(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    const/16 v0, 0xc

    invoke-static {p1, p0, p1, v0}, Lxy;->g(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraMetadata$Companion;Landroidx/camera/camera2/pipe/CameraMetadata;I)Z

    move-result p0

    return p0
.end method

.method public final getSupportsMotionTracking(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    const/16 v0, 0xa

    invoke-static {p1, p0, p1, v0}, Lxy;->g(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraMetadata$Companion;Landroidx/camera/camera2/pipe/CameraMetadata;I)Z

    move-result p0

    return p0
.end method

.method public final getSupportsOfflineReprocessing(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    const/16 v0, 0xf

    invoke-static {p1, p0, p1, v0}, Lxy;->g(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraMetadata$Companion;Landroidx/camera/camera2/pipe/CameraMetadata;I)Z

    move-result p0

    return p0
.end method

.method public final getSupportsPreviewStabilization(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p0, v0, :cond_0

    sget-object p0, Landroidx/camera/camera2/pipe/compat/Api33Compat;->INSTANCE:Landroidx/camera/camera2/pipe/compat/Api33Compat;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/Api33Compat;->supportsPreviewStabilization(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getSupportsPrivateReprocessing(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    const/4 v0, 0x4

    invoke-static {p1, p0, p1, v0}, Lxy;->g(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraMetadata$Companion;Landroidx/camera/camera2/pipe/CameraMetadata;I)Z

    move-result p0

    return p0
.end method

.method public final getSupportsRaw(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    const/4 v0, 0x3

    invoke-static {p1, p0, p1, v0}, Lxy;->g(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraMetadata$Companion;Landroidx/camera/camera2/pipe/CameraMetadata;I)Z

    move-result p0

    return p0
.end method

.method public final getSupportsRemosaicProcessing(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    const/16 v0, 0x11

    invoke-static {p1, p0, p1, v0}, Lxy;->g(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraMetadata$Companion;Landroidx/camera/camera2/pipe/CameraMetadata;I)Z

    move-result p0

    return p0
.end method

.method public final getSupportsSecureImageData(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    const/16 v0, 0xd

    invoke-static {p1, p0, p1, v0}, Lxy;->g(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraMetadata$Companion;Landroidx/camera/camera2/pipe/CameraMetadata;I)Z

    move-result p0

    return p0
.end method

.method public final getSupportsSensorSettings(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    const/4 v0, 0x5

    invoke-static {p1, p0, p1, v0}, Lxy;->g(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraMetadata$Companion;Landroidx/camera/camera2/pipe/CameraMetadata;I)Z

    move-result p0

    return p0
.end method

.method public final getSupportsStreamUseCase(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    const/16 v0, 0x13

    invoke-static {p1, p0, p1, v0}, Lxy;->g(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraMetadata$Companion;Landroidx/camera/camera2/pipe/CameraMetadata;I)Z

    move-result p0

    return p0
.end method

.method public final getSupportsSystemCamera(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    const/16 v0, 0xe

    invoke-static {p1, p0, p1, v0}, Lxy;->g(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraMetadata$Companion;Landroidx/camera/camera2/pipe/CameraMetadata;I)Z

    move-result p0

    return p0
.end method

.method public final getSupportsTorchStrength(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt p0, v0, :cond_0

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Api35Compat;->isTorchStrengthSupported(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getSupportsUltraHighResolutionSensor(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    const/16 v0, 0x10

    invoke-static {p1, p0, p1, v0}, Lxy;->g(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraMetadata$Companion;Landroidx/camera/camera2/pipe/CameraMetadata;I)Z

    move-result p0

    return p0
.end method

.method public final getSupportsYuvReprocessing(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    const/4 v0, 0x7

    invoke-static {p1, p0, p1, v0}, Lxy;->g(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraMetadata$Companion;Landroidx/camera/camera2/pipe/CameraMetadata;I)Z

    move-result p0

    return p0
.end method

.method public final getSupportsZoomOverride(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p0, v0, :cond_0

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Api34Compat;->isZoomOverrideSupported(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isHardwareLevel3(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isHardwareLevelExternal(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isHardwareLevelFull(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    return p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isHardwareLevelLimited(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setEMPTY_INT_ARRAY([I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p1, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->EMPTY_INT_ARRAY:[I

    return-void
.end method
