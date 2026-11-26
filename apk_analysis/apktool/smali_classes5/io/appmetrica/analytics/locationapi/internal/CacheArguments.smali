.class public final Lio/appmetrica/analytics/locationapi/internal/CacheArguments;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    .line 20
    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/locationapi/internal/CacheArguments;-><init>(JJILjh2;)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lio/appmetrica/analytics/locationapi/internal/CacheArguments;->a:J

    .line 19
    iput-wide p3, p0, Lio/appmetrica/analytics/locationapi/internal/CacheArguments;->b:J

    return-void
.end method

.method public synthetic constructor <init>(JJILjh2;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const-wide/16 p1, 0x2710

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    const-wide/32 p3, 0x1d4c0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/locationapi/internal/CacheArguments;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lio/appmetrica/analytics/locationapi/internal/CacheArguments;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lio/appmetrica/analytics/locationapi/internal/CacheArguments;

    iget-wide v3, p0, Lio/appmetrica/analytics/locationapi/internal/CacheArguments;->a:J

    iget-wide v5, p1, Lio/appmetrica/analytics/locationapi/internal/CacheArguments;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lio/appmetrica/analytics/locationapi/internal/CacheArguments;->b:J

    iget-wide p0, p1, Lio/appmetrica/analytics/locationapi/internal/CacheArguments;->b:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getOutdatedTimeInterval()J
    .locals 2

    iget-wide v0, p0, Lio/appmetrica/analytics/locationapi/internal/CacheArguments;->b:J

    return-wide v0
.end method

.method public final getRefreshPeriod()J
    .locals 2

    iget-wide v0, p0, Lio/appmetrica/analytics/locationapi/internal/CacheArguments;->a:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lio/appmetrica/analytics/locationapi/internal/CacheArguments;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/appmetrica/analytics/locationapi/internal/CacheArguments;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CacheArguments(refreshPeriod="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lio/appmetrica/analytics/locationapi/internal/CacheArguments;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", outdatedTimeInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/locationapi/internal/CacheArguments;->b:J

    const/16 p0, 0x29

    invoke-static {v0, v1, v2, p0}, Llg;->f(Ljava/lang/StringBuilder;JC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
