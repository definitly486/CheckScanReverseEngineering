.class public final Lorg/jsoup/nodes/c;
.super Lorg/jsoup/nodes/r;
.source "SourceFile"


# virtual methods
.method public final G()Lorg/jsoup/nodes/r;
    .locals 0

    invoke-super {p0}, Lorg/jsoup/nodes/r;->G()Lorg/jsoup/nodes/r;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/c;

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/jsoup/nodes/r;->G()Lorg/jsoup/nodes/r;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/c;

    return-object p0
.end method

.method public final k()Lorg/jsoup/nodes/n;
    .locals 0

    invoke-super {p0}, Lorg/jsoup/nodes/r;->G()Lorg/jsoup/nodes/r;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/c;

    return-object p0
.end method

.method public final v()Ljava/lang/String;
    .locals 0

    const-string p0, "#cdata"

    return-object p0
.end method

.method public final y(Lnw6;Lorg/jsoup/nodes/f$a;)V
    .locals 0

    const-string p2, "<![CDATA["

    invoke-virtual {p1, p2}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->E()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object p0

    const-string p1, "]]>"

    invoke-virtual {p0, p1}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    return-void
.end method
