.class public final Lyads/nt2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/n70;

.field public final b:J

.field public final c:Lyads/q1;

.field public final d:Lyads/mt2;

.field public final e:Ljava/util/Map;

.field public final f:Lyads/c;


# direct methods
.method public constructor <init>(Lyads/n70;JLyads/q1;Lyads/mt2;Ljava/util/Map;Lyads/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/nt2;->a:Lyads/n70;

    iput-wide p2, p0, Lyads/nt2;->b:J

    iput-object p4, p0, Lyads/nt2;->c:Lyads/q1;

    iput-object p5, p0, Lyads/nt2;->d:Lyads/mt2;

    iput-object p6, p0, Lyads/nt2;->e:Ljava/util/Map;

    iput-object p7, p0, Lyads/nt2;->f:Lyads/c;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/nt2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/nt2;

    iget-object v1, p0, Lyads/nt2;->a:Lyads/n70;

    iget-object v3, p1, Lyads/nt2;->a:Lyads/n70;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lyads/nt2;->b:J

    iget-wide v5, p1, Lyads/nt2;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyads/nt2;->c:Lyads/q1;

    iget-object v3, p1, Lyads/nt2;->c:Lyads/q1;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lyads/nt2;->d:Lyads/mt2;

    iget-object v3, p1, Lyads/nt2;->d:Lyads/mt2;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lyads/nt2;->e:Ljava/util/Map;

    iget-object v3, p1, Lyads/nt2;->e:Ljava/util/Map;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lyads/nt2;->f:Lyads/c;

    iget-object p1, p1, Lyads/nt2;->f:Lyads/c;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lyads/nt2;->a:Lyads/n70;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lyads/nt2;->b:J

    invoke-static {v0, v1, v2, v3}, Lvg;->b(IIJ)I

    move-result v0

    iget-object v2, p0, Lyads/nt2;->c:Lyads/q1;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/nt2;->d:Lyads/mt2;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lyads/mt2;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/nt2;->e:Ljava/util/Map;

    invoke-static {v0, v2, v1}, Lk;->c(Ljava/util/Map;II)I

    move-result v0

    iget-object p0, p0, Lyads/nt2;->f:Lyads/c;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lyads/c;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lyads/nt2;->a:Lyads/n70;

    iget-wide v1, p0, Lyads/nt2;->b:J

    iget-object v3, p0, Lyads/nt2;->c:Lyads/q1;

    iget-object v4, p0, Lyads/nt2;->d:Lyads/mt2;

    iget-object v5, p0, Lyads/nt2;->e:Ljava/util/Map;

    iget-object p0, p0, Lyads/nt2;->f:Lyads/c;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "FalseClickData(adType="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", startTime="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", activityInteractionType="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", falseClick="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", reportData="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", abExperiments="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
