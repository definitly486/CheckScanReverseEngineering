.class public final Landroidx/camera/video/GroupableFeatures;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FHD_RECORDING:Landroidx/camera/core/featuregroup/GroupableFeature;

.field public static final HD_RECORDING:Landroidx/camera/core/featuregroup/GroupableFeature;

.field public static final INSTANCE:Landroidx/camera/video/GroupableFeatures;

.field public static final SD_RECORDING:Landroidx/camera/core/featuregroup/GroupableFeature;

.field public static final UHD_RECORDING:Landroidx/camera/core/featuregroup/GroupableFeature;

.field public static final VIDEO_STABILIZATION:Landroidx/camera/core/featuregroup/GroupableFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/video/GroupableFeatures;

    invoke-direct {v0}, Landroidx/camera/video/GroupableFeatures;-><init>()V

    sput-object v0, Landroidx/camera/video/GroupableFeatures;->INSTANCE:Landroidx/camera/video/GroupableFeatures;

    new-instance v0, Landroidx/camera/video/featuregroup/RecordingQualityFeature;

    sget-object v1, Landroidx/camera/video/Quality;->SD:Landroidx/camera/video/Quality;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Landroidx/camera/video/featuregroup/RecordingQualityFeature;-><init>(Landroidx/camera/video/Quality;)V

    sput-object v0, Landroidx/camera/video/GroupableFeatures;->SD_RECORDING:Landroidx/camera/core/featuregroup/GroupableFeature;

    new-instance v0, Landroidx/camera/video/featuregroup/RecordingQualityFeature;

    sget-object v1, Landroidx/camera/video/Quality;->HD:Landroidx/camera/video/Quality;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Landroidx/camera/video/featuregroup/RecordingQualityFeature;-><init>(Landroidx/camera/video/Quality;)V

    sput-object v0, Landroidx/camera/video/GroupableFeatures;->HD_RECORDING:Landroidx/camera/core/featuregroup/GroupableFeature;

    new-instance v0, Landroidx/camera/video/featuregroup/RecordingQualityFeature;

    sget-object v1, Landroidx/camera/video/Quality;->FHD:Landroidx/camera/video/Quality;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Landroidx/camera/video/featuregroup/RecordingQualityFeature;-><init>(Landroidx/camera/video/Quality;)V

    sput-object v0, Landroidx/camera/video/GroupableFeatures;->FHD_RECORDING:Landroidx/camera/core/featuregroup/GroupableFeature;

    new-instance v0, Landroidx/camera/video/featuregroup/RecordingQualityFeature;

    sget-object v1, Landroidx/camera/video/Quality;->UHD:Landroidx/camera/video/Quality;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Landroidx/camera/video/featuregroup/RecordingQualityFeature;-><init>(Landroidx/camera/video/Quality;)V

    sput-object v0, Landroidx/camera/video/GroupableFeatures;->UHD_RECORDING:Landroidx/camera/core/featuregroup/GroupableFeature;

    new-instance v0, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;

    sget-object v1, Landroidx/camera/core/impl/stabilization/VideoStabilization;->ON:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    invoke-direct {v0, v1}, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;-><init>(Landroidx/camera/core/impl/stabilization/VideoStabilization;)V

    sput-object v0, Landroidx/camera/video/GroupableFeatures;->VIDEO_STABILIZATION:Landroidx/camera/core/featuregroup/GroupableFeature;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
