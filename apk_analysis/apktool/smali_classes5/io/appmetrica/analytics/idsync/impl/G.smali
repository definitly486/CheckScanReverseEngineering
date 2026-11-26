.class public final Lio/appmetrica/analytics/idsync/impl/G;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lio/appmetrica/analytics/idsync/impl/D;

.field public final d:Ljava/util/Map;

.field public final e:J

.field public final f:J

.field public final g:Ljava/util/List;

.field public final h:Z

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/idsync/impl/D;Ljava/util/LinkedHashMap;JJLjava/util/List;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/G;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/appmetrica/analytics/idsync/impl/G;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/idsync/impl/G;->c:Lio/appmetrica/analytics/idsync/impl/D;

    iput-object p4, p0, Lio/appmetrica/analytics/idsync/impl/G;->d:Ljava/util/Map;

    iput-wide p5, p0, Lio/appmetrica/analytics/idsync/impl/G;->e:J

    iput-wide p7, p0, Lio/appmetrica/analytics/idsync/impl/G;->f:J

    iput-object p9, p0, Lio/appmetrica/analytics/idsync/impl/G;->g:Ljava/util/List;

    iput-boolean p10, p0, Lio/appmetrica/analytics/idsync/impl/G;->h:Z

    iput-object p11, p0, Lio/appmetrica/analytics/idsync/impl/G;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/appmetrica/analytics/idsync/impl/G;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/appmetrica/analytics/idsync/impl/G;

    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/G;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/appmetrica/analytics/idsync/impl/G;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/G;->b:Ljava/lang/String;

    iget-object v3, p1, Lio/appmetrica/analytics/idsync/impl/G;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/G;->c:Lio/appmetrica/analytics/idsync/impl/D;

    iget-object v3, p1, Lio/appmetrica/analytics/idsync/impl/G;->c:Lio/appmetrica/analytics/idsync/impl/D;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/G;->d:Ljava/util/Map;

    iget-object v3, p1, Lio/appmetrica/analytics/idsync/impl/G;->d:Ljava/util/Map;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lio/appmetrica/analytics/idsync/impl/G;->e:J

    iget-wide v5, p1, Lio/appmetrica/analytics/idsync/impl/G;->e:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lio/appmetrica/analytics/idsync/impl/G;->f:J

    iget-wide v5, p1, Lio/appmetrica/analytics/idsync/impl/G;->f:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/G;->g:Ljava/util/List;

    iget-object v3, p1, Lio/appmetrica/analytics/idsync/impl/G;->g:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lio/appmetrica/analytics/idsync/impl/G;->h:Z

    iget-boolean v3, p1, Lio/appmetrica/analytics/idsync/impl/G;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/G;->i:Ljava/lang/String;

    iget-object p1, p1, Lio/appmetrica/analytics/idsync/impl/G;->i:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/G;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lio/appmetrica/analytics/idsync/impl/G;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lio/appmetrica/analytics/idsync/impl/G;->c:Lio/appmetrica/analytics/idsync/impl/D;

    iget-object v2, v2, Lio/appmetrica/analytics/idsync/impl/D;->a:Lio/appmetrica/analytics/idsync/impl/z;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/G;->d:Ljava/util/Map;

    invoke-static {v0, v2, v1}, Lk;->c(Ljava/util/Map;II)I

    move-result v0

    iget-wide v2, p0, Lio/appmetrica/analytics/idsync/impl/G;->e:J

    invoke-static {v0, v1, v2, v3}, Lvg;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lio/appmetrica/analytics/idsync/impl/G;->f:J

    invoke-static {v0, v1, v2, v3}, Lvg;->b(IIJ)I

    move-result v0

    iget-object v2, p0, Lio/appmetrica/analytics/idsync/impl/G;->g:Ljava/util/List;

    invoke-static {v2, v0, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-boolean v2, p0, Lio/appmetrica/analytics/idsync/impl/G;->h:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/G;->i:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestConfig(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/G;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/G;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", preconditions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/G;->c:Lio/appmetrica/analytics/idsync/impl/D;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/G;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resendIntervalForValidResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/idsync/impl/G;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", resendIntervalForInvalidResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/idsync/impl/G;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", validResponseCodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/G;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reportEventEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/appmetrica/analytics/idsync/impl/G;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reportUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/G;->i:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lxp;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
