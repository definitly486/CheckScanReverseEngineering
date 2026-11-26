.class public final Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeatureSettings"
.end annotation


# instance fields
.field private final cameraMode:I

.field private final hasVideoCapture:Z

.field private final isFeatureComboInvocation:Z

.field private final isHighSpeedOn:Z

.field private final isStrictFpsRequired:Z

.field private final isUltraHdrOn:Z

.field private final requiredMaxBitDepth:I

.field private final requiresFeatureComboQuery:Z

.field private final targetFpsRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;


# direct methods
.method public constructor <init>(IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Landroidx/camera/core/impl/stabilization/VideoStabilization;",
            "ZZZZ",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->cameraMode:I

    .line 52
    iput p2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiredMaxBitDepth:I

    .line 53
    iput-boolean p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->hasVideoCapture:Z

    .line 54
    iput-object p4, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    .line 55
    iput-boolean p5, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isUltraHdrOn:Z

    .line 56
    iput-boolean p6, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn:Z

    .line 57
    iput-boolean p7, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation:Z

    .line 58
    iput-boolean p8, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiresFeatureComboQuery:Z

    .line 59
    iput-object p9, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->targetFpsRange:Landroid/util/Range;

    .line 60
    iput-boolean p10, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isStrictFpsRequired:Z

    return-void
.end method

.method public synthetic constructor <init>(IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;ZILjh2;)V
    .locals 1

    and-int/lit8 p12, p11, 0x4

    const/4 v0, 0x0

    if-eqz p12, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_1

    sget-object p4, Landroidx/camera/core/impl/stabilization/VideoStabilization;->UNSPECIFIED:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    :cond_1
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_2

    move p5, v0

    :cond_2
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_3

    move p6, v0

    :cond_3
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_4

    move p7, v0

    :cond_4
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_5

    move p8, v0

    :cond_5
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_6

    sget-object p9, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_7

    move p10, v0

    :cond_7
    invoke-direct/range {p0 .. p10}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;-><init>(IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;Z)V

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;ZILjava/lang/Object;)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;
    .locals 0

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_0

    iget p1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->cameraMode:I

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    iget p2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiredMaxBitDepth:I

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    iget-boolean p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->hasVideoCapture:Z

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    iget-object p4, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    iget-boolean p5, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isUltraHdrOn:Z

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    iget-boolean p6, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn:Z

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    iget-boolean p7, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation:Z

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    iget-boolean p8, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiresFeatureComboQuery:Z

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    iget-object p9, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->targetFpsRange:Landroid/util/Range;

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    iget-boolean p10, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isStrictFpsRequired:Z

    :cond_9
    move-object p11, p9

    move p12, p10

    move p9, p7

    move p10, p8

    move p7, p5

    move p8, p6

    move p5, p3

    move-object p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p12}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->copy(IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;Z)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->cameraMode:I

    return p0
.end method

.method public final component10()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isStrictFpsRequired:Z

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiredMaxBitDepth:I

    return p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->hasVideoCapture:Z

    return p0
.end method

.method public final component4()Landroidx/camera/core/impl/stabilization/VideoStabilization;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    return-object p0
.end method

.method public final component5()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isUltraHdrOn:Z

    return p0
.end method

.method public final component6()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn:Z

    return p0
.end method

.method public final component7()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation:Z

    return p0
.end method

.method public final component8()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiresFeatureComboQuery:Z

    return p0
.end method

.method public final component9()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->targetFpsRange:Landroid/util/Range;

    return-object p0
.end method

.method public final copy(IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;Z)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Landroidx/camera/core/impl/stabilization/VideoStabilization;",
            "ZZZZ",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;"
        }
    .end annotation

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    invoke-direct/range {p0 .. p10}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;-><init>(IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;Z)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    iget v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->cameraMode:I

    iget v3, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->cameraMode:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiredMaxBitDepth:I

    iget v3, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiredMaxBitDepth:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->hasVideoCapture:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->hasVideoCapture:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    iget-object v3, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isUltraHdrOn:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isUltraHdrOn:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiresFeatureComboQuery:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiresFeatureComboQuery:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->targetFpsRange:Landroid/util/Range;

    iget-object v3, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->targetFpsRange:Landroid/util/Range;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-boolean p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isStrictFpsRequired:Z

    iget-boolean p1, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isStrictFpsRequired:Z

    if-eq p0, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getCameraMode()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->cameraMode:I

    return p0
.end method

.method public final getHasVideoCapture()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->hasVideoCapture:Z

    return p0
.end method

.method public final getRequiredMaxBitDepth()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiredMaxBitDepth:I

    return p0
.end method

.method public final getRequiresFeatureComboQuery()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiresFeatureComboQuery:Z

    return p0
.end method

.method public final getTargetFpsRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->targetFpsRange:Landroid/util/Range;

    return-object p0
.end method

.method public final getVideoStabilization()Landroidx/camera/core/impl/stabilization/VideoStabilization;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->cameraMode:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiredMaxBitDepth:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-boolean v2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->hasVideoCapture:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isUltraHdrOn:Z

    invoke-static {v2, v1, v0}, Ltg;->c(IIZ)I

    move-result v0

    iget-boolean v2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-boolean v2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-boolean v2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiresFeatureComboQuery:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->targetFpsRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isStrictFpsRequired:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final isFeatureComboInvocation()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation:Z

    return p0
.end method

.method public final isHighSpeedOn()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn:Z

    return p0
.end method

.method public final isStrictFpsRequired()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isStrictFpsRequired:Z

    return p0
.end method

.method public final isUltraHdrOn()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isUltraHdrOn:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FeatureSettings(cameraMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->cameraMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requiredMaxBitDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiredMaxBitDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasVideoCapture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->hasVideoCapture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", videoStabilization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isUltraHdrOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isUltraHdrOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHighSpeedOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFeatureComboInvocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", requiresFeatureComboQuery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiresFeatureComboQuery:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", targetFpsRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->targetFpsRange:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isStrictFpsRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isStrictFpsRequired:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lsg;->d(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
