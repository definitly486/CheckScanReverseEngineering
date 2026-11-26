.class public final Lyads/y35;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Ljava/lang/String;

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lyads/y35;->c:Ljava/lang/String;

    iput-wide p2, p0, Lyads/y35;->a:J

    iput-wide p4, p0, Lyads/y35;->b:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 86
    iget-object p0, p0, Lyads/y35;->c:Ljava/lang/String;

    .line 87
    invoke-static {p1, p0}, Lyads/o46;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/y35;Ljava/lang/String;)Lyads/y35;
    .locals 13

    iget-object v0, p0, Lyads/y35;->c:Ljava/lang/String;

    invoke-static {p2, v0}, Lyads/o46;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p1, Lyads/y35;->c:Ljava/lang/String;

    invoke-static {p2, v1}, Lyads/o46;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    iget-wide v3, p0, Lyads/y35;->b:J

    const-wide/16 v5, -0x1

    cmp-long p2, v3, v5

    move-wide v7, v3

    if-eqz p2, :cond_2

    iget-wide v3, p0, Lyads/y35;->a:J

    add-long v9, v3, v7

    iget-wide v11, p1, Lyads/y35;->a:J

    cmp-long v1, v9, v11

    if-nez v1, :cond_2

    new-instance v1, Lyads/y35;

    iget-wide p0, p1, Lyads/y35;->b:J

    cmp-long p2, p0, v5

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    add-long v5, v7, p0

    :goto_0
    invoke-direct/range {v1 .. v6}, Lyads/y35;-><init>(Ljava/lang/String;JJ)V

    return-object v1

    :cond_2
    iget-wide v3, p1, Lyads/y35;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    iget-wide v9, p1, Lyads/y35;->a:J

    add-long v11, v9, v3

    iget-wide p0, p0, Lyads/y35;->a:J

    cmp-long p0, v11, p0

    if-nez p0, :cond_4

    new-instance v1, Lyads/y35;

    if-nez p2, :cond_3

    :goto_1
    move-wide v3, v9

    goto :goto_2

    :cond_3
    add-long v5, v3, v7

    goto :goto_1

    :goto_2
    invoke-direct/range {v1 .. v6}, Lyads/y35;-><init>(Ljava/lang/String;JJ)V

    return-object v1

    :cond_4
    :goto_3
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lyads/y35;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lyads/y35;

    iget-wide v2, p0, Lyads/y35;->a:J

    iget-wide v4, p1, Lyads/y35;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lyads/y35;->b:J

    iget-wide v4, p1, Lyads/y35;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object p0, p0, Lyads/y35;->c:Ljava/lang/String;

    iget-object p1, p1, Lyads/y35;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lyads/y35;->d:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lyads/y35;->a:J

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lyads/y35;->b:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lyads/y35;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lyads/y35;->d:I

    return v1

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RangedUri(referenceUri="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lyads/y35;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lyads/y35;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lyads/y35;->b:J

    const-string p0, ")"

    invoke-static {v1, v2, p0, v0}, Lk2;->b(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
