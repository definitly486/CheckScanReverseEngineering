.class public final Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;

.field private static final MIMETYPE_AUDIO_OPUS_GATED:Ljava/lang/String;

.field private static final MIMETYPE_VIDEO_APV_GATED:Ljava/lang/String;

.field private static final MIMETYPE_VIDEO_AV1_GATED:Ljava/lang/String;

.field private static final MIMETYPE_VIDEO_DOLBY_VISION_GATED:Ljava/lang/String;

.field private static final MIMETYPE_VIDEO_HEVC_GATED:Ljava/lang/String;

.field private static final MIMETYPE_VIDEO_VP9_GATED:Ljava/lang/String;

.field private static final registries$delegate:Lcl4;

.field private static final standardMp4Audios$delegate:Lcl4;

.field private static final standardWebmAudios$delegate:Lcl4;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;

    invoke-direct {v0}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;-><init>()V

    sput-object v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->INSTANCE:Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;

    const-string v1, "video/hevc"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->takeIf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_HEVC_GATED:Ljava/lang/String;

    const-string v1, "video/x-vnd.on2.vp9"

    invoke-direct {v0, v1, v2}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->takeIf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_VP9_GATED:Ljava/lang/String;

    const-string v1, "audio/opus"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->takeIf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_AUDIO_OPUS_GATED:Ljava/lang/String;

    const-string v1, "video/dolby-vision"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->takeIf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_DOLBY_VISION_GATED:Ljava/lang/String;

    const-string v1, "video/av01"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->takeIf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_AV1_GATED:Ljava/lang/String;

    const-string v1, "video/apv"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->takeIf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_APV_GATED:Ljava/lang/String;

    new-instance v0, Lru2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru2;-><init>(I)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    sput-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->registries$delegate:Lcl4;

    new-instance v0, Lsu2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsu2;-><init>(I)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    sput-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->standardMp4Audios$delegate:Lcl4;

    new-instance v0, Ltu2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltu2;-><init>(I)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    sput-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->standardWebmAudios$delegate:Lcl4;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildHdr10Registry$lambda$0$1(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildSdrRegistry$lambda$0$1(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final buildDolbyVisionRegistry()Landroidx/camera/video/internal/config/FormatComboRegistry;
    .locals 2

    new-instance p0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;

    invoke-direct {p0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;-><init>()V

    new-instance v0, Lu00;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lu00;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->container(ILnl3;)V

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->build()Landroidx/camera/video/internal/config/FormatComboRegistry;

    move-result-object p0

    return-object p0
.end method

.method private static final buildDolbyVisionRegistry$lambda$0$0(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lj59;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_DOLBY_VISION_GATED:Ljava/lang/String;

    invoke-static {v0}, Lu96;->j(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->INSTANCE:Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->getStandardMp4Audios()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;->support(Ljava/util/List;Ljava/util/List;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final buildHdr10PlusRegistry()Landroidx/camera/video/internal/config/FormatComboRegistry;
    .locals 2

    new-instance p0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;

    invoke-direct {p0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;-><init>()V

    new-instance v0, Luu2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Luu2;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->container(ILnl3;)V

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->build()Landroidx/camera/video/internal/config/FormatComboRegistry;

    move-result-object p0

    return-object p0
.end method

.method private static final buildHdr10PlusRegistry$lambda$0$0(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lj59;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_HEVC_GATED:Ljava/lang/String;

    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_AV1_GATED:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyr;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->INSTANCE:Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->getStandardMp4Audios()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;->support(Ljava/util/List;Ljava/util/List;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final buildHdr10Registry()Landroidx/camera/video/internal/config/FormatComboRegistry;
    .locals 2

    new-instance p0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;

    invoke-direct {p0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;-><init>()V

    new-instance v0, Lws0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lws0;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->container(ILnl3;)V

    new-instance v0, Lyc2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lyc2;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->container(ILnl3;)V

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->build()Landroidx/camera/video/internal/config/FormatComboRegistry;

    move-result-object p0

    return-object p0
.end method

.method private static final buildHdr10Registry$lambda$0$0(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lj59;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_HEVC_GATED:Ljava/lang/String;

    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_AV1_GATED:Ljava/lang/String;

    sget-object v2, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_APV_GATED:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyr;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->INSTANCE:Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->getStandardMp4Audios()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;->support(Ljava/util/List;Ljava/util/List;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final buildHdr10Registry$lambda$0$1(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lj59;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_VP9_GATED:Ljava/lang/String;

    invoke-static {v0}, Lu96;->j(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->INSTANCE:Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->getStandardWebmAudios()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;->support(Ljava/util/List;Ljava/util/List;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final buildHlgRegistry()Landroidx/camera/video/internal/config/FormatComboRegistry;
    .locals 2

    new-instance p0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;

    invoke-direct {p0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;-><init>()V

    new-instance v0, Lvu2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lvu2;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->container(ILnl3;)V

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->build()Landroidx/camera/video/internal/config/FormatComboRegistry;

    move-result-object p0

    return-object p0
.end method

.method private static final buildHlgRegistry$lambda$0$0(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lj59;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_HEVC_GATED:Ljava/lang/String;

    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_AV1_GATED:Ljava/lang/String;

    sget-object v2, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_APV_GATED:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyr;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->INSTANCE:Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->getStandardMp4Audios()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;->support(Ljava/util/List;Ljava/util/List;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final buildSdrRegistry()Landroidx/camera/video/internal/config/FormatComboRegistry;
    .locals 2

    new-instance p0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;

    invoke-direct {p0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;-><init>()V

    new-instance v0, Lwu2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lwu2;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->container(ILnl3;)V

    new-instance v0, Lxi1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lxi1;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->container(ILnl3;)V

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->build()Landroidx/camera/video/internal/config/FormatComboRegistry;

    move-result-object p0

    return-object p0
.end method

.method private static final buildSdrRegistry$lambda$0$0(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lj59;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_HEVC_GATED:Ljava/lang/String;

    sget-object v4, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_DOLBY_VISION_GATED:Ljava/lang/String;

    sget-object v5, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_AV1_GATED:Ljava/lang/String;

    sget-object v6, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_APV_GATED:Ljava/lang/String;

    const-string v0, "video/avc"

    const-string v1, "video/mp4v-es"

    const-string v2, "video/3gpp"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyr;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->INSTANCE:Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->getStandardMp4Audios()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;->support(Ljava/util/List;Ljava/util/List;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final buildSdrRegistry$lambda$0$1(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lj59;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "video/x-vnd.on2.vp8"

    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_VIDEO_VP9_GATED:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyr;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->INSTANCE:Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->getStandardWebmAudios()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;->support(Ljava/util/List;Ljava/util/List;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic c(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildHdr10Registry$lambda$0$0(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildHlgRegistry$lambda$0$0(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e()Ljava/util/Map;
    .locals 1

    invoke-static {}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->registries_delegate$lambda$0()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildSdrRegistry$lambda$0$0(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g()Ljava/util/List;
    .locals 1

    invoke-static {}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->standardMp4Audios_delegate$lambda$0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final getRegistries()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/camera/core/DynamicRange;",
            "Landroidx/camera/video/internal/config/FormatComboRegistry;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->registries$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private final getStandardMp4Audios()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->standardMp4Audios$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final getStandardWebmAudios()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->standardWebmAudios$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static synthetic h(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildDolbyVisionRegistry$lambda$0$0(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildHdr10PlusRegistry$lambda$0$0(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j()Ljava/util/List;
    .locals 1

    invoke-static {}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->standardWebmAudios_delegate$lambda$0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final registries_delegate$lambda$0()Ljava/util/Map;
    .locals 9

    sget-object v0, Landroidx/camera/core/DynamicRange;->SDR:Landroidx/camera/core/DynamicRange;

    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->INSTANCE:Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildSdrRegistry()Landroidx/camera/video/internal/config/FormatComboRegistry;

    move-result-object v2

    new-instance v3, Lb36;

    invoke-direct {v3, v0, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Landroidx/camera/core/DynamicRange;->HLG_10_BIT:Landroidx/camera/core/DynamicRange;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildHlgRegistry()Landroidx/camera/video/internal/config/FormatComboRegistry;

    move-result-object v2

    new-instance v4, Lb36;

    invoke-direct {v4, v0, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Landroidx/camera/core/DynamicRange;->HDR10_10_BIT:Landroidx/camera/core/DynamicRange;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildHdr10Registry()Landroidx/camera/video/internal/config/FormatComboRegistry;

    move-result-object v2

    new-instance v5, Lb36;

    invoke-direct {v5, v0, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Landroidx/camera/core/DynamicRange;->HDR10_PLUS_10_BIT:Landroidx/camera/core/DynamicRange;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildHdr10PlusRegistry()Landroidx/camera/video/internal/config/FormatComboRegistry;

    move-result-object v2

    new-instance v6, Lb36;

    invoke-direct {v6, v0, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Landroidx/camera/core/DynamicRange;->DOLBY_VISION_8_BIT:Landroidx/camera/core/DynamicRange;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildDolbyVisionRegistry()Landroidx/camera/video/internal/config/FormatComboRegistry;

    move-result-object v2

    new-instance v7, Lb36;

    invoke-direct {v7, v0, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Landroidx/camera/core/DynamicRange;->DOLBY_VISION_10_BIT:Landroidx/camera/core/DynamicRange;

    invoke-direct {v1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->buildDolbyVisionRegistry()Landroidx/camera/video/internal/config/FormatComboRegistry;

    move-result-object v1

    new-instance v8, Lb36;

    invoke-direct {v8, v0, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v3 .. v8}, [Lb36;

    move-result-object v0

    invoke-static {v0}, Ln05;->f([Lb36;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method private static final standardMp4Audios_delegate$lambda$0()Ljava/util/List;
    .locals 3

    const-string v0, "audio/3gpp"

    const-string v1, "audio/amr-wb"

    const-string v2, "audio/mp4a-latm"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyr;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static final standardWebmAudios_delegate$lambda$0()Ljava/util/List;
    .locals 2

    const-string v0, "audio/vorbis"

    sget-object v1, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->MIMETYPE_AUDIO_OPUS_GATED:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyr;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private final takeIf(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, p2, :cond_0

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getDynamicRangesForVideoMime(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroidx/camera/core/DynamicRange;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-direct {p0}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->getRegistries()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/DynamicRange;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/video/internal/config/FormatComboRegistry;

    invoke-virtual {v1, p1}, Landroidx/camera/video/internal/config/FormatComboRegistry;->getCombosForVideo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getRegistry(Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/internal/config/FormatComboRegistry;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->getRegistries()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/video/internal/config/FormatComboRegistry;

    return-object p0
.end method
