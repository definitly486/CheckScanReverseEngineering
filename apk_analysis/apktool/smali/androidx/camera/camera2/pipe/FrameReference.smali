.class public interface abstract Landroidx/camera/camera2/pipe/FrameReference;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/FrameReference$Companion;,
        Landroidx/camera/camera2/pipe/FrameReference$DefaultImpls;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/FrameReference$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/FrameReference$Companion;->$$INSTANCE:Landroidx/camera/camera2/pipe/FrameReference$Companion;

    sput-object v0, Landroidx/camera/camera2/pipe/FrameReference;->Companion:Landroidx/camera/camera2/pipe/FrameReference$Companion;

    return-void
.end method

.method public static synthetic access$imageStatus-BWjvHWQ$jd(Landroidx/camera/camera2/pipe/FrameReference;I)I
    .locals 0

    invoke-super {p0, p1}, Landroidx/camera/camera2/pipe/FrameReference;->imageStatus-BWjvHWQ(I)I

    move-result p0

    return p0
.end method

.method public static synthetic tryAcquire$default(Landroidx/camera/camera2/pipe/FrameReference;Ljava/util/Set;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/Frame;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/FrameReference;->tryAcquire(Ljava/util/Set;)Landroidx/camera/camera2/pipe/Frame;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: tryAcquire"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract getFrameId-OMxQvVY()J
.end method

.method public abstract getFrameInfoStatus-U7r42EA()I
.end method

.method public abstract getFrameNumber-Ugla2oM()J
.end method

.method public abstract getFrameTimestamp-LS1Wq50()J
.end method

.method public abstract getImageStreams()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestMetadata()Landroidx/camera/camera2/pipe/RequestMetadata;
.end method

.method public imageStatus-BWjvHWQ(I)I
    .locals 0

    new-instance p0, Loo5;

    const-string p1, "An operation is not implemented: Not yet implemented"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract imageStatus-Oo2lJfM(I)I
.end method

.method public abstract tryAcquire(Ljava/util/Set;)Landroidx/camera/camera2/pipe/Frame;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;)",
            "Landroidx/camera/camera2/pipe/Frame;"
        }
    .end annotation
.end method
