.class public final Landroidx/compose/foundation/layout/FlexBasis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/layout/FlexBasis$Companion;
    }
.end annotation


# static fields
.field private static final Auto:J

.field public static final Companion:Landroidx/compose/foundation/layout/FlexBasis$Companion;

.field private static final TypeAuto:J = 0x0L

.field private static final TypeDp:J = 0x1L

.field private static final TypePercent:J = 0x2L

.field private static final TypeShift:I = 0x20


# instance fields
.field private final packedValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/layout/FlexBasis$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/FlexBasis$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/foundation/layout/FlexBasis;->Companion:Landroidx/compose/foundation/layout/FlexBasis$Companion;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/FlexBasis;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/layout/FlexBasis;->Auto:J

    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/foundation/layout/FlexBasis;->packedValue:J

    return-void
.end method

.method public static final synthetic access$getAuto$cp()J
    .locals 2

    sget-wide v0, Landroidx/compose/foundation/layout/FlexBasis;->Auto:J

    return-wide v0
.end method

.method public static final synthetic box-impl(J)Landroidx/compose/foundation/layout/FlexBasis;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/FlexBasis;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/layout/FlexBasis;-><init>(J)V

    return-object v0
.end method

.method public static constructor-impl(J)J
    .locals 0

    return-wide p0
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Landroidx/compose/foundation/layout/FlexBasis;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Landroidx/compose/foundation/layout/FlexBasis;

    invoke-virtual {p2}, Landroidx/compose/foundation/layout/FlexBasis;->unbox-impl()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(JJ)Z
    .locals 0

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic getPackedValue$annotations()V
    .locals 0

    return-void
.end method

.method public static final getValue-impl$foundation_layout(J)F
    .locals 0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static hashCode-impl(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public static final isAuto-impl$foundation_layout(J)Z
    .locals 2

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isDp-impl$foundation_layout(J)Z
    .locals 2

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    const-wide/16 v0, 0x1

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isPercent-impl$foundation_layout(J)Z
    .locals 2

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    const-wide/16 v0, 0x2

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/FlexBasis;->isAuto-impl$foundation_layout(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "FlexBasis.Auto"

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/FlexBasis;->isDp-impl$foundation_layout(J)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlexBasis.Dp("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/FlexBasis;->getValue-impl$foundation_layout(J)F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ".dp)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/FlexBasis;->isPercent-impl$foundation_layout(J)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlexBasis.Percent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/FlexBasis;->getValue-impl$foundation_layout(J)F

    move-result p0

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p0, p1

    invoke-static {p0}, Lw65;->b(F)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "FlexBasis.Unknown"

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/layout/FlexBasis;->packedValue:J

    invoke-static {v0, v1, p1}, Landroidx/compose/foundation/layout/FlexBasis;->equals-impl(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/layout/FlexBasis;->packedValue:J

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/FlexBasis;->hashCode-impl(J)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/layout/FlexBasis;->packedValue:J

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/FlexBasis;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/layout/FlexBasis;->packedValue:J

    return-wide v0
.end method
