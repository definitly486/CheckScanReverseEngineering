.class public Lorg/jsoup/nodes/p$a;
.super Lorg/jsoup/nodes/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public d:Z


# direct methods
.method public static f(Lorg/jsoup/nodes/n;)Z
    .locals 1

    instance-of v0, p0, Lorg/jsoup/nodes/r;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jsoup/nodes/r;

    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->E()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lja8;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lorg/jsoup/nodes/h;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/p$a;->h(Lorg/jsoup/nodes/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/p;->e(I)V

    :cond_0
    iget-object p2, p0, Lorg/jsoup/nodes/p;->b:Lnw6;

    iget-object v0, p0, Lorg/jsoup/nodes/p;->c:Lorg/jsoup/nodes/f$a;

    invoke-virtual {p1, p2, v0}, Lorg/jsoup/nodes/h;->y(Lnw6;Lorg/jsoup/nodes/f$a;)V

    const/16 p2, 0x40

    iget-object p1, p1, Lorg/jsoup/nodes/h;->e:Ljj8;

    invoke-virtual {p1, p2}, Ljj8;->f(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/jsoup/nodes/p$a;->d:Z

    :cond_1
    return-void
.end method

.method public final b(Lorg/jsoup/nodes/m;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/p$a;->h(Lorg/jsoup/nodes/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/p;->e(I)V

    :cond_0
    iget-object p2, p0, Lorg/jsoup/nodes/p;->b:Lnw6;

    iget-object p0, p0, Lorg/jsoup/nodes/p;->c:Lorg/jsoup/nodes/f$a;

    invoke-virtual {p1, p2, p0}, Lorg/jsoup/nodes/n;->y(Lnw6;Lorg/jsoup/nodes/f$a;)V

    return-void
.end method

.method public final c(Lorg/jsoup/nodes/h;I)V
    .locals 2

    invoke-virtual {p1}, Lorg/jsoup/nodes/n;->q()Lorg/jsoup/nodes/n;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/jsoup/nodes/p$a;->f(Lorg/jsoup/nodes/n;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/jsoup/nodes/n;->u()Lorg/jsoup/nodes/n;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/p$a;->h(Lorg/jsoup/nodes/n;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/p;->e(I)V

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/p;->c(Lorg/jsoup/nodes/h;I)V

    iget-boolean p2, p0, Lorg/jsoup/nodes/p$a;->d:Z

    if-eqz p2, :cond_4

    iget-object p2, p1, Lorg/jsoup/nodes/h;->e:Ljj8;

    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Ljj8;->f(I)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p1, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    :goto_1
    if-eqz p1, :cond_3

    iget-object p2, p1, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget p2, p2, Ljj8;->e:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/jsoup/nodes/p$a;->d:Z

    :cond_4
    :goto_2
    return-void
.end method

.method public final d(Lorg/jsoup/nodes/r;II)V
    .locals 4

    iget-boolean p2, p0, Lorg/jsoup/nodes/p$a;->d:Z

    const/4 v0, 0x0

    if-nez p2, :cond_8

    iget-object p2, p1, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/p$a;->g(Lorg/jsoup/nodes/n;)Z

    move-result p2

    const/4 v1, 0x4

    if-nez p2, :cond_1

    :cond_0
    move v0, v1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/nodes/n;->B()Lorg/jsoup/nodes/n;

    move-result-object p2

    invoke-virtual {p1}, Lorg/jsoup/nodes/n;->u()Lorg/jsoup/nodes/n;

    move-result-object v2

    instance-of v3, p2, Lorg/jsoup/nodes/h;

    if-eqz v3, :cond_2

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/p$a;->g(Lorg/jsoup/nodes/n;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    if-eqz p2, :cond_3

    instance-of v3, p2, Lorg/jsoup/nodes/r;

    if-nez v3, :cond_4

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/p$a;->h(Lorg/jsoup/nodes/n;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    const/16 v1, 0xc

    :cond_4
    if-eqz v2, :cond_7

    instance-of p2, v2, Lorg/jsoup/nodes/r;

    if-nez p2, :cond_5

    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/p$a;->h(Lorg/jsoup/nodes/n;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    invoke-static {v2}, Lorg/jsoup/nodes/p$a;->f(Lorg/jsoup/nodes/n;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {v2}, Lorg/jsoup/nodes/n;->u()Lorg/jsoup/nodes/n;

    move-result-object v2

    goto :goto_0

    :cond_6
    instance-of p2, v2, Lorg/jsoup/nodes/r;

    if-eqz p2, :cond_0

    check-cast v2, Lorg/jsoup/nodes/m;

    invoke-virtual {v2}, Lorg/jsoup/nodes/m;->E()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result p2

    invoke-static {p2}, Lja8;->h(I)Z

    move-result p2

    if-eqz p2, :cond_0

    :cond_7
    :goto_1
    or-int/lit8 p2, v1, 0x10

    move v0, p2

    :goto_2
    invoke-virtual {p1}, Lorg/jsoup/nodes/m;->E()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lja8;->e(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p1, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/p$a;->g(Lorg/jsoup/nodes/n;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/p$a;->h(Lorg/jsoup/nodes/n;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0, p3}, Lorg/jsoup/nodes/p;->e(I)V

    :cond_8
    invoke-super {p0, p1, v0, p3}, Lorg/jsoup/nodes/p;->d(Lorg/jsoup/nodes/r;II)V

    return-void
.end method

.method public g(Lorg/jsoup/nodes/n;)Z
    .locals 4

    const/4 p0, 0x0

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    instance-of v0, p1, Lorg/jsoup/nodes/h;

    if-eqz v0, :cond_8

    check-cast p1, Lorg/jsoup/nodes/h;

    const-string v0, "br"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/n;->t(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p1, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget v0, v0, Ljj8;->e:I

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    return v1

    :cond_2
    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p1, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    instance-of v0, v0, Lorg/jsoup/nodes/f;

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lorg/jsoup/nodes/h;->I()Lorg/jsoup/nodes/h;

    move-result-object p1

    move v0, p0

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_8

    if-eqz p1, :cond_8

    iget-object v2, p1, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget v2, v2, Ljj8;->e:I

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_4

    return v1

    :cond_4
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    :cond_5
    invoke-virtual {p1}, Lorg/jsoup/nodes/n;->u()Lorg/jsoup/nodes/n;

    move-result-object p1

    if-eqz p1, :cond_6

    instance-of v2, p1, Lorg/jsoup/nodes/h;

    if-eqz v2, :cond_5

    check-cast p1, Lorg/jsoup/nodes/h;

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    return v1

    :cond_8
    :goto_3
    return p0
.end method

.method public h(Lorg/jsoup/nodes/n;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object v1, p0, Lorg/jsoup/nodes/p;->a:Lorg/jsoup/nodes/n;

    if-eq p1, v1, :cond_6

    iget-boolean v1, p0, Lorg/jsoup/nodes/p$a;->d:Z

    if-nez v1, :cond_6

    invoke-static {p1}, Lorg/jsoup/nodes/p$a;->f(Lorg/jsoup/nodes/n;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/p$a;->g(Lorg/jsoup/nodes/n;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/nodes/n;->B()Lorg/jsoup/nodes/n;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lorg/jsoup/nodes/p$a;->f(Lorg/jsoup/nodes/n;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/jsoup/nodes/n;->B()Lorg/jsoup/nodes/n;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/p$a;->g(Lorg/jsoup/nodes/n;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p1, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/p$a;->g(Lorg/jsoup/nodes/n;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p1, Lorg/jsoup/nodes/h;->e:Ljj8;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljj8;->f(I)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Lorg/jsoup/nodes/n;->q()Lorg/jsoup/nodes/n;

    move-result-object p1

    move v2, v0

    :goto_1
    const/4 v3, 0x5

    if-ge v2, v3, :cond_6

    if-eqz p1, :cond_6

    instance-of v3, p1, Lorg/jsoup/nodes/r;

    if-nez v3, :cond_5

    if-eqz v1, :cond_4

    instance-of p1, v1, Lorg/jsoup/nodes/r;

    if-nez p1, :cond_6

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/p$a;->g(Lorg/jsoup/nodes/n;)Z

    move-result p0

    if-nez p0, :cond_4

    instance-of p0, v1, Lorg/jsoup/nodes/h;

    if-nez p0, :cond_6

    :cond_4
    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_5
    invoke-virtual {p1}, Lorg/jsoup/nodes/n;->u()Lorg/jsoup/nodes/n;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    return v0
.end method
