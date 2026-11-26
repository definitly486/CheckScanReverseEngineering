.class public final Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/camera/camera2/config/CameraScope;
.end annotation


# instance fields
.field private final cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

.field private final excludedSupportedSizesQuirk:Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;

.field private final extraSupportedOutputSizeQuirk:Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;

.field private final streamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroid/hardware/camera2/params/StreamConfigurationMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    iput-object p2, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->streamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-string p1, "OutputSizesCorrector"

    iput-object p1, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->tag:Ljava/lang/String;

    sget-object p1, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    const-class p2, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object p2

    check-cast p2, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;

    iput-object p2, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->excludedSupportedSizesQuirk:Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;

    const-class p2, Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;

    iput-object p1, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->extraSupportedOutputSizeQuirk:Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;

    return-void
.end method

.method private final addExtraSupportedOutputSizesByClass(Ljava/util/List;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->extraSupportedOutputSizeQuirk:Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;->getExtraSupportedResolutions(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p0

    array-length p2, p0

    if-nez p2, :cond_1

    return-void

    :cond_1
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1, p0}, Lnn1;->u(Ljava/util/Collection;[Ljava/lang/Object;)V

    return-void
.end method

.method private final addExtraSupportedOutputSizesByFormat(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;I)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->extraSupportedOutputSizeQuirk:Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;->getExtraSupportedResolutions(I)[Landroid/util/Size;

    move-result-object p0

    array-length p2, p0

    if-nez p2, :cond_1

    return-void

    :cond_1
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1, p0}, Lnn1;->u(Ljava/util/Collection;[Ljava/lang/Object;)V

    return-void
.end method

.method private final excludeProblematicOutputSizesByClass(Ljava/util/List;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->excludedSupportedSizesQuirk:Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->getExcludedSizes(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private final excludeProblematicOutputSizesByFormat(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->excludedSupportedSizesQuirk:Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->getExcludedSizes(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final applyQuirks([Landroid/util/Size;I)[Landroid/util/Size;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {p1}, Lyr;->j0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->addExtraSupportedOutputSizesByFormat(Ljava/util/List;I)V

    .line 41
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->excludeProblematicOutputSizesByFormat(Ljava/util/List;I)V

    .line 42
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 43
    iget-object p0, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->tag:Ljava/lang/String;

    const-string p2, "Sizes array becomes empty after excluding problematic output sizes."

    invoke-static {p0, p2}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    .line 44
    new-array p0, p0, [Landroid/util/Size;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Size;

    return-object p0
.end method

.method public final applyQuirks([Landroid/util/Size;Ljava/lang/Class;)[Landroid/util/Size;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Landroid/util/Size;",
            "Ljava/lang/Class<",
            "TT;>;)[",
            "Landroid/util/Size;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyr;->j0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->addExtraSupportedOutputSizesByClass(Ljava/util/List;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->excludeProblematicOutputSizesByClass(Ljava/util/List;Ljava/lang/Class;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->tag:Ljava/lang/String;

    const-string p2, "Sizes array becomes empty after excluding problematic output sizes."

    invoke-static {p0, p2}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Landroid/util/Size;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Size;

    return-object p0
.end method
