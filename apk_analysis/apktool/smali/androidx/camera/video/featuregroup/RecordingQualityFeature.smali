.class public final Landroidx/camera/video/featuregroup/RecordingQualityFeature;
.super Landroidx/camera/core/featuregroup/GroupableFeature;
.source "SourceFile"


# instance fields
.field private final featureTypeInternal:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

.field private final quality:Landroidx/camera/video/Quality;


# direct methods
.method public constructor <init>(Landroidx/camera/video/Quality;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/camera/core/featuregroup/GroupableFeature;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/featuregroup/RecordingQualityFeature;->quality:Landroidx/camera/video/Quality;

    sget-object p1, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;->RECORDING_QUALITY:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    iput-object p1, p0, Landroidx/camera/video/featuregroup/RecordingQualityFeature;->featureTypeInternal:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    return-void
.end method


# virtual methods
.method public getFeatureTypeInternal()Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/featuregroup/RecordingQualityFeature;->featureTypeInternal:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    return-object p0
.end method

.method public final getQuality()Landroidx/camera/video/Quality;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/featuregroup/RecordingQualityFeature;->quality:Landroidx/camera/video/Quality;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecordingQualityFeature(quality="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/camera/video/featuregroup/RecordingQualityFeature;->quality:Landroidx/camera/video/Quality;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
