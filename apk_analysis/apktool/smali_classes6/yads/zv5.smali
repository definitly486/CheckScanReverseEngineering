.class public abstract Lyads/zv5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lyads/aw5;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-static {p1, p0}, Lyads/zv5;->a(Ljava/lang/String;Ljava/lang/String;)Lyads/aw5;

    move-result-object p0

    new-instance p1, Lyads/aw5;

    iget v0, p0, Lyads/aw5;->a:I

    iget v1, p0, Lyads/aw5;->c:I

    iget p0, p0, Lyads/aw5;->b:I

    invoke-direct {p1, v0, v1, p0}, Lyads/aw5;-><init>(III)V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sub-int v3, v0, v1

    if-lt v3, v2, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v2

    sub-int p0, v0, v1

    new-instance p1, Lyads/aw5;

    invoke-direct {p1, v2, v0, p0}, Lyads/aw5;-><init>(III)V

    return-object p1
.end method
