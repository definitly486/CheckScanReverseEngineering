.class public final Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromCameraMetaData(Landroidx/camera/camera2/pipe/CameraMetadata;)Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/DynamicRangeProfiles;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$Companion;->toDynamicRangesCompat(Landroid/hardware/camera2/params/DynamicRangeProfiles;)Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl;->Companion:Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl$Companion;->getCOMPAT_INSTANCE()Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public final toDynamicRangesCompat(Landroid/hardware/camera2/params/DynamicRangeProfiles;)Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    new-instance p0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;

    new-instance v0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatApi33Impl;

    invoke-direct {v0, p1}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatApi33Impl;-><init>(Landroid/hardware/camera2/params/DynamicRangeProfiles;)V

    invoke-direct {p0, v0}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;-><init>(Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl;)V

    return-object p0

    :cond_1
    const-string p1, "DynamicRangeProfiles can only be converted to DynamicRangesCompat on API 33 or higher. is not supported on API "

    const-string v1, " (requires API 33)"

    invoke-static {v0, p1, v1}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lj2;->d(Ljava/lang/Object;)V

    return-object p0
.end method
