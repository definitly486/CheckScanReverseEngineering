.class public final Landroidx/compose/foundation/layout/GridTrackSize$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/GridTrackSize;
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

    invoke-direct {p0}, Landroidx/compose/foundation/layout/GridTrackSize$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$pack-ALYS8Xw(Landroidx/compose/foundation/layout/GridTrackSize$Companion;IF)J
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/layout/GridTrackSize$Companion;->pack-ALYS8Xw(IF)J

    move-result-wide p0

    return-wide p0
.end method

.method private final pack-ALYS8Xw(IF)J
    .locals 4

    int-to-long p0, p1

    const-wide/16 v0, 0xf

    and-long/2addr p0, v0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 p2, 0x3c

    shl-long/2addr p0, p2

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/GridTrackSize;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private final packMinMax-ALYS8Xw(FF)J
    .locals 4

    const/4 p0, 0x0

    cmpl-float v0, p1, p0

    if-ltz v0, :cond_0

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    ushr-int/lit8 p0, p0, 0x2

    int-to-long p0, p0

    const-wide/32 v0, 0x3fffffff

    and-long/2addr p0, v0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    ushr-int/lit8 p2, p2, 0x2

    int-to-long v2, p2

    and-long/2addr v0, v2

    const/16 p2, 0x1e

    shl-long/2addr p0, p2

    const-wide/high16 v2, 0x7000000000000000L    # 3.105036184601418E231

    or-long/2addr p0, v2

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/GridTrackSize;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-string p0, "minmax values must be non-negative"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method


# virtual methods
.method public final Fixed-psSkOvk(F)J
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroidx/compose/foundation/layout/GridTrackSize$Companion;->pack-ALYS8Xw(IF)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x29

    const-string v0, "Fixed size must be non-negative and specified (was "

    invoke-static {p0, v0, p1}, Lw7;->g(Ljava/lang/Object;Ljava/lang/String;I)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final Flex-KGB9zo8(F)J
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroidx/compose/foundation/layout/GridTrackSize$Companion;->pack-ALYS8Xw(IF)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-string p0, "Flex weight must be non-negative"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final MinMax-1z8F7YY(FF)J
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/layout/GridTrackSize$Companion;->packMinMax-ALYS8Xw(FF)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-string p0, "MinMax max weight cannot be negative"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0

    :cond_1
    const-string p0, "MinMax minimum size cannot be negative"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final Percentage-9Tp3RV8(F)J
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroidx/compose/foundation/layout/GridTrackSize$Companion;->pack-ALYS8Xw(IF)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-string p0, "Percentage cannot be negative"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getAuto-eyNpfc4()J
    .locals 2

    invoke-static {}, Landroidx/compose/foundation/layout/GridTrackSize;->access$getAuto$cp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMaxContent-eyNpfc4()J
    .locals 2

    invoke-static {}, Landroidx/compose/foundation/layout/GridTrackSize;->access$getMaxContent$cp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMinContent-eyNpfc4()J
    .locals 2

    invoke-static {}, Landroidx/compose/foundation/layout/GridTrackSize;->access$getMinContent$cp()J

    move-result-wide v0

    return-wide v0
.end method
