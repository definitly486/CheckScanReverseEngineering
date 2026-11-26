.class public final Landroidx/camera/extensions/internal/ExtensionsUseCaseConfigFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/UseCaseConfigFactory;


# instance fields
.field private final mImageAnalysisConfigProvider:Landroidx/camera/extensions/internal/ImageAnalysisConfigProvider;

.field private final mImageCaptureConfigProvider:Landroidx/camera/extensions/internal/ImageCaptureConfigProvider;

.field private final mPreviewConfigProvider:Landroidx/camera/extensions/internal/PreviewConfigProvider;


# direct methods
.method public constructor <init>(Landroidx/camera/extensions/internal/VendorExtender;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider;

    invoke-direct {v0, p1}, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider;-><init>(Landroidx/camera/extensions/internal/VendorExtender;)V

    iput-object v0, p0, Landroidx/camera/extensions/internal/ExtensionsUseCaseConfigFactory;->mImageCaptureConfigProvider:Landroidx/camera/extensions/internal/ImageCaptureConfigProvider;

    new-instance v0, Landroidx/camera/extensions/internal/PreviewConfigProvider;

    invoke-direct {v0, p1}, Landroidx/camera/extensions/internal/PreviewConfigProvider;-><init>(Landroidx/camera/extensions/internal/VendorExtender;)V

    iput-object v0, p0, Landroidx/camera/extensions/internal/ExtensionsUseCaseConfigFactory;->mPreviewConfigProvider:Landroidx/camera/extensions/internal/PreviewConfigProvider;

    new-instance v0, Landroidx/camera/extensions/internal/ImageAnalysisConfigProvider;

    invoke-direct {v0, p1}, Landroidx/camera/extensions/internal/ImageAnalysisConfigProvider;-><init>(Landroidx/camera/extensions/internal/VendorExtender;)V

    iput-object v0, p0, Landroidx/camera/extensions/internal/ExtensionsUseCaseConfigFactory;->mImageAnalysisConfigProvider:Landroidx/camera/extensions/internal/ImageAnalysisConfigProvider;

    return-void
.end method

.method private isImageAnalysisSupported(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Landroid/util/Size;

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 p0, 0x1

    :cond_2
    return p0
.end method


# virtual methods
.method public getConfig(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;I)Landroidx/camera/core/impl/Config;
    .locals 1

    sget-object p2, Landroidx/camera/extensions/internal/ExtensionsUseCaseConfigFactory$1;->$SwitchMap$androidx$camera$core$impl$UseCaseConfigFactory$CaptureType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    return-object v0

    :cond_0
    const-string p0, "Should not go here. VideoCapture is supported by recording the preview stream when Extension is enabled."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v0

    :cond_1
    iget-object p1, p0, Landroidx/camera/extensions/internal/ExtensionsUseCaseConfigFactory;->mImageAnalysisConfigProvider:Landroidx/camera/extensions/internal/ImageAnalysisConfigProvider;

    invoke-virtual {p1}, Landroidx/camera/extensions/internal/ImageAnalysisConfigProvider;->getConfig()Landroidx/camera/core/impl/ImageAnalysisConfig;

    move-result-object p1

    invoke-interface {p1, v0}, Landroidx/camera/core/impl/ImageOutputConfig;->getSupportedResolutions(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Landroidx/camera/extensions/internal/ExtensionsUseCaseConfigFactory;->isImageAnalysisSupported(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroidx/camera/core/impl/MutableOptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, "ImageAnalysis is not supported when Extension is enabled on this device. Check ExtensionsManager.isImageAnalysisSupported before binding the ImageAnalysis use case."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v0

    :cond_3
    iget-object p0, p0, Landroidx/camera/extensions/internal/ExtensionsUseCaseConfigFactory;->mPreviewConfigProvider:Landroidx/camera/extensions/internal/PreviewConfigProvider;

    invoke-virtual {p0}, Landroidx/camera/extensions/internal/PreviewConfigProvider;->getConfig()Landroidx/camera/core/impl/PreviewConfig;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/core/impl/MutableOptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object p0

    goto :goto_0

    :cond_4
    iget-object p0, p0, Landroidx/camera/extensions/internal/ExtensionsUseCaseConfigFactory;->mImageCaptureConfigProvider:Landroidx/camera/extensions/internal/ImageCaptureConfigProvider;

    invoke-virtual {p0}, Landroidx/camera/extensions/internal/ImageCaptureConfigProvider;->getConfig()Landroidx/camera/core/impl/ImageCaptureConfig;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/core/impl/MutableOptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object p0

    :goto_0
    sget-object p1, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_ZSL_DISABLED:Landroidx/camera/core/impl/Config$Option;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/camera/core/impl/OptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;

    move-result-object p0

    return-object p0
.end method
