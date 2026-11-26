.class public final Lio/appmetrica/analytics/locationapi/internal/LocationFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:F


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 19
    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/locationapi/internal/LocationFilter;-><init>(JFILjh2;)V

    return-void
.end method

.method public constructor <init>(JF)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lio/appmetrica/analytics/locationapi/internal/LocationFilter;->a:J

    .line 18
    iput p3, p0, Lio/appmetrica/analytics/locationapi/internal/LocationFilter;->b:F

    return-void
.end method

.method public synthetic constructor <init>(JFILjh2;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const-wide/16 p1, 0x1388

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/high16 p3, 0x41200000    # 10.0f

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/appmetrica/analytics/locationapi/internal/LocationFilter;-><init>(JF)V

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
    const-class v2, Lio/appmetrica/analytics/locationapi/internal/LocationFilter;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lio/appmetrica/analytics/locationapi/internal/LocationFilter;

    iget-wide v3, p0, Lio/appmetrica/analytics/locationapi/internal/LocationFilter;->a:J

    iget-wide v5, p1, Lio/appmetrica/analytics/locationapi/internal/LocationFilter;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lio/appmetrica/analytics/locationapi/internal/LocationFilter;->b:F

    iget p1, p1, Lio/appmetrica/analytics/locationapi/internal/LocationFilter;->b:F

    cmpg-float p0, p0, p1

    if-nez p0, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method public final getUpdateDistanceInterval()F
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/locationapi/internal/LocationFilter;->b:F

    return p0
.end method

.method public final getUpdateTimeInterval()J
    .locals 2

    iget-wide v0, p0, Lio/appmetrica/analytics/locationapi/internal/LocationFilter;->a:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lio/appmetrica/analytics/locationapi/internal/LocationFilter;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lio/appmetrica/analytics/locationapi/internal/LocationFilter;->b:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationFilter(updateTimeInterval="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lio/appmetrica/analytics/locationapi/internal/LocationFilter;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", updateDistanceInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/appmetrica/analytics/locationapi/internal/LocationFilter;->b:F

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ljs2;->b(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
