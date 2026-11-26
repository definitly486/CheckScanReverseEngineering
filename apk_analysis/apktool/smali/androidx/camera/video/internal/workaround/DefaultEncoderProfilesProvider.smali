.class public final Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/EncoderProfilesProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider$Companion;

.field public static final DEFAULT_AUDIO_BITRATE:I = 0x17700

.field public static final DEFAULT_AUDIO_CHANNELS:I = 0x1

.field public static final DEFAULT_AUDIO_CODEC:I = 0x3

.field public static final DEFAULT_AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field public static final DEFAULT_AUDIO_PROFILE:I = 0x2

.field public static final DEFAULT_AUDIO_SAMPLE_RATE:I = 0xac44

.field public static final DEFAULT_DURATION_SECONDS:I = 0x3c

.field public static final DEFAULT_OUTPUT_FORMAT:I = 0x2

.field public static final DEFAULT_VIDEO_BITRATE_FHD:I = 0x989680

.field public static final DEFAULT_VIDEO_BITRATE_HD:I = 0x3d0900

.field public static final DEFAULT_VIDEO_BITRATE_SD:I = 0x1e8480

.field public static final DEFAULT_VIDEO_BITRATE_UHD:I = 0x2625a00

.field public static final DEFAULT_VIDEO_BIT_DEPTH:I = 0x8

.field public static final DEFAULT_VIDEO_CHROMA_SUBSAMPLING:I = 0x0

.field public static final DEFAULT_VIDEO_CODEC:I = 0x2

.field public static final DEFAULT_VIDEO_FRAME_RATE:I = 0x1e

.field public static final DEFAULT_VIDEO_HDR_FORMAT:I = 0x0

.field public static final DEFAULT_VIDEO_MIME_TYPE:Ljava/lang/String; = "video/avc"

.field public static final DEFAULT_VIDEO_PROFILE:I = -0x1


# instance fields
.field private final cameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

.field private final encoderProfilesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/camera/core/impl/EncoderProfilesProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedSizes$delegate:Lcl4;

.field private final targetQualities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/video/Quality;",
            ">;"
        }
    .end annotation
.end field

.field private final videoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->Companion:Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/CameraInfoInternal;Ljava/util/List;Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/CameraInfoInternal;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/video/Quality;",
            ">;",
            "Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->cameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    iput-object p2, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->targetQualities:Ljava/util/List;

    iput-object p3, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->videoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    new-instance p1, Ldz0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Ldz0;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->supportedSizes$delegate:Lcl4;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->encoderProfilesMap:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->supportedSizes_delegate$lambda$0(Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final createDefaultAudioProfile(ILjava/lang/String;IIII)Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;
    .locals 0

    invoke-static/range {p1 .. p6}, Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;->create(ILjava/lang/String;IIII)Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static synthetic createDefaultAudioProfile$default(Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;ILjava/lang/String;IIIIILjava/lang/Object;)Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const/4 p1, 0x3

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    const-string p2, "audio/mp4a-latm"

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    const p3, 0x17700

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    const p4, 0xac44

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    const/4 p5, 0x1

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    const/4 p6, 0x2

    :cond_5
    move p7, p5

    move p8, p6

    move p5, p3

    move p6, p4

    move p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-direct/range {p2 .. p8}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->createDefaultAudioProfile(ILjava/lang/String;IIII)Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    move-result-object p0

    return-object p0
.end method

.method private final createDefaultEncoderProfiles(IILandroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 0

    invoke-static {p4}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p3}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-static {p1, p2, p0, p3}, Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;->create(IILjava/util/List;Ljava/util/List;)Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static synthetic createDefaultEncoderProfiles$default(Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;IILandroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;ILjava/lang/Object;)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/16 p1, 0x3c

    :cond_0
    const/4 p6, 0x2

    and-int/2addr p5, p6

    if-eqz p5, :cond_1

    move p2, p6

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->createDefaultEncoderProfiles(IILandroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p0

    return-object p0
.end method

.method private final createDefaultVideoProfile(ILjava/lang/String;IIIIIIII)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
    .locals 0

    move p0, p1

    move-object p1, p2

    move p2, p5

    move p5, p4

    move p4, p3

    move p3, p6

    move p6, p7

    move p7, p8

    move p8, p9

    move p9, p10

    invoke-static/range {p0 .. p9}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->create(ILjava/lang/String;IIIIIIII)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static synthetic createDefaultVideoProfile$default(Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;ILjava/lang/String;IIIIIIIIILjava/lang/Object;)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
    .locals 1

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_0

    const/4 p1, 0x2

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    const-string p2, "video/avc"

    :cond_1
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_2

    const/16 p6, 0x1e

    :cond_2
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_3

    const/4 p7, -0x1

    :cond_3
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_4

    const/16 p8, 0x8

    :cond_4
    and-int/lit16 p12, p11, 0x100

    const/4 v0, 0x0

    if-eqz p12, :cond_5

    move p9, v0

    :cond_5
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_6

    move p12, v0

    move p10, p8

    move p11, p9

    move p8, p6

    move p9, p7

    move p6, p4

    move p7, p5

    move-object p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    goto :goto_0

    :cond_6
    move p12, p10

    move p11, p9

    move p9, p7

    move p10, p8

    move p7, p5

    move p8, p6

    move p5, p3

    move p6, p4

    move p3, p1

    move-object p4, p2

    move-object p2, p0

    :goto_0
    invoke-direct/range {p2 .. p12}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->createDefaultVideoProfile(ILjava/lang/String;IIIIIIII)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object p0

    return-object p0
.end method

.method private final find(Ljava/util/List;I)Landroidx/camera/video/Quality$ConstantQuality;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/video/Quality;",
            ">;I)",
            "Landroidx/camera/video/Quality$ConstantQuality;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroidx/camera/video/Quality;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroidx/camera/video/Quality$ConstantQuality;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/camera/video/Quality$ConstantQuality;->getQualityValue(I)I

    move-result v1

    if-ne v1, p2, :cond_0

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    instance-of p0, p1, Landroidx/camera/video/Quality$ConstantQuality;

    if-eqz p0, :cond_2

    check-cast p1, Landroidx/camera/video/Quality$ConstantQuality;

    return-object p1

    :cond_2
    return-object v0
.end method

.method private final generateEncoderProfiles(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 13

    invoke-direct {p0, p1}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->generateVideoProfiles(I)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v11, 0x3f

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v12}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->createDefaultAudioProfile$default(Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;ILjava/lang/String;IIIIILjava/lang/Object;)Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    move-result-object p0

    move-object v0, v4

    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->createDefaultEncoderProfiles$default(Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;IILandroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;ILjava/lang/Object;)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p0

    return-object p0
.end method

.method private final generateVideoProfiles(I)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
    .locals 5

    iget-object v0, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->targetQualities:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->find(Ljava/util/List;I)Landroidx/camera/video/Quality$ConstantQuality;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroidx/camera/video/Quality$ConstantQuality;->getTypicalSizes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    invoke-direct {p0}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->getSupportedSizes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {p0, p1}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->getTypicalBitrate(Landroidx/camera/video/Quality;)I

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->resolveVideoProfile(III)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method private final getProfileInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->encoderProfilesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->encoderProfilesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/EncoderProfilesProxy;

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->generateEncoderProfiles(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v0

    iget-object p0, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->encoderProfilesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private final getSupportedSizes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->supportedSizes$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final getTypicalBitrate(Landroidx/camera/video/Quality;)I
    .locals 0

    sget-object p0, Landroidx/camera/video/Quality;->UHD:Landroidx/camera/video/Quality;

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x2625a00

    return p0

    :cond_0
    sget-object p0, Landroidx/camera/video/Quality;->FHD:Landroidx/camera/video/Quality;

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x989680

    return p0

    :cond_1
    sget-object p0, Landroidx/camera/video/Quality;->HD:Landroidx/camera/video/Quality;

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x3d0900

    return p0

    :cond_2
    sget-object p0, Landroidx/camera/video/Quality;->SD:Landroidx/camera/video/Quality;

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x1e8480

    return p0

    :cond_3
    const-string p0, "Undefined bitrate for quality: "

    invoke-static {p1, p0}, Lr01;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private final resolveVideoProfile(III)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
    .locals 15

    const/16 v11, 0x3e3

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-static/range {v0 .. v12}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->createDefaultVideoProfile$default(Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;ILjava/lang/String;IIIIIIIIILjava/lang/Object;)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->videoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    invoke-virtual {v1}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getMediaType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v3}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;->find(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v3, p1

    move/from16 v4, p2

    invoke-interface {v2, v3, v4}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->isSizeSupportedAllowSwapping(II)Z

    move-result v5

    if-nez v5, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-interface {v2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedBitrateRange()Landroid/util/Range;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v6, p3

    if-eq v5, v6, :cond_3

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v13, 0x3e3

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-static/range {v2 .. v14}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->createDefaultVideoProfile$default(Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;ILjava/lang/String;IIIIIIIIILjava/lang/Object;)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method private static final supportedSizes_delegate$lambda$0(Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;)Ljava/util/List;
    .locals 1

    iget-object p0, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->cameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    const/16 v0, 0x22

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getSupportedResolutions(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->getProfileInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p0

    return-object p0
.end method

.method public hasProfile(I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->getProfileInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
