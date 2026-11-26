.class public final Landroidx/camera/video/HighSpeedVideoSessionConfig;
.super Landroidx/camera/core/SessionConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/HighSpeedVideoSessionConfig$Builder;,
        Landroidx/camera/video/HighSpeedVideoSessionConfig$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Landroidx/camera/video/HighSpeedVideoSessionConfig$Companion;

.field private static final SLOW_MOTION_ENCODE_FRAME_RATE:I = 0x1e


# instance fields
.field private final isSlowMotionEnabled:Z

.field private final preview:Landroidx/camera/core/Preview;

.field private final sessionType:I

.field private final videoCapture:Landroidx/camera/video/VideoCapture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/video/VideoCapture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/video/HighSpeedVideoSessionConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/video/HighSpeedVideoSessionConfig$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/video/HighSpeedVideoSessionConfig;->Companion:Landroidx/camera/video/HighSpeedVideoSessionConfig$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/video/VideoCapture;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/video/VideoCapture<",
            "*>;)V"
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroidx/camera/video/HighSpeedVideoSessionConfig;-><init>(Landroidx/camera/video/VideoCapture;Landroidx/camera/core/Preview;Landroid/util/Range;ZILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/video/VideoCapture;Landroidx/camera/core/Preview;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/video/VideoCapture<",
            "*>;",
            "Landroidx/camera/core/Preview;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroidx/camera/video/HighSpeedVideoSessionConfig;-><init>(Landroidx/camera/video/VideoCapture;Landroidx/camera/core/Preview;Landroid/util/Range;ZILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/video/VideoCapture;Landroidx/camera/core/Preview;Landroid/util/Range;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/video/VideoCapture<",
            "*>;",
            "Landroidx/camera/core/Preview;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroidx/camera/video/HighSpeedVideoSessionConfig;-><init>(Landroidx/camera/video/VideoCapture;Landroidx/camera/core/Preview;Landroid/util/Range;ZILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/video/VideoCapture;Landroidx/camera/core/Preview;Landroid/util/Range;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/video/VideoCapture<",
            "*>;",
            "Landroidx/camera/core/Preview;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/camera/core/UseCase;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lyr;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    const/16 v9, 0x36

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v6, p3

    invoke-direct/range {v2 .. v10}, Landroidx/camera/core/SessionConfig;-><init>(Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;Landroid/util/Range;Ljava/util/Set;Ljava/util/List;ILjh2;)V

    iput-object p1, v2, Landroidx/camera/video/HighSpeedVideoSessionConfig;->videoCapture:Landroidx/camera/video/VideoCapture;

    iput-object p2, v2, Landroidx/camera/video/HighSpeedVideoSessionConfig;->preview:Landroidx/camera/core/Preview;

    iput-boolean p4, v2, Landroidx/camera/video/HighSpeedVideoSessionConfig;->isSlowMotionEnabled:Z

    iput v1, v2, Landroidx/camera/video/HighSpeedVideoSessionConfig;->sessionType:I

    invoke-direct {v2, p1, p2}, Landroidx/camera/video/HighSpeedVideoSessionConfig;->validateSettingsOrThrow(Landroidx/camera/video/VideoCapture;Landroidx/camera/core/Preview;)V

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Landroidx/camera/video/VideoCapture;->getOutput()Landroidx/camera/video/VideoOutput;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/camera/video/Recorder;

    const/16 p1, 0x1e

    invoke-virtual {p0, p1}, Landroidx/camera/video/Recorder;->setVideoEncodingFrameRate(I)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/video/VideoCapture;Landroidx/camera/core/Preview;Landroid/util/Range;ZILjh2;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 61
    sget-object p3, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 62
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/video/HighSpeedVideoSessionConfig;-><init>(Landroidx/camera/video/VideoCapture;Landroidx/camera/core/Preview;Landroid/util/Range;Z)V

    return-void
.end method

.method private final validateSettingsOrThrow(Landroidx/camera/video/VideoCapture;Landroidx/camera/core/Preview;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/video/VideoCapture<",
            "*>;",
            "Landroidx/camera/core/Preview;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/camera/video/VideoCapture;->getMirrorMode()I

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {p1}, Landroidx/camera/video/VideoCapture;->getTargetFrameRate()Landroid/util/Range;

    move-result-object p0

    sget-object p1, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroidx/camera/core/Preview;->getTargetFrameRate()Landroid/util/Range;

    move-result-object p0

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/camera/core/impl/ImageOutputConfig;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroidx/camera/core/impl/ImageOutputConfig;->getResolutionSelector(Landroidx/camera/core/resolutionselector/ResolutionSelector;)Landroidx/camera/core/resolutionselector/ResolutionSelector;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-interface {p0, p1}, Landroidx/camera/core/impl/ImageOutputConfig;->getTargetResolution(Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-interface {p0}, Landroidx/camera/core/impl/ImageOutputConfig;->hasTargetAspectRatio()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Preview.Builder.setTargetAspectRatio() is not allowed for high-speed video."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "Preview.Builder.setTargetResolution() is not allowed for high-speed video."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "Preview.Builder.setResolutionSelector() is not allowed for high-speed video."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "Preview.Builder.setTargetFrameRate() is not allowed for high-speed video."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    const-string p0, "VideoCapture.Builder.setTargetFrameRate() is not allowed for high-speed video."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_6
    const-string p0, "VideoCapture.Builder.setMirrorMode() is not allowed for high-speed video."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getPreview()Landroidx/camera/core/Preview;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/HighSpeedVideoSessionConfig;->preview:Landroidx/camera/core/Preview;

    return-object p0
.end method

.method public getSessionType()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/HighSpeedVideoSessionConfig;->sessionType:I

    return p0
.end method

.method public final getVideoCapture()Landroidx/camera/video/VideoCapture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/video/VideoCapture<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/video/HighSpeedVideoSessionConfig;->videoCapture:Landroidx/camera/video/VideoCapture;

    return-object p0
.end method

.method public final isSlowMotionEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/video/HighSpeedVideoSessionConfig;->isSlowMotionEnabled:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HighSpeedVideoSessionConfig@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {videoCapture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/HighSpeedVideoSessionConfig;->videoCapture:Landroidx/camera/video/VideoCapture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", preview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/HighSpeedVideoSessionConfig;->preview:Landroidx/camera/core/Preview;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", frameRateRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/core/SessionConfig;->getFrameRateRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSlowMotionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/camera/video/HighSpeedVideoSessionConfig;->isSlowMotionEnabled:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Lsg;->d(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
