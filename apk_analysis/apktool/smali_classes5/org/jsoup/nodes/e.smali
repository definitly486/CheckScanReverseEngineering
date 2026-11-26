.class public final Lorg/jsoup/nodes/e;
.super Lorg/jsoup/nodes/m;
.source "SourceFile"


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/jsoup/nodes/n;->k()Lorg/jsoup/nodes/n;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/e;

    return-object p0
.end method

.method public final k()Lorg/jsoup/nodes/n;
    .locals 0

    invoke-super {p0}, Lorg/jsoup/nodes/n;->k()Lorg/jsoup/nodes/n;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/e;

    return-object p0
.end method

.method public final v()Ljava/lang/String;
    .locals 0

    const-string p0, "#data"

    return-object p0
.end method

.method public final y(Lnw6;Lorg/jsoup/nodes/f$a;)V
    .locals 3

    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->E()Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lorg/jsoup/nodes/f$a;->g:Lorg/jsoup/nodes/f$a$a;

    sget-object v1, Lorg/jsoup/nodes/f$a$a;->xml:Lorg/jsoup/nodes/f$a$a;

    if-ne p2, v1, :cond_2

    const-string p2, "<![CDATA["

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v1, v1, Ljj8;->d:Ljava/lang/String;

    const-string v2, "script"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "//<![CDATA[\n"

    invoke-virtual {p1, p0}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object p0

    invoke-virtual {p0, v0}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object p0

    const-string p1, "\n//]]>"

    invoke-virtual {p0, p1}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    return-void

    :cond_0
    iget-object p0, p0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object p0, p0, Ljj8;->d:Ljava/lang/String;

    const-string v1, "style"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "/*<![CDATA[*/\n"

    invoke-virtual {p1, p0}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object p0

    invoke-virtual {p0, v0}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object p0

    const-string p1, "\n/*]]>*/"

    invoke-virtual {p0, p1}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object p0

    invoke-virtual {p0, v0}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object p0

    const-string p1, "]]>"

    invoke-virtual {p0, p1}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    return-void

    :cond_2
    invoke-virtual {p1, v0}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    return-void
.end method
