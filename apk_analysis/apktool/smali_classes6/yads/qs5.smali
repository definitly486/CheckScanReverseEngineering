.class public abstract Lyads/qs5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyads/yo2;Lyads/uo2;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-gtz p2, :cond_2

    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p0, p0, Lyads/yo2;->d:Lyads/ij6;

    check-cast p0, Lyads/ns2;

    invoke-virtual {p0, p1}, Lyads/ns2;->a(Lyads/uo2;)V

    :cond_1
    const-string p0, ""

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 p1, 0x0

    invoke-static {p1, p2}, Lkx6;->n(II)Ly74;

    move-result-object p1

    invoke-virtual {p1}, Lw74;->b()Lx74;

    move-result-object p1

    :goto_1
    iget-boolean p2, p1, Lx74;->d:Z

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lx74;->nextInt()I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/2addr p2, v0

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
