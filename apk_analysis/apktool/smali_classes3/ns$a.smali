.class public final Lns$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# virtual methods
.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lb24;

    if-eqz p0, :cond_3

    instance-of p0, p2, Lb24;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lb24;

    iget-object p0, p1, Lb24;->a:Landroid/content/Context;

    check-cast p2, Lb24;

    iget-object v0, p2, Lb24;->a:Landroid/content/Context;

    invoke-static {p0, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lb24;->b:Ljava/lang/Object;

    iget-object v0, p2, Lb24;->b:Ljava/lang/Object;

    invoke-static {p0, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lb24;->d:Ljava/util/Map;

    iget-object v0, p2, Lb24;->d:Ljava/util/Map;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lb24;->o:Lw18;

    iget-object v0, p2, Lb24;->o:Lw18;

    invoke-static {p0, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lb24;->p:Lmd7;

    iget-object v0, p2, Lb24;->p:Lmd7;

    if-ne p0, v0, :cond_2

    iget-object p0, p1, Lb24;->q:Lre6;

    iget-object p1, p2, Lb24;->q:Lre6;

    if-ne p0, p1, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    invoke-static {p1, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .locals 2

    instance-of p0, p1, Lb24;

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lb24;

    iget-object p0, p1, Lb24;->a:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    iget-object v0, p1, Lb24;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, p0

    const/16 p0, 0x3c1

    mul-int/2addr v0, p0

    iget-object v1, p1, Lb24;->d:Ljava/util/Map;

    invoke-static {v1, v0, p0}, Lk;->c(Ljava/util/Map;II)I

    move-result p0

    iget-object v0, p1, Lb24;->o:Lw18;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p1, Lb24;->p:Lmd7;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    iget-object p1, p1, Lb24;->q:Lre6;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "AsyncImageModelEqualityDelegate.Default"

    return-object p0
.end method
