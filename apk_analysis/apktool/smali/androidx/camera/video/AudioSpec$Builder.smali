.class public final Landroidx/camera/video/AudioSpec$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/AudioSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bitrate:I

.field private channelCount:I

.field private mimeType:Ljava/lang/String;

.field private sampleRate:I

.field private source:I

.field private sourceFormat:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/camera/video/AudioSpec$Builder;->sourceFormat:I

    iput v0, p0, Landroidx/camera/video/AudioSpec$Builder;->source:I

    iput v0, p0, Landroidx/camera/video/AudioSpec$Builder;->channelCount:I

    const-string v0, "audio/*"

    iput-object v0, p0, Landroidx/camera/video/AudioSpec$Builder;->mimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/camera/video/AudioSpec;
    .locals 7

    new-instance v0, Landroidx/camera/video/AudioSpec;

    iget v1, p0, Landroidx/camera/video/AudioSpec$Builder;->bitrate:I

    iget v2, p0, Landroidx/camera/video/AudioSpec$Builder;->sourceFormat:I

    iget v3, p0, Landroidx/camera/video/AudioSpec$Builder;->source:I

    iget v4, p0, Landroidx/camera/video/AudioSpec$Builder;->sampleRate:I

    iget v5, p0, Landroidx/camera/video/AudioSpec$Builder;->channelCount:I

    iget-object v6, p0, Landroidx/camera/video/AudioSpec$Builder;->mimeType:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Landroidx/camera/video/AudioSpec;-><init>(IIIIILjava/lang/String;)V

    return-object v0
.end method

.method public final setBitrate(I)Landroidx/camera/video/AudioSpec$Builder;
    .locals 0

    iput p1, p0, Landroidx/camera/video/AudioSpec$Builder;->bitrate:I

    return-object p0
.end method

.method public final setChannelCount(I)Landroidx/camera/video/AudioSpec$Builder;
    .locals 0

    iput p1, p0, Landroidx/camera/video/AudioSpec$Builder;->channelCount:I

    return-object p0
.end method

.method public final setMimeType(Ljava/lang/String;)Landroidx/camera/video/AudioSpec$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/video/AudioSpec$Builder;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public final setSampleRate(I)Landroidx/camera/video/AudioSpec$Builder;
    .locals 0

    iput p1, p0, Landroidx/camera/video/AudioSpec$Builder;->sampleRate:I

    return-object p0
.end method

.method public final setSource(I)Landroidx/camera/video/AudioSpec$Builder;
    .locals 0

    iput p1, p0, Landroidx/camera/video/AudioSpec$Builder;->source:I

    return-object p0
.end method

.method public final setSourceFormat(I)Landroidx/camera/video/AudioSpec$Builder;
    .locals 0

    iput p1, p0, Landroidx/camera/video/AudioSpec$Builder;->sourceFormat:I

    return-object p0
.end method
