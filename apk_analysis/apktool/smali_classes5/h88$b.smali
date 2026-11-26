.class public final Lh88$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lla5$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh88;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lla5$g<",
        "Lh88;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;)[B
    .locals 0

    check-cast p1, Lh88;

    iget-object p0, p1, Lh88;->a:Lh88$a;

    sget-object p1, Lh88$a;->OK:Lh88$a;

    invoke-virtual {p0}, Lh88$a;->e()[B

    move-result-object p0

    return-object p0
.end method

.method public final b([B)Ljava/lang/Object;
    .locals 5

    array-length p0, p1

    const/16 v0, 0x30

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    aget-byte p0, p1, v1

    if-ne p0, v0, :cond_0

    sget-object p0, Lh88;->e:Lh88;

    return-object p0

    :cond_0
    array-length p0, p1

    const/16 v3, 0x39

    if-eq p0, v2, :cond_3

    const/4 v4, 0x2

    if-eq p0, v4, :cond_1

    goto :goto_1

    :cond_1
    aget-byte p0, p1, v1

    if-lt p0, v0, :cond_5

    if-le p0, v3, :cond_2

    goto :goto_1

    :cond_2
    sub-int/2addr p0, v0

    mul-int/lit8 v1, p0, 0xa

    move p0, v1

    move v1, v2

    goto :goto_0

    :cond_3
    move p0, v1

    :goto_0
    aget-byte v1, p1, v1

    if-lt v1, v0, :cond_5

    if-le v1, v3, :cond_4

    goto :goto_1

    :cond_4
    sub-int/2addr v1, v0

    add-int/2addr v1, p0

    sget-object p0, Lh88;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh88;

    return-object p0

    :cond_5
    :goto_1
    sget-object p0, Lh88;->g:Lh88;

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p1, "Unknown code "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p0

    return-object p0
.end method
