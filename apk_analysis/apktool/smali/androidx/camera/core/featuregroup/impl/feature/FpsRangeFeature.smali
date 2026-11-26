.class public final Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature;
.super Landroidx/camera/core/featuregroup/GroupableFeature;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature$Companion;

.field public static final DEFAULT_FPS_RANGE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final featureTypeInternal:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

.field private final maxFps:I

.field private final minFps:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature;->Companion:Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature$Companion;

    new-instance v0, Landroid/util/Range;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature;->DEFAULT_FPS_RANGE:Landroid/util/Range;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/core/featuregroup/GroupableFeature;-><init>()V

    iput p1, p0, Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature;->minFps:I

    iput p2, p0, Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature;->maxFps:I

    sget-object p1, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;->FPS_RANGE:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    iput-object p1, p0, Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature;->featureTypeInternal:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    return-void
.end method


# virtual methods
.method public getFeatureTypeInternal()Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature;->featureTypeInternal:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    return-object p0
.end method

.method public final getMaxFps()I
    .locals 0

    iget p0, p0, Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature;->maxFps:I

    return p0
.end method

.method public final getMinFps()I
    .locals 0

    iget p0, p0, Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature;->minFps:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FpsRangeFeature(minFps="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature;->minFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature;->maxFps:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lrg;->h(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
