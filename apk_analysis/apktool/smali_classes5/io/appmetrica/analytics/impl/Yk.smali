.class public final Lio/appmetrica/analytics/impl/Yk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:I

.field public final c:J

.field public final d:Z


# direct methods
.method public constructor <init>(JIJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/appmetrica/analytics/impl/Yk;->a:J

    iput p3, p0, Lio/appmetrica/analytics/impl/Yk;->b:I

    iput-wide p4, p0, Lio/appmetrica/analytics/impl/Yk;->c:J

    iput-boolean p6, p0, Lio/appmetrica/analytics/impl/Yk;->d:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/appmetrica/analytics/impl/Yk;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/appmetrica/analytics/impl/Yk;

    iget-wide v3, p0, Lio/appmetrica/analytics/impl/Yk;->a:J

    iget-wide v5, p1, Lio/appmetrica/analytics/impl/Yk;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lio/appmetrica/analytics/impl/Yk;->b:I

    iget v3, p1, Lio/appmetrica/analytics/impl/Yk;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lio/appmetrica/analytics/impl/Yk;->c:J

    iget-wide v5, p1, Lio/appmetrica/analytics/impl/Yk;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/Yk;->d:Z

    iget-boolean p1, p1, Lio/appmetrica/analytics/impl/Yk;->d:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lio/appmetrica/analytics/impl/Yk;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lio/appmetrica/analytics/impl/Yk;->b:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-wide v2, p0, Lio/appmetrica/analytics/impl/Yk;->c:J

    invoke-static {v0, v1, v2, v3}, Lvg;->b(IIJ)I

    move-result v0

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/Yk;->d:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionEventsDeleteParams(sessionId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/Yk;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sessionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/appmetrica/analytics/impl/Yk;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxNumberInSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/Yk;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", shouldFormCleanupEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/Yk;->d:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lsg;->d(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
