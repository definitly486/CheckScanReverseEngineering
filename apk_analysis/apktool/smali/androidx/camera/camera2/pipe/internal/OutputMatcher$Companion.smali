.class public final Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/internal/OutputMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;-><init>()V

    return-void
.end method

.method public static synthetic forTimestampsWithOffset$default(Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;JJILjava/lang/Object;)Landroidx/camera/camera2/pipe/internal/OutputMatcher;
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const-wide/32 p3, 0x7f2815

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;->forTimestampsWithOffset(JJ)Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final forTimestampsWithOffset(JJ)Landroidx/camera/camera2/pipe/internal/OutputMatcher;
    .locals 0

    new-instance p0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/internal/OutputMatcher;-><init>(JJ)V

    return-object p0
.end method

.method public final getEXACT()Landroidx/camera/camera2/pipe/internal/OutputMatcher;
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->access$getEXACT$cp()Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    move-result-object p0

    return-object p0
.end method
