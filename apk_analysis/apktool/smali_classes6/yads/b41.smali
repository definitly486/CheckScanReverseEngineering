.class public final Lyads/b41;
.super Lyads/d41;
.source "SourceFile"


# instance fields
.field public final a:Lyads/x31;

.field public final b:Lyads/x31;

.field public final c:Ljava/util/List;

.field public final d:Lyads/a41;


# direct methods
.method public constructor <init>(Lyads/x31;Lyads/x31;Ljava/util/List;Lyads/a41;)V
    .locals 0

    invoke-direct {p0}, Lyads/d41;-><init>()V

    iput-object p1, p0, Lyads/b41;->a:Lyads/x31;

    iput-object p2, p0, Lyads/b41;->b:Lyads/x31;

    iput-object p3, p0, Lyads/b41;->c:Ljava/util/List;

    iput-object p4, p0, Lyads/b41;->d:Lyads/a41;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/b41;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/b41;

    iget-object v1, p0, Lyads/b41;->a:Lyads/x31;

    iget-object v3, p1, Lyads/b41;->a:Lyads/x31;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyads/b41;->b:Lyads/x31;

    iget-object v3, p1, Lyads/b41;->b:Lyads/x31;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyads/b41;->c:Ljava/util/List;

    iget-object v3, p1, Lyads/b41;->c:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lyads/b41;->d:Lyads/a41;

    iget-object p1, p1, Lyads/b41;->d:Lyads/a41;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lyads/b41;->a:Lyads/x31;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyads/b41;->b:Lyads/x31;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/b41;->c:Ljava/util/List;

    invoke-static {v0, v2, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object p0, p0, Lyads/b41;->d:Lyads/a41;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lyads/b41;->a:Lyads/x31;

    iget-object v1, p0, Lyads/b41;->b:Lyads/x31;

    iget-object v2, p0, Lyads/b41;->c:Ljava/util/List;

    iget-object p0, p0, Lyads/b41;->d:Lyads/a41;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RadialGradient(centerX="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", centerY="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", colors="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", radius="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
