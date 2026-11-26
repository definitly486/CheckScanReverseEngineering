.class public final Lio/appmetrica/analytics/impl/og;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:J

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lio/appmetrica/analytics/impl/og;->a:Ljava/lang/String;

    .line 30
    iput-wide p2, p0, Lio/appmetrica/analytics/impl/og;->b:J

    .line 31
    iput-wide p4, p0, Lio/appmetrica/analytics/impl/og;->c:J

    .line 32
    iput p6, p0, Lio/appmetrica/analytics/impl/og;->d:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lio/appmetrica/analytics/impl/pg;->a([B)Lio/appmetrica/analytics/impl/pg;

    move-result-object p1

    iget-object v0, p1, Lio/appmetrica/analytics/impl/pg;->a:Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/og;->a:Ljava/lang/String;

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/pg;->c:J

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/og;->b:J

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/pg;->b:J

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/og;->c:J

    iget p1, p1, Lio/appmetrica/analytics/impl/pg;->d:I

    invoke-static {p1}, Lio/appmetrica/analytics/impl/og;->a(I)I

    move-result p1

    iput p1, p0, Lio/appmetrica/analytics/impl/og;->d:I

    return-void
.end method

.method public static a(I)I
    .locals 3

    .line 40
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    return v2

    :cond_2
    return v0
.end method


# virtual methods
.method public final a()[B
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/pg;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/pg;-><init>()V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/og;->a:Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/pg;->a:Ljava/lang/String;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/og;->b:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/pg;->c:J

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/og;->c:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/pg;->b:J

    iget p0, p0, Lio/appmetrica/analytics/impl/og;->d:I

    invoke-static {p0}, Lio/appmetrica/analytics/impl/W7;->a(I)I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    iput v1, v0, Lio/appmetrica/analytics/impl/pg;->d:I

    invoke-static {v0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/appmetrica/analytics/impl/og;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lio/appmetrica/analytics/impl/og;

    iget-wide v2, p0, Lio/appmetrica/analytics/impl/og;->b:J

    iget-wide v4, p1, Lio/appmetrica/analytics/impl/og;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Lio/appmetrica/analytics/impl/og;->c:J

    iget-wide v4, p1, Lio/appmetrica/analytics/impl/og;->c:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lio/appmetrica/analytics/impl/og;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/appmetrica/analytics/impl/og;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget p0, p0, Lio/appmetrica/analytics/impl/og;->d:I

    iget p1, p1, Lio/appmetrica/analytics/impl/og;->d:I

    if-ne p0, p1, :cond_5

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lio/appmetrica/analytics/impl/og;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/og;->b:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/og;->c:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lio/appmetrica/analytics/impl/og;->d:I

    invoke-static {p0}, Lio/appmetrica/analytics/impl/W7;->a(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReferrerInfo{installReferrer=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/og;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', referrerClickTimestampSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/og;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", installBeginTimestampSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/og;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/appmetrica/analytics/impl/og;->d:I

    invoke-static {p0}, Lio/appmetrica/analytics/impl/ng;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
