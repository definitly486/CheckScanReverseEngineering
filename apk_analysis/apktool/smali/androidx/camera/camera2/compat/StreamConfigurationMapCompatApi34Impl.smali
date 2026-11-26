.class public final Landroidx/camera/camera2/compat/StreamConfigurationMapCompatApi34Impl;
.super Landroidx/camera/camera2/compat/StreamConfigurationMapCompatBaseImpl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/params/StreamConfigurationMap;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatBaseImpl;-><init>(Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    return-void
.end method

.method private final getHasJpegRQuirk()Z
    .locals 1

    sget-object p0, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    const-class v0, Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk;

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getHighResolutionOutputSizes(I)[Landroid/util/Size;
    .locals 1

    const/16 v0, 0x1005

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatApi34Impl;->getHasJpegRQuirk()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatBaseImpl;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getOutputFormats()[Ljava/lang/Integer;
    .locals 7

    invoke-super {p0}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatBaseImpl;->getOutputFormats()[Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatApi34Impl;->getHasJpegRQuirk()Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v0, :cond_2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v5

    const/16 v6, 0x1005

    if-eq v5, v6, :cond_0

    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v2, [Ljava/lang/Integer;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public getOutputMinFrameDuration(ILandroid/util/Size;)J
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x1005

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatApi34Impl;->getHasJpegRQuirk()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatBaseImpl;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getOutputSizes(I)[Landroid/util/Size;
    .locals 1

    const/16 v0, 0x1005

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatApi34Impl;->getHasJpegRQuirk()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompatBaseImpl;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method
