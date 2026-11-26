.class public final Landroidx/camera/video/VideoSpec$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/VideoSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private aspectRatio:I

.field private bitrate:I

.field private encodeFrameRate:I

.field private mimeType:Ljava/lang/String;

.field private qualitySelector:Landroidx/camera/video/QualitySelector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/camera/video/VideoSpec;->Companion:Landroidx/camera/video/VideoSpec$Companion;

    invoke-virtual {v0}, Landroidx/camera/video/VideoSpec$Companion;->getQUALITY_SELECTOR_UNSPECIFIED()Landroidx/camera/video/QualitySelector;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/VideoSpec$Builder;->qualitySelector:Landroidx/camera/video/QualitySelector;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/camera/video/VideoSpec$Builder;->aspectRatio:I

    const-string v0, "video/*"

    iput-object v0, p0, Landroidx/camera/video/VideoSpec$Builder;->mimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/camera/video/VideoSpec;
    .locals 6

    new-instance v0, Landroidx/camera/video/VideoSpec;

    iget-object v1, p0, Landroidx/camera/video/VideoSpec$Builder;->qualitySelector:Landroidx/camera/video/QualitySelector;

    iget v2, p0, Landroidx/camera/video/VideoSpec$Builder;->encodeFrameRate:I

    iget v3, p0, Landroidx/camera/video/VideoSpec$Builder;->bitrate:I

    iget v4, p0, Landroidx/camera/video/VideoSpec$Builder;->aspectRatio:I

    iget-object v5, p0, Landroidx/camera/video/VideoSpec$Builder;->mimeType:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Landroidx/camera/video/VideoSpec;-><init>(Landroidx/camera/video/QualitySelector;IIILjava/lang/String;)V

    return-object v0
.end method

.method public final setAspectRatio(I)Landroidx/camera/video/VideoSpec$Builder;
    .locals 0

    iput p1, p0, Landroidx/camera/video/VideoSpec$Builder;->aspectRatio:I

    return-object p0
.end method

.method public final setBitrate(I)Landroidx/camera/video/VideoSpec$Builder;
    .locals 0

    iput p1, p0, Landroidx/camera/video/VideoSpec$Builder;->bitrate:I

    return-object p0
.end method

.method public final setEncodeFrameRate(I)Landroidx/camera/video/VideoSpec$Builder;
    .locals 0

    iput p1, p0, Landroidx/camera/video/VideoSpec$Builder;->encodeFrameRate:I

    return-object p0
.end method

.method public final setMimeType(Ljava/lang/String;)Landroidx/camera/video/VideoSpec$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/video/VideoSpec$Builder;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public final setQualitySelector(Landroidx/camera/video/QualitySelector;)Landroidx/camera/video/VideoSpec$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/video/VideoSpec$Builder;->qualitySelector:Landroidx/camera/video/QualitySelector;

    return-object p0
.end method
