.class public final Landroidx/camera/video/internal/utils/MediaFormatExt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/video/internal/utils/MediaFormatExt;

.field public static final KEY_CSD_0:Ljava/lang/String; = "csd-0"

.field public static final KEY_CSD_1:Ljava/lang/String; = "csd-1"

.field public static final KEY_CSD_2:Ljava/lang/String; = "csd-2"

.field public static final KEY_TIMELAPSE_ENABLED:Ljava/lang/String; = "time-lapse-enable"

.field public static final KEY_TIMELAPSE_FPS:Ljava/lang/String; = "time-lapse-fps"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/video/internal/utils/MediaFormatExt;

    invoke-direct {v0}, Landroidx/camera/video/internal/utils/MediaFormatExt;-><init>()V

    sput-object v0, Landroidx/camera/video/internal/utils/MediaFormatExt;->INSTANCE:Landroidx/camera/video/internal/utils/MediaFormatExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isVideo(Landroid/media/MediaFormat;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "mime"

    invoke-virtual {p1, p0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const-string v0, "video/"

    invoke-static {p0, v0, p1}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return p1
.end method
