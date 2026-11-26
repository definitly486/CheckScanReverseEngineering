.class public final Let8$a;
.super Ln;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Let8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# virtual methods
.method public final a(Ldq2;Ldq2$a;)Lbk0;
    .locals 6

    iget p0, p1, Ldq2;->g:I

    const/4 p2, 0x4

    if-lt p0, p2, :cond_0

    goto :goto_2

    :cond_0
    iget p0, p1, Ldq2;->e:I

    iget-object p1, p1, Ldq2;->a:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge p0, p2, :cond_5

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_4

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_2

    const/16 v5, 0x5f

    if-eq v4, v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    :cond_4
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x3

    if-lt v1, p0, :cond_6

    if-nez v2, :cond_6

    if-eqz v3, :cond_8

    :cond_6
    if-lt v2, p0, :cond_7

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    :cond_7
    if-lt v3, p0, :cond_9

    if-nez v1, :cond_9

    if-nez v2, :cond_9

    :cond_8
    new-instance p0, Let8;

    invoke-direct {p0}, Let8;-><init>()V

    const/4 p2, 0x1

    new-array p2, p2, [Luj0;

    aput-object p0, p2, v0

    new-instance p0, Lbk0;

    invoke-direct {p0, p2}, Lbk0;-><init>([Luj0;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lbk0;->b:I

    return-object p0

    :cond_9
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method
