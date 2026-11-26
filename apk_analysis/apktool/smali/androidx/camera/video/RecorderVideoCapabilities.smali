.class public Landroidx/camera/video/RecorderVideoCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/VideoCapabilities;


# instance fields
.field private final mEncoderProfilesResolver:Landroidx/camera/video/EncoderProfilesResolver;

.field private final mIsStabilizationSupported:Z


# direct methods
.method public constructor <init>(Landroidx/camera/video/EncoderProfilesResolver;Landroidx/camera/core/impl/CameraInfoInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mEncoderProfilesResolver:Landroidx/camera/video/EncoderProfilesResolver;

    invoke-interface {p2}, Landroidx/camera/core/impl/CameraInfoInternal;->isVideoStabilizationSupported()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mIsStabilizationSupported:Z

    return-void
.end method


# virtual methods
.method public getResolution(Landroidx/camera/video/Quality;Landroidx/camera/core/DynamicRange;)Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mEncoderProfilesResolver:Landroidx/camera/video/EncoderProfilesResolver;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/video/EncoderProfilesResolver;->getResolution(Landroidx/camera/video/Quality;Landroidx/camera/core/DynamicRange;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedDynamicRanges()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/core/DynamicRange;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mEncoderProfilesResolver:Landroidx/camera/video/EncoderProfilesResolver;

    invoke-virtual {p0}, Landroidx/camera/video/EncoderProfilesResolver;->getSupportedDynamicRanges()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedQualities(Landroidx/camera/core/DynamicRange;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/DynamicRange;",
            ")",
            "Ljava/util/List<",
            "Landroidx/camera/video/Quality;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mEncoderProfilesResolver:Landroidx/camera/video/EncoderProfilesResolver;

    invoke-virtual {p0, p1}, Landroidx/camera/video/EncoderProfilesResolver;->getSupportedQualities(Landroidx/camera/core/DynamicRange;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isQualitySupported(Landroidx/camera/video/Quality;Landroidx/camera/core/DynamicRange;)Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mEncoderProfilesResolver:Landroidx/camera/video/EncoderProfilesResolver;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/video/EncoderProfilesResolver;->isQualitySupported(Landroidx/camera/video/Quality;Landroidx/camera/core/DynamicRange;)Z

    move-result p0

    return p0
.end method

.method public isStabilizationSupported()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/video/RecorderVideoCapabilities;->mIsStabilizationSupported:Z

    return p0
.end method
