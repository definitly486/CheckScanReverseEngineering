.class final Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/input/pointer/MotionEventAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IndirectPointerEventData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData$Companion;


# instance fields
.field private final packedValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;->Companion:Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData$Companion;

    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;->packedValue:J

    return-void
.end method

.method public static final synthetic box-impl(J)Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;
    .locals 1

    new-instance v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;-><init>(J)V

    return-object v0
.end method

.method public static constructor-impl(J)J
    .locals 0

    .line 52
    return-wide p0
.end method

.method public static constructor-impl(JJZ)J
    .locals 4

    if-eqz p4, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-wide/32 v2, 0x7fffffff

    and-long/2addr p0, v2

    const/4 p4, 0x1

    shl-long/2addr p0, p4

    or-long/2addr p0, v0

    sget-object p4, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;->Companion:Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData$Companion;

    const/16 v0, 0x20

    shr-long v1, p2, v0

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    float-to-int v1, v1

    int-to-short v1, v1

    const-wide v2, 0xffffffffL

    and-long/2addr p2, v2

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    float-to-int p2, p2

    int-to-short p2, p2

    invoke-static {p4, v1, p2}, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData$Companion;->access$packShorts(Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData$Companion;SS)I

    move-result p2

    int-to-long p2, p2

    shl-long/2addr p2, v0

    or-long/2addr p0, p2

    invoke-static {p0, p1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;

    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;->unbox-impl()J

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

.method public static final getDown-impl(J)Z
    .locals 2

    const-wide/16 v0, 0x1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final getPosition-F1C5BW0(J)J
    .locals 4

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    sget-object p1, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;->Companion:Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData$Companion;

    invoke-static {p1, p0}, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData$Companion;->access$unpackShort1(Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData$Companion;I)S

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, p0}, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData$Companion;->access$unpackShort2(Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData$Companion;I)S

    move-result p0

    int-to-float p0, p0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    shl-long v0, v1, v0

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getUptime-impl(J)J
    .locals 2

    const/4 v0, 0x1

    shr-long/2addr p0, v0

    const-wide/32 v0, 0x7fffffff

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public static hashCode-impl(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 2

    const-string v0, "IndirectPointerEventData(packedValue="

    const/16 v1, 0x29

    invoke-static {v0, p0, p1, v1}, Lrg;->g(Ljava/lang/String;JC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;->packedValue:J

    invoke-static {v0, v1, p1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;->equals-impl(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getPackedValue()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;->packedValue:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;->packedValue:J

    invoke-static {v0, v1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;->hashCode-impl(J)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;->packedValue:J

    invoke-static {v0, v1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;->packedValue:J

    return-wide v0
.end method
