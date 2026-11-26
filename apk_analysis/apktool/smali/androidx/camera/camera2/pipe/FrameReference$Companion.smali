.class public final Landroidx/camera/camera2/pipe/FrameReference$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/FrameReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/camera/camera2/pipe/FrameReference$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/FrameReference$Companion;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/FrameReference$Companion;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/FrameReference$Companion;->$$INSTANCE:Landroidx/camera/camera2/pipe/FrameReference$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic acquire$default(Landroidx/camera/camera2/pipe/FrameReference$Companion;Landroidx/camera/camera2/pipe/FrameReference;Ljava/util/Set;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/Frame;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/FrameReference$Companion;->acquire(Landroidx/camera/camera2/pipe/FrameReference;Ljava/util/Set;)Landroidx/camera/camera2/pipe/Frame;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final acquire(Landroidx/camera/camera2/pipe/FrameReference;Ljava/util/Set;)Landroidx/camera/camera2/pipe/Frame;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/FrameReference;",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;)",
            "Landroidx/camera/camera2/pipe/Frame;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p2}, Landroidx/camera/camera2/pipe/FrameReference;->tryAcquire(Ljava/util/Set;)Landroidx/camera/camera2/pipe/Frame;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Failed to acquire a strong reference to "

    const/16 p2, 0x21

    invoke-static {p1, p0, p2}, Lcg;->f(Ljava/lang/Object;Ljava/lang/String;I)V

    const/4 p0, 0x0

    return-object p0
.end method
