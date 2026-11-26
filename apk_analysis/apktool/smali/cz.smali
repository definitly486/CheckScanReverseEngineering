.class public final Lcz;
.super Lu46;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Ls29;

.field public final c:Lz03;


# direct methods
.method public constructor <init>(JLs29;Lz03;)V
    .locals 0

    invoke-direct {p0}, Lu46;-><init>()V

    iput-wide p1, p0, Lcz;->a:J

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    iput-object p3, p0, Lcz;->b:Ls29;

    if-eqz p4, :cond_0

    iput-object p4, p0, Lcz;->c:Lz03;

    return-void

    :cond_0
    const-string p0, "Null event"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p0, "Null transportContext"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lz03;
    .locals 0

    iget-object p0, p0, Lcz;->c:Lz03;

    return-object p0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcz;->a:J

    return-wide v0
.end method

.method public final c()Ls29;
    .locals 0

    iget-object p0, p0, Lcz;->b:Ls29;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lu46;

    if-eqz v0, :cond_1

    check-cast p1, Lu46;

    iget-wide v0, p0, Lcz;->a:J

    invoke-virtual {p1}, Lu46;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcz;->b:Ls29;

    invoke-virtual {p1}, Lu46;->c()Ls29;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcz;->c:Lz03;

    invoke-virtual {p1}, Lu46;->a()Lz03;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 5

    const/16 v0, 0x20

    iget-wide v1, p0, Lcz;->a:J

    ushr-long v3, v1, v0

    xor-long v0, v3, v1

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcz;->b:Ls29;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcz;->c:Lz03;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PersistedEvent{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcz;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", transportContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcz;->b:Ls29;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcz;->c:Lz03;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
