.class public final Landroidx/compose/foundation/gestures/ContentInViewNodeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final MinScrollThreshold:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ContentInViewModifier"

.field private static final UnspecifiedIntSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/gestures/ContentInViewNodeKt;->UnspecifiedIntSize:J

    return-void
.end method

.method public static final synthetic access$getUnspecifiedIntSize$p()J
    .locals 2

    sget-wide v0, Landroidx/compose/foundation/gestures/ContentInViewNodeKt;->UnspecifiedIntSize:J

    return-wide v0
.end method

.method private static final takeOrElse-viCIZxY(JLll3;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lll3<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;)J"
        }
    .end annotation

    invoke-static {}, Landroidx/compose/foundation/gestures/ContentInViewNodeKt;->access$getUnspecifiedIntSize$p()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/IntSize;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide p0

    :cond_0
    return-wide p0
.end method
