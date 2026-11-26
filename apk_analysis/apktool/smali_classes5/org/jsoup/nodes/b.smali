.class public final Lorg/jsoup/nodes/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/jsoup/nodes/a;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:[Ljava/lang/String;

.field public d:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/nodes/b;->b:I

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/Object;

    return-void
.end method

.method public static d(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static q(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x2f

    if-ne p0, v0, :cond_0

    return v2

    :cond_0
    return v1
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 2

    iget v0, p0, Lorg/jsoup/nodes/b;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/b;->c(I)V

    iget-object v0, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/nodes/b;->b:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/nodes/b;->b:I

    return-void
.end method

.method public final c(I)V
    .locals 3

    iget v0, p0, Lorg/jsoup/nodes/b;->b:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lyb9;->b(Z)V

    iget-object v0, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    array-length v1, v0

    if-lt v1, p1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    iget v1, p0, Lorg/jsoup/nodes/b;->b:I

    mul-int/lit8 v2, v1, 0x2

    :cond_2
    if-le p1, v2, :cond_3

    goto :goto_1

    :cond_3
    move p1, v2

    :goto_1
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    iget-object v0, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/Object;

    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/b;->h()Lorg/jsoup/nodes/b;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const-class v1, Lorg/jsoup/nodes/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lorg/jsoup/nodes/b;

    iget v1, p0, Lorg/jsoup/nodes/b;->b:I

    iget v2, p1, Lorg/jsoup/nodes/b;->b:I

    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_0
    iget v2, p0, Lorg/jsoup/nodes/b;->b:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/jsoup/nodes/b;->l(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    iget-object v3, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/Object;

    aget-object v3, v3, v1

    iget-object v4, p1, Lorg/jsoup/nodes/b;->d:[Ljava/lang/Object;

    aget-object v2, v4, v2

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v0
.end method

.method public final h()Lorg/jsoup/nodes/b;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/b;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, p0, Lorg/jsoup/nodes/b;->b:I

    iput v1, v0, Lorg/jsoup/nodes/b;->b:I

    iget-object v1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/nodes/b;->b:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/Object;

    iget v2, p0, Lorg/jsoup/nodes/b;->b:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/Object;

    const-string v1, "/jsoup.userdata"

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/b;->l(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    iget-object p0, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/Object;

    aget-object p0, p0, v1

    check-cast p0, Ljava/util/Map;

    invoke-direct {v3, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    aput-object v3, v2, v1

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lti0;->f(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lorg/jsoup/nodes/b;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->l(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/Object;

    aget-object p0, p0, p1

    invoke-static {p0}, Lorg/jsoup/nodes/b;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jsoup/nodes/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/jsoup/nodes/b$a;

    invoke-direct {v0, p0}, Lorg/jsoup/nodes/b$a;-><init>(Lorg/jsoup/nodes/b;)V

    return-object v0
.end method

.method public final j(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->l(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final k(Lnw6;Lorg/jsoup/nodes/f$a;)V
    .locals 5

    iget v0, p0, Lorg/jsoup/nodes/b;->b:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/jsoup/nodes/b;->q(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p2, Lorg/jsoup/nodes/f$a;->g:Lorg/jsoup/nodes/f$a$a;

    invoke-static {v2, v3}, Lorg/jsoup/nodes/a;->b(Ljava/lang/String;Lorg/jsoup/nodes/f$a$a;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Lnw6;->a(C)Lnw6;

    move-result-object v4

    invoke-static {v2, v3, v4, p2}, Lorg/jsoup/nodes/a;->c(Ljava/lang/String;Ljava/lang/String;Lnw6;Lorg/jsoup/nodes/f$a;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final l(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Lyb9;->e(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/jsoup/nodes/b;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final p(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Lyb9;->e(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/jsoup/nodes/b;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lyb9;->e(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->l(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/Object;

    aput-object p2, p0, v0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/b;->b(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public final s(I)V
    .locals 3

    iget v0, p0, Lorg/jsoup/nodes/b;->b:I

    if-ge p1, v0, :cond_1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/Object;

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget p1, p0, Lorg/jsoup/nodes/b;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/jsoup/nodes/b;->b:I

    iget-object v0, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    iget-object p0, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/Object;

    aput-object v1, p0, p1

    return-void

    :cond_1
    new-instance p0, Lorg/jsoup/helper/ValidationException;

    const-string p1, "Must be false"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final size()I
    .locals 3

    iget v0, p0, Lorg/jsoup/nodes/b;->b:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p0, Lorg/jsoup/nodes/b;->b:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/jsoup/nodes/b;->q(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lja8;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0}, Lnw6;->d(Ljava/lang/StringBuilder;)Lnw6;

    move-result-object v1

    new-instance v2, Lorg/jsoup/nodes/f$a;

    invoke-direct {v2}, Lorg/jsoup/nodes/f$a;-><init>()V

    invoke-virtual {p0, v1, v2}, Lorg/jsoup/nodes/b;->k(Lnw6;Lorg/jsoup/nodes/f$a;)V

    invoke-static {v0}, Lja8;->k(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
