.class public final Landroidx/camera/camera2/pipe/compat/Camera2Quirks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/Camera2Quirks$Companion;,
        Landroidx/camera/camera2/pipe/compat/Camera2Quirks$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/compat/Camera2Quirks$Companion;

.field private static final SHOULD_WAIT_FOR_REPEATING_DEVICE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SM8150_DEVICES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final metadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

.field private final strictMode:Landroidx/camera/camera2/pipe/StrictMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2Quirks$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->Companion:Landroidx/camera/camera2/pipe/compat/Camera2Quirks$Companion;

    const-string v6, "cheetah"

    const-string v7, "lynx"

    const-string v2, "oriole"

    const-string v3, "raven"

    const-string v4, "bluejay"

    const-string v5, "panther"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyr;->k0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "Google"

    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->SHOULD_WAIT_FOR_REPEATING_DEVICE_MAP:Ljava/util/Map;

    const-string v0, "pixel 4"

    const-string v1, "pixel 4 xl"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyr;->k0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lb36;

    const-string v2, "google"

    invoke-direct {v1, v2, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "sm-g770f"

    invoke-static {v0}, Ll1;->f(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    new-instance v2, Lb36;

    const-string v3, "samsung"

    invoke-direct {v2, v3, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v2}, [Lb36;

    move-result-object v0

    invoke-static {v0}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->SM8150_DEVICES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;Landroidx/camera/camera2/pipe/StrictMode;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->metadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    return-void
.end method

.method public static final synthetic access$getSM8150_DEVICES$cp()Ljava/util/Map;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->SM8150_DEVICES:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final getRepeatingRequestFrameCountForCapture$camera_camera2_pipe(Landroidx/camera/camera2/pipe/CameraGraph$Flags;)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/StrictMode;->getEnabled()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->getAwaitRepeatingRequestBeforeCapture()Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;

    move-result-object p0

    sget-object p1, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->SHOULD_WAIT_FOR_REPEATING_DEVICE_MAP:Ljava/util/Map;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-ne p1, v1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-ge p1, v2, :cond_1

    const/16 p1, 0xa

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;->getCompletionBehavior()Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;

    move-result-object v2

    sget-object v3, Landroidx/camera/camera2/pipe/compat/Camera2Quirks$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v1, :cond_3

    const/4 p1, 0x2

    if-ne v2, p1, :cond_2

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;->getRepeatingFramesToComplete-pVg5ArA()I

    move-result p0

    return p0

    :cond_2
    invoke-static {}, Lme0;->e()V

    return v0

    :cond_3
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;->getRepeatingFramesToComplete-pVg5ArA()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final shouldCloseCameraBeforeCreatingCaptureSession-EfqyGwQ$camera_camera2_pipe(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/StrictMode;->getEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x20

    const/4 v3, 0x1

    if-gt v0, v2, :cond_1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->metadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;->awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v3

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    const-string v0, "motorola"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "moto e20"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    if-nez p0, :cond_4

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    return v1

    :cond_4
    :goto_2
    return v3
.end method

.method public final shouldCreateEmptyCaptureSessionBeforeClosing-EfqyGwQ$camera_camera2_pipe(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/StrictMode;->getEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->metadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;->awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final shouldWaitForCameraDeviceOnClosed-EfqyGwQ$camera_camera2_pipe(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/StrictMode;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->metadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;->awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method public final shouldWaitForRepeatingRequestStartOnDisconnect$camera_camera2_pipe(Landroidx/camera/camera2/pipe/CameraGraph$Config;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/StrictMode;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getFlags()Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->getAwaitRepeatingRequestOnDisconnect()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->metadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;->awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method
