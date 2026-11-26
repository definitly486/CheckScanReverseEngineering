.class public final Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;
.super Landroidx/camera/core/featuregroup/GroupableFeature;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature$Companion;

.field public static final DEFAULT_IMAGE_CAPTURE_OUTPUT_FORMAT:I


# instance fields
.field private final featureTypeInternal:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

.field private final imageCaptureOutputFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;->Companion:Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/core/featuregroup/GroupableFeature;-><init>()V

    iput p1, p0, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;->imageCaptureOutputFormat:I

    sget-object p1, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;->IMAGE_FORMAT:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    iput-object p1, p0, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;->featureTypeInternal:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    return-void
.end method

.method private final getOutputFormatLabel()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;->imageCaptureOutputFormat:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNDEFINED("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;->imageCaptureOutputFormat:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lrg;->h(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "JPEG_R"

    return-object p0

    :cond_1
    const-string p0, "JPEG"

    return-object p0
.end method


# virtual methods
.method public getFeatureTypeInternal()Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;->featureTypeInternal:Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    return-object p0
.end method

.method public final getImageCaptureOutputFormat()I
    .locals 0

    iget p0, p0, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;->imageCaptureOutputFormat:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageFormatFeature(imageCaptureOutputFormat="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;->getOutputFormatLabel()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lxp;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
