.class public final Landroidx/camera/camera2/impl/MeteringRepeatingKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_PREVIEW_SIZE:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/camera2/impl/MeteringRepeatingKt;->DEFAULT_PREVIEW_SIZE:Landroid/util/Size;

    return-void
.end method

.method public static final synthetic access$getDEFAULT_PREVIEW_SIZE$p()Landroid/util/Size;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/impl/MeteringRepeatingKt;->DEFAULT_PREVIEW_SIZE:Landroid/util/Size;

    return-object v0
.end method

.method private static final getOutputSizes(Landroidx/camera/camera2/impl/CameraProperties;)[Landroid/util/Size;
    .locals 1

    invoke-interface {p0}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p0

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez p0, :cond_1

    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p0, "CXCP"

    invoke-static {p0}, Landroidx/camera/core/Logger;->isErrorEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Can not retrieve SCALER_STREAM_CONFIGURATION_MAP."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static final getProperPreviewSize(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/DisplayInfoManager;)Landroid/util/Size;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/camera/camera2/impl/MeteringRepeatingKt;->getOutputSizes(Landroidx/camera/camera2/impl/CameraProperties;)[Landroid/util/Size;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Landroidx/camera/camera2/impl/MeteringRepeatingKt;->DEFAULT_PREVIEW_SIZE:Landroid/util/Size;

    return-object p0

    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    sget-object p0, Landroidx/camera/camera2/impl/MeteringRepeatingKt;->DEFAULT_PREVIEW_SIZE:Landroid/util/Size;

    return-object p0

    :cond_1
    invoke-static {p0}, Landroidx/camera/camera2/compat/workaround/SupportedRepeatingSurfaceSizeKt;->getSupportedRepeatingSurfaceSizes([Landroid/util/Size;)[Landroid/util/Size;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_2

    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No supported output size list, fallback to current list"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object p0, v0

    :cond_3
    :goto_0
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    new-instance v0, Landroidx/camera/camera2/impl/MeteringRepeatingKt$getProperPreviewSize$$inlined$sortBy$1;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/MeteringRepeatingKt$getProperPreviewSize$$inlined$sortBy$1;-><init>()V

    array-length v2, p0

    if-le v2, v1, :cond_4

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_4
    invoke-virtual {p1}, Landroidx/camera/camera2/impl/DisplayInfoManager;->getPreviewSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x4b000

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    array-length p1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_1
    if-ge v4, p1, :cond_8

    aget-object v5, p0, v4

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    cmp-long v6, v6, v0

    if-nez v6, :cond_5

    return-object v5

    :cond_5
    if-lez v6, :cond_7

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    return-object v3

    :cond_7
    add-int/lit8 v4, v4, 0x1

    move-object v3, v5

    goto :goto_1

    :cond_8
    :goto_2
    if-nez v3, :cond_9

    aget-object p0, p0, v2

    return-object p0

    :cond_9
    return-object v3
.end method
