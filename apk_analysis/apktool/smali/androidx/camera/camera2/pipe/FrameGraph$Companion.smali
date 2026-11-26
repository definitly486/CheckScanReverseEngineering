.class public final Landroidx/camera/camera2/pipe/FrameGraph$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/FrameGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/camera/camera2/pipe/FrameGraph$Companion;

.field private static final DEFAULT_FRAME_BUFFER_CAPACITY:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/FrameGraph$Companion;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/FrameGraph$Companion;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/FrameGraph$Companion;->$$INSTANCE:Landroidx/camera/camera2/pipe/FrameGraph$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic captureWith---NP5ps$default(Landroidx/camera/camera2/pipe/FrameGraph$Companion;Landroidx/camera/camera2/pipe/FrameGraph;ILjava/util/Map;IILjava/lang/Object;)Landroidx/camera/camera2/pipe/FrameBuffer;
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    sget-object p3, Lmx2;->b:Lmx2;

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p4, 0x1

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/FrameGraph$Companion;->captureWith---NP5ps(Landroidx/camera/camera2/pipe/FrameGraph;ILjava/util/Map;I)Landroidx/camera/camera2/pipe/FrameBuffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final captureWith---NP5ps(Landroidx/camera/camera2/pipe/FrameGraph;ILjava/util/Map;I)Landroidx/camera/camera2/pipe/FrameBuffer;
    .locals 0
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

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object p0

    invoke-static {p0}, Ll1;->f(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1, p0, p3, p4}, Landroidx/camera/camera2/pipe/FrameGraph;->captureWith(Ljava/util/Set;Ljava/util/Map;I)Landroidx/camera/camera2/pipe/FrameBuffer;

    move-result-object p0

    return-object p0
.end method
