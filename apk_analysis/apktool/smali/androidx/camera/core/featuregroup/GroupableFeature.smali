.class public abstract Landroidx/camera/core/featuregroup/GroupableFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/featuregroup/GroupableFeature$Companion;,
        Landroidx/camera/core/featuregroup/GroupableFeature$FeatureType;,
        Landroidx/camera/core/featuregroup/GroupableFeature$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/core/featuregroup/GroupableFeature$Companion;

.field public static final FEATURE_TYPE_DYNAMIC_RANGE:I = 0x0

.field public static final FEATURE_TYPE_FPS_RANGE:I = 0x1

.field public static final FEATURE_TYPE_IMAGE_FORMAT:I = 0x3

.field public static final FEATURE_TYPE_RECORDING_QUALITY:I = 0x4

.field public static final FEATURE_TYPE_VIDEO_STABILIZATION:I = 0x2

.field public static final FPS_60:Landroidx/camera/core/featuregroup/GroupableFeature;

.field public static final HDR_HLG10:Landroidx/camera/core/featuregroup/GroupableFeature;

.field public static final IMAGE_ULTRA_HDR:Landroidx/camera/core/featuregroup/GroupableFeature;

.field public static final PREVIEW_STABILIZATION:Landroidx/camera/core/featuregroup/GroupableFeature;


# instance fields
.field private final featureType$delegate:Lcl4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/core/featuregroup/GroupableFeature$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/core/featuregroup/GroupableFeature$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/core/featuregroup/GroupableFeature;->Companion:Landroidx/camera/core/featuregroup/GroupableFeature$Companion;

    new-instance v0, Landroidx/camera/core/featuregroup/impl/feature/DynamicRangeFeature;

    sget-object v1, Landroidx/camera/core/DynamicRange;->HLG_10_BIT:Landroidx/camera/core/DynamicRange;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Landroidx/camera/core/featuregroup/impl/feature/DynamicRangeFeature;-><init>(Landroidx/camera/core/DynamicRange;)V

    sput-object v0, Landroidx/camera/core/featuregroup/GroupableFeature;->HDR_HLG10:Landroidx/camera/core/featuregroup/GroupableFeature;

    new-instance v0, Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature;

    const/16 v1, 0x3c

    invoke-direct {v0, v1, v1}, Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature;-><init>(II)V

    sput-object v0, Landroidx/camera/core/featuregroup/GroupableFeature;->FPS_60:Landroidx/camera/core/featuregroup/GroupableFeature;

    new-instance v0, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;

    sget-object v1, Landroidx/camera/core/impl/stabilization/VideoStabilization;->PREVIEW:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    invoke-direct {v0, v1}, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;-><init>(Landroidx/camera/core/impl/stabilization/VideoStabilization;)V

    sput-object v0, Landroidx/camera/core/featuregroup/GroupableFeature;->PREVIEW_STABILIZATION:Landroidx/camera/core/featuregroup/GroupableFeature;

    new-instance v0, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;-><init>(I)V

    sput-object v0, Landroidx/camera/core/featuregroup/GroupableFeature;->IMAGE_ULTRA_HDR:Landroidx/camera/core/featuregroup/GroupableFeature;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljs3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljs3;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Landroidx/camera/core/featuregroup/GroupableFeature;->featureType$delegate:Lcl4;

    return-void
.end method

.method public static synthetic a(Landroidx/camera/core/featuregroup/GroupableFeature;)I
    .locals 0

    invoke-static {p0}, Landroidx/camera/core/featuregroup/GroupableFeature;->featureType_delegate$lambda$0(Landroidx/camera/core/featuregroup/GroupableFeature;)I

    move-result p0

    return p0
.end method

.method private static final featureType_delegate$lambda$0(Landroidx/camera/core/featuregroup/GroupableFeature;)I
    .locals 1

    invoke-virtual {p0}, Landroidx/camera/core/featuregroup/GroupableFeature;->getFeatureTypeInternal()Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/core/featuregroup/GroupableFeature;->toFeatureType(Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;)I

    move-result p0

    return p0
.end method

.method private final toFeatureType(Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;)I
    .locals 1

    sget-object p0, Landroidx/camera/core/featuregroup/GroupableFeature$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 p1, 0x5

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return p0

    :cond_1
    return p1

    :cond_2
    return v0

    :cond_3
    return p1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getFeatureType()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/featuregroup/GroupableFeature;->featureType$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public abstract getFeatureTypeInternal()Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;
.end method

.method public isSupportedIndividually(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/SessionConfig;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0
.end method
