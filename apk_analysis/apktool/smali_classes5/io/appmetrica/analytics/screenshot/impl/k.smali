.class public final Lio/appmetrica/analytics/screenshot/impl/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Lio/appmetrica/analytics/screenshot/impl/i;

.field public final c:Lio/appmetrica/analytics/screenshot/impl/l;

.field public final d:Lio/appmetrica/analytics/screenshot/impl/j;


# direct methods
.method public constructor <init>(ZLio/appmetrica/analytics/screenshot/impl/i;Lio/appmetrica/analytics/screenshot/impl/l;Lio/appmetrica/analytics/screenshot/impl/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/appmetrica/analytics/screenshot/impl/k;->a:Z

    iput-object p2, p0, Lio/appmetrica/analytics/screenshot/impl/k;->b:Lio/appmetrica/analytics/screenshot/impl/i;

    iput-object p3, p0, Lio/appmetrica/analytics/screenshot/impl/k;->c:Lio/appmetrica/analytics/screenshot/impl/l;

    iput-object p4, p0, Lio/appmetrica/analytics/screenshot/impl/k;->d:Lio/appmetrica/analytics/screenshot/impl/j;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/appmetrica/analytics/screenshot/impl/k;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/appmetrica/analytics/screenshot/impl/k;

    iget-boolean v1, p0, Lio/appmetrica/analytics/screenshot/impl/k;->a:Z

    iget-boolean v3, p1, Lio/appmetrica/analytics/screenshot/impl/k;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/k;->b:Lio/appmetrica/analytics/screenshot/impl/i;

    iget-object v3, p1, Lio/appmetrica/analytics/screenshot/impl/k;->b:Lio/appmetrica/analytics/screenshot/impl/i;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/k;->c:Lio/appmetrica/analytics/screenshot/impl/l;

    iget-object v3, p1, Lio/appmetrica/analytics/screenshot/impl/k;->c:Lio/appmetrica/analytics/screenshot/impl/l;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/k;->d:Lio/appmetrica/analytics/screenshot/impl/j;

    iget-object p1, p1, Lio/appmetrica/analytics/screenshot/impl/k;->d:Lio/appmetrica/analytics/screenshot/impl/j;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lio/appmetrica/analytics/screenshot/impl/k;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/k;->b:Lio/appmetrica/analytics/screenshot/impl/i;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-boolean v1, v1, Lio/appmetrica/analytics/screenshot/impl/i;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/k;->c:Lio/appmetrica/analytics/screenshot/impl/l;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lio/appmetrica/analytics/screenshot/impl/l;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/k;->d:Lio/appmetrica/analytics/screenshot/impl/j;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lio/appmetrica/analytics/screenshot/impl/j;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientSideScreenshotConfig(enabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lio/appmetrica/analytics/screenshot/impl/k;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", apiCaptorConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/k;->b:Lio/appmetrica/analytics/screenshot/impl/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceCaptorConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/k;->c:Lio/appmetrica/analytics/screenshot/impl/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentObserverCaptorConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/k;->d:Lio/appmetrica/analytics/screenshot/impl/j;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
