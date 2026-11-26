.class public final Landroidx/camera/camera2/pipe/internal/OutputMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;

.field private static final DEFAULT_ERROR_NS:J = 0x7f2815L

.field private static final ERROR_DETECTION_FPS:J = 0x3cL

.field private static final EXACT:Landroidx/camera/camera2/pipe/internal/OutputMatcher;

.field private static final NS_PER_SECOND:J = 0x3b9aca00L


# instance fields
.field private final currentOffset:Lot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lot<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final errorDelta:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->Companion:Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;

    new-instance v0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Landroidx/camera/camera2/pipe/internal/OutputMatcher;-><init>(JJ)V

    sput-object v0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->EXACT:Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->errorDelta:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lkt;->d(Ljava/lang/Object;)Lot;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->currentOffset:Lot;

    return-void
.end method

.method public synthetic constructor <init>(JJILjh2;)V
    .locals 0

    and-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_0

    const-wide/16 p1, 0x0

    .line 16
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/internal/OutputMatcher;-><init>(JJ)V

    return-void
.end method

.method public static final synthetic access$getEXACT$cp()Landroidx/camera/camera2/pipe/internal/OutputMatcher;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->EXACT:Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    return-object v0
.end method


# virtual methods
.method public final fuzzyEqual(JJ)Z
    .locals 6

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->currentOffset:Lot;

    iget-object v0, v0, Lot;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    sub-long/2addr p1, p3

    add-long/2addr p1, v0

    const-wide/16 p3, 0x0

    cmp-long v2, p1, p3

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-wide v4, p0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->errorDelta:J

    cmp-long p3, v4, p3

    if-eqz p3, :cond_1

    cmp-long p3, p1, v4

    if-gez p3, :cond_1

    neg-long p3, v4

    cmp-long p3, p1, p3

    if-lez p3, :cond_1

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->currentOffset:Lot;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lot;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    return v3

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final fuzzyGreaterThan(JJ)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->fuzzyLessThanOrEqual(JJ)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final fuzzyGreaterThanOrEqual(JJ)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->fuzzyLessThan(JJ)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final fuzzyLessThan(JJ)Z
    .locals 0

    sub-long/2addr p3, p1

    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->currentOffset:Lot;

    iget-object p1, p1, Lot;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    sub-long/2addr p3, p1

    iget-wide p0, p0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->errorDelta:J

    add-long/2addr p3, p0

    const-wide/16 p0, 0x0

    cmp-long p0, p3, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final fuzzyLessThanOrEqual(JJ)Z
    .locals 0

    sub-long/2addr p3, p1

    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->currentOffset:Lot;

    iget-object p1, p1, Lot;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    sub-long/2addr p3, p1

    iget-wide p0, p0, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->errorDelta:J

    sub-long/2addr p3, p0

    const-wide/16 p0, 0x0

    cmp-long p0, p3, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
