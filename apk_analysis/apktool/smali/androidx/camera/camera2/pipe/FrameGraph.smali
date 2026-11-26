.class public interface abstract Landroidx/camera/camera2/pipe/FrameGraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CameraGraphBase;
.implements Landroidx/camera/camera2/pipe/CameraControls3A;
.implements Landroidx/camera/camera2/pipe/UnsafeWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/FrameGraph$Companion;,
        Landroidx/camera/camera2/pipe/FrameGraph$ConcurrentConfig;,
        Landroidx/camera/camera2/pipe/FrameGraph$Config;,
        Landroidx/camera/camera2/pipe/FrameGraph$Session;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/camera2/pipe/CameraGraphBase<",
        "Landroidx/camera/camera2/pipe/FrameGraph$Session;",
        ">;",
        "Landroidx/camera/camera2/pipe/CameraControls3A;",
        "Landroidx/camera/camera2/pipe/UnsafeWrapper;"
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/FrameGraph$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/FrameGraph$Companion;->$$INSTANCE:Landroidx/camera/camera2/pipe/FrameGraph$Companion;

    sput-object v0, Landroidx/camera/camera2/pipe/FrameGraph;->Companion:Landroidx/camera/camera2/pipe/FrameGraph$Companion;

    return-void
.end method

.method public static synthetic captureWith$default(Landroidx/camera/camera2/pipe/FrameGraph;Ljava/util/Set;Ljava/util/Map;IILjava/lang/Object;)Landroidx/camera/camera2/pipe/FrameBuffer;
    .locals 0

    if-nez p5, :cond_3

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, Lox2;->b:Lox2;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    sget-object p2, Lmx2;->b:Lmx2;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x1

    :cond_2
    invoke-interface {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/FrameGraph;->captureWith(Ljava/util/Set;Ljava/util/Map;I)Landroidx/camera/camera2/pipe/FrameBuffer;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "Super calls with default arguments not supported in this target, function: captureWith"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static captureWith---NP5ps(Landroidx/camera/camera2/pipe/FrameGraph;ILjava/util/Map;I)Landroidx/camera/camera2/pipe/FrameBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/FrameGraph;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;I)",
            "Landroidx/camera/camera2/pipe/FrameBuffer;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/pipe/FrameGraph;->Companion:Landroidx/camera/camera2/pipe/FrameGraph$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/FrameGraph$Companion;->captureWith---NP5ps(Landroidx/camera/camera2/pipe/FrameGraph;ILjava/util/Map;I)Landroidx/camera/camera2/pipe/FrameBuffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract captureWith(Ljava/util/Set;Ljava/util/Map;I)Landroidx/camera/camera2/pipe/FrameBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;I)",
            "Landroidx/camera/camera2/pipe/FrameBuffer;"
        }
    .end annotation
.end method
