.class public final Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;
.super Landroidx/camera/core/featuregroup/GroupableFeature;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature$Companion;,
        Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature$Companion;

.field public static final DEFAULT_STABILIZATION:Landroidx/camera/core/impl/stabilization/VideoStabilization;


# instance fields
.field private final featureTypeInternal:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

.field private final videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;->Companion:Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature$Companion;

    sget-object v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->OFF:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    sput-object v0, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;->DEFAULT_STABILIZATION:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/stabilization/VideoStabilization;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/camera/core/featuregroup/GroupableFeature;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;->videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    sget-object p1, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;->VIDEO_STABILIZATION:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    iput-object p1, p0, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;->featureTypeInternal:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    return-void
.end method


# virtual methods
.method public getFeatureTypeInternal()Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;->featureTypeInternal:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    return-object p0
.end method

.method public final getVideoStabilization()Landroidx/camera/core/impl/stabilization/VideoStabilization;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;->videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    return-object p0
.end method

.method public isSupportedIndividually(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/SessionConfig;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;->videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    sget-object p2, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p2, p0

    const/4 p2, 0x1

    if-eq p0, p2, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return p2

    :cond_2
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInfoInternal;->isPreviewStabilizationSupported()Z

    move-result p0

    return p0

    :cond_3
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInfoInternal;->isVideoStabilizationSupported()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoStabilizationFeature(mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;->videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
