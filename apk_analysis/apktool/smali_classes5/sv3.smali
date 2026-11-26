.class public final Lsv3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Lcom/google/common/collect/n;


# direct methods
.method public constructor <init>(IJLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/Set<",
            "Lh88$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsv3;->a:I

    iput-wide p2, p0, Lsv3;->b:J

    invoke-static {p4}, Lcom/google/common/collect/n;->n(Ljava/util/Collection;)Lcom/google/common/collect/n;

    move-result-object p1

    iput-object p1, p0, Lsv3;->c:Lcom/google/common/collect/n;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lsv3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lsv3;

    iget v0, p0, Lsv3;->a:I

    iget v1, p1, Lsv3;->a:I

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lsv3;->b:J

    iget-wide v2, p1, Lsv3;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object p0, p0, Lsv3;->c:Lcom/google/common/collect/n;

    iget-object p1, p1, Lsv3;->c:Lcom/google/common/collect/n;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lsv3;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Lsv3;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object p0, p0, Lsv3;->c:Lcom/google/common/collect/n;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    const-string v1, "maxAttempts"

    iget v2, p0, Lsv3;->a:I

    invoke-virtual {v0, v2, v1}, Lod5$a;->a(ILjava/lang/String;)V

    const-string v1, "hedgingDelayNanos"

    iget-wide v2, p0, Lsv3;->b:J

    invoke-virtual {v0, v2, v3, v1}, Lod5$a;->b(JLjava/lang/String;)V

    const-string v1, "nonFatalStatusCodes"

    iget-object p0, p0, Lsv3;->c:Lcom/google/common/collect/n;

    invoke-virtual {v0, p0, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
