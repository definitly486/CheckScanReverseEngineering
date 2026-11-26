.class public final Landroidx/camera/camera2/pipe/core/TimestampNs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final value:J


# direct methods
.method private synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/camera/camera2/pipe/core/TimestampNs;->value:J

    return-void
.end method

.method public static final synthetic box-impl(J)Landroidx/camera/camera2/pipe/core/TimestampNs;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/core/TimestampNs;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/pipe/core/TimestampNs;-><init>(J)V

    return-object v0
.end method

.method public static constructor-impl(J)J
    .locals 0

    return-wide p0
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Landroidx/camera/camera2/pipe/core/TimestampNs;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Landroidx/camera/camera2/pipe/core/TimestampNs;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/TimestampNs;->unbox-impl()J

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

.method public static hashCode-impl(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public static final minus-pEw-518(JJ)J
    .locals 0

    sub-long/2addr p0, p2

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final plus-rKz7-cU(JJ)J
    .locals 0

    add-long/2addr p0, p2

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/core/TimestampNs;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 2

    const-string v0, "TimestampNs(value="

    const/16 v1, 0x29

    invoke-static {v0, p0, p1, v1}, Lrg;->g(Ljava/lang/String;JC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/core/TimestampNs;->value:J

    invoke-static {v0, v1, p1}, Landroidx/camera/camera2/pipe/core/TimestampNs;->equals-impl(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getValue()J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/core/TimestampNs;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/core/TimestampNs;->value:J

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/core/TimestampNs;->hashCode-impl(J)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/core/TimestampNs;->value:J

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/core/TimestampNs;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/core/TimestampNs;->value:J

    return-wide v0
.end method
