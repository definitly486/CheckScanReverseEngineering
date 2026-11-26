.class public final Lov3$a;
.super Ln;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lov3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# virtual methods
.method public final a(Ldq2;Ldq2$a;)Lbk0;
    .locals 10

    iget p0, p1, Ldq2;->g:I

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-lt p0, v0, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object p0, p1, Ldq2;->a:Ljava/lang/CharSequence;

    iget p1, p1, Ldq2;->e:I

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v2, 0x23

    invoke-static {v2, p1, v0, p0}, Ltz;->b(CIILjava/lang/CharSequence;)I

    move-result v0

    sub-int/2addr v0, p1

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    const/4 v4, 0x6

    if-le v0, v4, :cond_1

    goto :goto_0

    :cond_1
    add-int v4, p1, v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lt v4, v5, :cond_2

    new-instance v2, Lov3;

    const-string v4, ""

    invoke-direct {v2, v0, v4}, Lov3;-><init>(ILjava/lang/String;)V

    goto/16 :goto_7

    :cond_2
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x9

    const/16 v7, 0x20

    if-eq v5, v7, :cond_4

    if-eq v5, v6, :cond_4

    :cond_3
    :goto_0
    move-object v2, v1

    goto :goto_7

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_1
    if-lt v5, v4, :cond_6

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-eq v8, v6, :cond_5

    if-eq v8, v7, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v5, v4, -0x1

    :goto_2
    move v8, v5

    :goto_3
    if-lt v8, v4, :cond_8

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-eq v9, v2, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v8, v4, -0x1

    :goto_4
    move v2, v8

    :goto_5
    if-lt v2, v4, :cond_a

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-eq v9, v6, :cond_9

    if-eq v9, v7, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v2, v4, -0x1

    :goto_6
    if-eq v2, v8, :cond_b

    new-instance v5, Lov3;

    add-int/2addr v2, v3

    invoke-interface {p0, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v0, v2}, Lov3;-><init>(ILjava/lang/String;)V

    move-object v2, v5

    goto :goto_7

    :cond_b
    new-instance v2, Lov3;

    add-int/2addr v5, v3

    invoke-interface {p0, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lov3;-><init>(ILjava/lang/String;)V

    :goto_7
    const/4 v0, 0x0

    if-eqz v2, :cond_c

    new-array p1, v3, [Luj0;

    aput-object v2, p1, v0

    new-instance p2, Lbk0;

    invoke-direct {p2, p1}, Lbk0;-><init>([Luj0;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    iput p0, p2, Lbk0;->b:I

    return-object p2

    :cond_c
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v4, 0x2d

    if-eq v2, v4, :cond_e

    const/16 v5, 0x3d

    if-eq v2, v5, :cond_d

    goto :goto_8

    :cond_d
    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v5, v2, v6, p0}, Ltz;->b(CIILjava/lang/CharSequence;)I

    move-result v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {p0, v2, v5}, Ltz;->c(Ljava/lang/CharSequence;II)I

    move-result v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lt v2, v5, :cond_e

    move p1, v3

    goto :goto_9

    :cond_e
    add-int/2addr p1, v3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v4, p1, v2, p0}, Ltz;->b(CIILjava/lang/CharSequence;)I

    move-result p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {p0, p1, v2}, Ltz;->c(Ljava/lang/CharSequence;II)I

    move-result p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt p1, v2, :cond_f

    const/4 p1, 0x2

    goto :goto_9

    :cond_f
    :goto_8
    move p1, v0

    :goto_9
    if-lez p1, :cond_12

    iget-object p2, p2, Ldq2$a;->a:Luj0;

    instance-of v2, p2, Le36;

    if-eqz v2, :cond_10

    check-cast p2, Le36;

    iget-object p2, p2, Le36;->b:Lpq4;

    iget-object p2, p2, Lpq4;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    move-object p2, v1

    :cond_11
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lov3;

    invoke-direct {v1, p1, p2}, Lov3;-><init>(ILjava/lang/String;)V

    new-array p1, v3, [Luj0;

    aput-object v1, p1, v0

    new-instance p2, Lbk0;

    invoke-direct {p2, p1}, Lbk0;-><init>([Luj0;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    iput p0, p2, Lbk0;->b:I

    iput-boolean v3, p2, Lbk0;->d:Z

    return-object p2

    :cond_12
    :goto_a
    return-object v1
.end method
