.class public final Ln63$a;
.super Ln;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln63;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# virtual methods
.method public final a(Ldq2;Ldq2$a;)Lbk0;
    .locals 9

    iget p0, p1, Ldq2;->g:I

    const/4 p2, 0x4

    const/4 v0, 0x0

    if-lt p0, p2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget p2, p1, Ldq2;->e:I

    iget-object p1, p1, Ldq2;->a:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, p2

    move v4, v2

    move v5, v4

    :goto_0
    const/16 v6, 0x7e

    const/16 v7, 0x60

    if-ge v3, v1, :cond_3

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-eq v8, v7, :cond_2

    if-eq v8, v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    const/4 v1, 0x3

    if-lt v4, v1, :cond_8

    if-nez v5, :cond_8

    add-int v1, p2, v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    :goto_3
    const/4 v5, -0x1

    if-ge v1, v3, :cond_5

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move v1, v5

    :goto_4
    if-eq v1, v5, :cond_7

    :cond_6
    move-object p1, v0

    goto :goto_5

    :cond_7
    new-instance p1, Ln63;

    invoke-direct {p1, v4, p0, v7}, Ln63;-><init>(IIC)V

    goto :goto_5

    :cond_8
    if-lt v5, v1, :cond_6

    if-nez v4, :cond_6

    new-instance p1, Ln63;

    invoke-direct {p1, v5, p0, v6}, Ln63;-><init>(IIC)V

    :goto_5
    if-eqz p1, :cond_9

    const/4 p0, 0x1

    new-array p0, p0, [Luj0;

    aput-object p1, p0, v2

    new-instance v0, Lbk0;

    invoke-direct {v0, p0}, Lbk0;-><init>([Luj0;)V

    iget-object p0, p1, Ln63;->a:Lm63;

    iget p0, p0, Lm63;->g:I

    add-int/2addr p2, p0

    iput p2, v0, Lbk0;->b:I

    :cond_9
    :goto_6
    return-object v0
.end method
