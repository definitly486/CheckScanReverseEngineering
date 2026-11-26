.class public final Lty;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lty;


# instance fields
.field public final a:J

.field public final b:I

.field public final c:I

.field public final d:J

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lty;

    const-wide/32 v5, 0x240c8400

    const v7, 0x14000

    const/16 v1, 0xc8

    const/16 v2, 0x2710

    const-wide/32 v3, 0xa00000

    invoke-direct/range {v0 .. v7}, Lty;-><init>(IIJJI)V

    sput-object v0, Lty;->f:Lty;

    return-void
.end method

.method public constructor <init>(IIJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lty;->a:J

    iput p1, p0, Lty;->b:I

    iput p2, p0, Lty;->c:I

    iput-wide p5, p0, Lty;->d:J

    iput p7, p0, Lty;->e:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lty;->c:I

    return p0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lty;->d:J

    return-wide v0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lty;->b:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lty;->e:I

    return p0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lty;->a:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lty;

    if-eqz v0, :cond_1

    check-cast p1, Lty;

    iget-wide v0, p0, Lty;->a:J

    invoke-virtual {p1}, Lty;->e()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lty;->b:I

    invoke-virtual {p1}, Lty;->c()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lty;->c:I

    invoke-virtual {p1}, Lty;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lty;->d:J

    invoke-virtual {p1}, Lty;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget p0, p0, Lty;->e:I

    invoke-virtual {p1}, Lty;->d()I

    move-result p1

    if-ne p0, p1, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 7

    iget-wide v0, p0, Lty;->a:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v3, p0, Lty;->b:I

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v3, p0, Lty;->c:I

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-wide v3, p0, Lty;->d:J

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Lty;->e:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventStoreConfig{maxStorageSizeInBytes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lty;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", loadBatchSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lty;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", criticalSectionEnterTimeoutMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lty;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventCleanUpAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lty;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxBlobByteSizePerRow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lty;->e:I

    const-string v1, "}"

    invoke-static {v0, v1, p0}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
