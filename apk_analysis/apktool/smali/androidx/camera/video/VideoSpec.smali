.class public final Landroidx/camera/video/VideoSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/VideoSpec$Builder;,
        Landroidx/camera/video/VideoSpec$Companion;
    }
.end annotation


# static fields
.field public static final BITRATE_UNSPECIFIED:I = 0x0

.field public static final Companion:Landroidx/camera/video/VideoSpec$Companion;

.field private static final DEFAULT:Landroidx/camera/video/VideoSpec;

.field public static final ENCODE_FRAME_RATE_UNSPECIFIED:I = 0x0

.field public static final MIME_TYPE_UNSPECIFIED:Ljava/lang/String; = "video/*"

.field private static final QUALITY_SELECTOR_UNSPECIFIED:Landroidx/camera/video/QualitySelector;


# instance fields
.field private final aspectRatio:I

.field private final bitrate:I

.field private final encodeFrameRate:I

.field private final mimeType:Ljava/lang/String;

.field private final qualitySelector:Landroidx/camera/video/QualitySelector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/video/VideoSpec$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/video/VideoSpec$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/video/VideoSpec;->Companion:Landroidx/camera/video/VideoSpec$Companion;

    sget-object v1, Landroidx/camera/video/QualitySelector;->NONE:Landroidx/camera/video/QualitySelector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v1, Landroidx/camera/video/VideoSpec;->QUALITY_SELECTOR_UNSPECIFIED:Landroidx/camera/video/QualitySelector;

    invoke-virtual {v0}, Landroidx/camera/video/VideoSpec$Companion;->builder()Landroidx/camera/video/VideoSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/video/VideoSpec$Builder;->build()Landroidx/camera/video/VideoSpec;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/VideoSpec;->DEFAULT:Landroidx/camera/video/VideoSpec;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 48
    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroidx/camera/video/VideoSpec;-><init>(Landroidx/camera/video/QualitySelector;IIILjava/lang/String;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/video/QualitySelector;)V
    .locals 8

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroidx/camera/video/VideoSpec;-><init>(Landroidx/camera/video/QualitySelector;IIILjava/lang/String;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/video/QualitySelector;I)V
    .locals 8

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Landroidx/camera/video/VideoSpec;-><init>(Landroidx/camera/video/QualitySelector;IIILjava/lang/String;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/video/QualitySelector;II)V
    .locals 8

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroidx/camera/video/VideoSpec;-><init>(Landroidx/camera/video/QualitySelector;IIILjava/lang/String;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/video/QualitySelector;III)V
    .locals 8

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Landroidx/camera/video/VideoSpec;-><init>(Landroidx/camera/video/QualitySelector;IIILjava/lang/String;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/video/QualitySelector;IIILjava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroidx/camera/video/VideoSpec;->qualitySelector:Landroidx/camera/video/QualitySelector;

    .line 44
    iput p2, p0, Landroidx/camera/video/VideoSpec;->encodeFrameRate:I

    .line 45
    iput p3, p0, Landroidx/camera/video/VideoSpec;->bitrate:I

    .line 46
    iput p4, p0, Landroidx/camera/video/VideoSpec;->aspectRatio:I

    .line 47
    iput-object p5, p0, Landroidx/camera/video/VideoSpec;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/video/QualitySelector;IIILjava/lang/String;ILjh2;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    sget-object p1, Landroidx/camera/video/VideoSpec;->QUALITY_SELECTOR_UNSPECIFIED:Landroidx/camera/video/QualitySelector;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    const/4 p4, -0x1

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    const-string p5, "video/*"

    :cond_4
    move p6, p4

    move-object p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-direct/range {p2 .. p7}, Landroidx/camera/video/VideoSpec;-><init>(Landroidx/camera/video/QualitySelector;IIILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getDEFAULT$cp()Landroidx/camera/video/VideoSpec;
    .locals 1

    sget-object v0, Landroidx/camera/video/VideoSpec;->DEFAULT:Landroidx/camera/video/VideoSpec;

    return-object v0
.end method

.method public static final synthetic access$getQUALITY_SELECTOR_UNSPECIFIED$cp()Landroidx/camera/video/QualitySelector;
    .locals 1

    sget-object v0, Landroidx/camera/video/VideoSpec;->QUALITY_SELECTOR_UNSPECIFIED:Landroidx/camera/video/QualitySelector;

    return-object v0
.end method

.method public static final builder()Landroidx/camera/video/VideoSpec$Builder;
    .locals 1

    sget-object v0, Landroidx/camera/video/VideoSpec;->Companion:Landroidx/camera/video/VideoSpec$Companion;

    invoke-virtual {v0}, Landroidx/camera/video/VideoSpec$Companion;->builder()Landroidx/camera/video/VideoSpec$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/video/VideoSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/camera/video/VideoSpec;->qualitySelector:Landroidx/camera/video/QualitySelector;

    check-cast p1, Landroidx/camera/video/VideoSpec;

    iget-object v3, p1, Landroidx/camera/video/VideoSpec;->qualitySelector:Landroidx/camera/video/QualitySelector;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/camera/video/VideoSpec;->encodeFrameRate:I

    iget v3, p1, Landroidx/camera/video/VideoSpec;->encodeFrameRate:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/camera/video/VideoSpec;->bitrate:I

    iget v3, p1, Landroidx/camera/video/VideoSpec;->bitrate:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/camera/video/VideoSpec;->aspectRatio:I

    iget v3, p1, Landroidx/camera/video/VideoSpec;->aspectRatio:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroidx/camera/video/VideoSpec;->mimeType:Ljava/lang/String;

    iget-object p1, p1, Landroidx/camera/video/VideoSpec;->mimeType:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getAspectRatio()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/VideoSpec;->aspectRatio:I

    return p0
.end method

.method public final getBitrate()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/VideoSpec;->bitrate:I

    return p0
.end method

.method public final getEncodeFrameRate()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/VideoSpec;->encodeFrameRate:I

    return p0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/VideoSpec;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public final getQualitySelector()Landroidx/camera/video/QualitySelector;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/VideoSpec;->qualitySelector:Landroidx/camera/video/QualitySelector;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Landroidx/camera/video/VideoSpec;->qualitySelector:Landroidx/camera/video/QualitySelector;

    iget v1, p0, Landroidx/camera/video/VideoSpec;->encodeFrameRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroidx/camera/video/VideoSpec;->bitrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroidx/camera/video/VideoSpec;->aspectRatio:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p0, p0, Landroidx/camera/video/VideoSpec;->mimeType:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toBuilder()Landroidx/camera/video/VideoSpec$Builder;
    .locals 2

    new-instance v0, Landroidx/camera/video/VideoSpec$Builder;

    invoke-direct {v0}, Landroidx/camera/video/VideoSpec$Builder;-><init>()V

    iget-object v1, p0, Landroidx/camera/video/VideoSpec;->qualitySelector:Landroidx/camera/video/QualitySelector;

    invoke-virtual {v0, v1}, Landroidx/camera/video/VideoSpec$Builder;->setQualitySelector(Landroidx/camera/video/QualitySelector;)Landroidx/camera/video/VideoSpec$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/camera/video/VideoSpec;->encodeFrameRate:I

    invoke-virtual {v0, v1}, Landroidx/camera/video/VideoSpec$Builder;->setEncodeFrameRate(I)Landroidx/camera/video/VideoSpec$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/camera/video/VideoSpec;->bitrate:I

    invoke-virtual {v0, v1}, Landroidx/camera/video/VideoSpec$Builder;->setBitrate(I)Landroidx/camera/video/VideoSpec$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/camera/video/VideoSpec;->aspectRatio:I

    invoke-virtual {v0, v1}, Landroidx/camera/video/VideoSpec$Builder;->setAspectRatio(I)Landroidx/camera/video/VideoSpec$Builder;

    move-result-object v0

    iget-object p0, p0, Landroidx/camera/video/VideoSpec;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroidx/camera/video/VideoSpec$Builder;->setMimeType(Ljava/lang/String;)Landroidx/camera/video/VideoSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoSpec{qualitySelector="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/video/VideoSpec;->qualitySelector:Landroidx/camera/video/QualitySelector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encodeFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/video/VideoSpec;->encodeFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/video/VideoSpec;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/video/VideoSpec;->aspectRatio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/video/VideoSpec;->mimeType:Ljava/lang/String;

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Lxp;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
