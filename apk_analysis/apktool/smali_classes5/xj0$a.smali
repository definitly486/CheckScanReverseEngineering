.class public final Lxj0$a;
.super Ln;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxj0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# virtual methods
.method public final a(Ldq2;Ldq2$a;)Lbk0;
    .locals 3

    iget p0, p1, Ldq2;->e:I

    invoke-static {p1, p0}, Lxj0;->i(Ldq2;I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p1, Ldq2;->c:I

    iget v0, p1, Ldq2;->g:I

    add-int/2addr p2, v0

    add-int/lit8 v0, p2, 0x1

    iget-object p1, p1, Ldq2;->a:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    add-int/2addr p0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p0, v2, :cond_1

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 p1, 0x9

    if-eq p0, p1, :cond_0

    const/16 p1, 0x20

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, 0x2

    :cond_1
    :goto_0
    new-instance p0, Lxj0;

    invoke-direct {p0}, Lxj0;-><init>()V

    new-array p1, v1, [Luj0;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    new-instance p0, Lbk0;

    invoke-direct {p0, p1}, Lbk0;-><init>([Luj0;)V

    iput v0, p0, Lbk0;->c:I

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
