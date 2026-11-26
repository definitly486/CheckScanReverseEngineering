.class public final Lrx3$a;
.super Ln;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# virtual methods
.method public final a(Ldq2;Ldq2$a;)Lbk0;
    .locals 7

    iget p0, p1, Ldq2;->e:I

    iget-object v0, p1, Ldq2;->a:Ljava/lang/CharSequence;

    iget v1, p1, Ldq2;->g:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    invoke-interface {v0, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/4 v3, 0x7

    if-gt v2, v3, :cond_2

    if-ne v2, v3, :cond_0

    iget-object v3, p2, Ldq2$a;->a:Luj0;

    invoke-interface {v3}, Luj0;->d()Lpj0;

    move-result-object v3

    instance-of v3, v3, Ld36;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v3, Lrx3;->e:[[Ljava/util/regex/Pattern;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    aget-object v5, v3, v4

    aget-object v3, v3, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {v0, p0, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance p0, Lrx3;

    invoke-direct {p0, v3}, Lrx3;-><init>(Ljava/util/regex/Pattern;)V

    new-array p2, v1, [Luj0;

    aput-object p0, p2, v4

    new-instance p0, Lbk0;

    invoke-direct {p0, p2}, Lbk0;-><init>([Luj0;)V

    iget p1, p1, Ldq2;->b:I

    iput p1, p0, Lbk0;->b:I

    return-object p0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
