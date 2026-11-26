.class public final Landroidx/camera/video/HighSpeedVideoSessionConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/HighSpeedVideoSessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private frameRateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isSlowMotionEnabled:Z

.field private preview:Landroidx/camera/core/Preview;

.field private final videoCapture:Landroidx/camera/video/VideoCapture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/video/VideoCapture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/video/VideoCapture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/video/VideoCapture<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/HighSpeedVideoSessionConfig$Builder;->videoCapture:Landroidx/camera/video/VideoCapture;

    sget-object p1, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/video/HighSpeedVideoSessionConfig$Builder;->frameRateRange:Landroid/util/Range;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/camera/video/HighSpeedVideoSessionConfig;
    .locals 4

    new-instance v0, Landroidx/camera/video/HighSpeedVideoSessionConfig;

    iget-object v1, p0, Landroidx/camera/video/HighSpeedVideoSessionConfig$Builder;->videoCapture:Landroidx/camera/video/VideoCapture;

    iget-object v2, p0, Landroidx/camera/video/HighSpeedVideoSessionConfig$Builder;->preview:Landroidx/camera/core/Preview;

    iget-object v3, p0, Landroidx/camera/video/HighSpeedVideoSessionConfig$Builder;->frameRateRange:Landroid/util/Range;

    iget-boolean p0, p0, Landroidx/camera/video/HighSpeedVideoSessionConfig$Builder;->isSlowMotionEnabled:Z

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/camera/video/HighSpeedVideoSessionConfig;-><init>(Landroidx/camera/video/VideoCapture;Landroidx/camera/core/Preview;Landroid/util/Range;Z)V

    return-object v0
.end method

.method public final setFrameRateRange(Landroid/util/Range;)Landroidx/camera/video/HighSpeedVideoSessionConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/camera/video/HighSpeedVideoSessionConfig$Builder;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/video/HighSpeedVideoSessionConfig$Builder;->frameRateRange:Landroid/util/Range;

    return-object p0
.end method

.method public final setPreview(Landroidx/camera/core/Preview;)Landroidx/camera/video/HighSpeedVideoSessionConfig$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/camera/video/HighSpeedVideoSessionConfig$Builder;->preview:Landroidx/camera/core/Preview;

    return-object p0
.end method

.method public final setSlowMotionEnabled(Z)Landroidx/camera/video/HighSpeedVideoSessionConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/camera/video/HighSpeedVideoSessionConfig$Builder;->isSlowMotionEnabled:Z

    return-object p0
.end method
