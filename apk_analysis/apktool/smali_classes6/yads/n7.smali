.class public final Lyads/n7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:I

.field public final f:Z

.field public final g:Ljava/util/Set;

.field public final h:Ljava/util/Map;


# direct methods
.method public constructor <init>(ZZLjava/lang/String;JIZLjava/util/Set;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lyads/n7;->a:Z

    iput-boolean p2, p0, Lyads/n7;->b:Z

    iput-object p3, p0, Lyads/n7;->c:Ljava/lang/String;

    iput-wide p4, p0, Lyads/n7;->d:J

    iput p6, p0, Lyads/n7;->e:I

    iput-boolean p7, p0, Lyads/n7;->f:Z

    iput-object p8, p0, Lyads/n7;->g:Ljava/util/Set;

    iput-object p9, p0, Lyads/n7;->h:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lyads/n7;->a:Z

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/n7;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/n7;

    iget-boolean v1, p0, Lyads/n7;->a:Z

    iget-boolean v3, p1, Lyads/n7;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lyads/n7;->b:Z

    iget-boolean v3, p1, Lyads/n7;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyads/n7;->c:Ljava/lang/String;

    iget-object v3, p1, Lyads/n7;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lyads/n7;->d:J

    iget-wide v5, p1, Lyads/n7;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lyads/n7;->e:I

    iget v3, p1, Lyads/n7;->e:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lyads/n7;->f:Z

    iget-boolean v3, p1, Lyads/n7;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lyads/n7;->g:Ljava/util/Set;

    iget-object v3, p1, Lyads/n7;->g:Ljava/util/Set;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lyads/n7;->h:Ljava/util/Map;

    iget-object p1, p1, Lyads/n7;->h:Ljava/util/Map;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lyads/n7;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lyads/n7;->b:Z

    invoke-static {v0, v1, v2}, Lyads/m7;->a(IIZ)I

    move-result v0

    iget-object v2, p0, Lyads/n7;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lyads/l4;->a(IILjava/lang/String;)I

    move-result v0

    iget-wide v2, p0, Lyads/n7;->d:J

    invoke-static {v0, v1, v2, v3}, Lvg;->b(IIJ)I

    move-result v0

    iget v2, p0, Lyads/n7;->e:I

    invoke-static {v2, v0, v1}, Lyads/i96;->a(III)I

    move-result v0

    iget-boolean v2, p0, Lyads/n7;->f:Z

    invoke-static {v0, v1, v2}, Lyads/m7;->a(IIZ)I

    move-result v0

    iget-object v2, p0, Lyads/n7;->g:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lyads/n7;->h:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    iget-boolean v0, p0, Lyads/n7;->a:Z

    iget-boolean v1, p0, Lyads/n7;->b:Z

    iget-object v2, p0, Lyads/n7;->c:Ljava/lang/String;

    iget-wide v3, p0, Lyads/n7;->d:J

    iget v5, p0, Lyads/n7;->e:I

    iget-boolean v6, p0, Lyads/n7;->f:Z

    iget-object v7, p0, Lyads/n7;->g:Ljava/util/Set;

    iget-object p0, p0, Lyads/n7;->h:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "AdQualityVerificationConfiguration(enabled="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", debug="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", apiKey="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", validationTimeoutInSec="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", usagePercent="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", blockAdOnInternalError="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", enabledAdUnits="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adNetworksCustomParameters="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
