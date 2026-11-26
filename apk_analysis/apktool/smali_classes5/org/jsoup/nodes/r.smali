.class public Lorg/jsoup/nodes/r;
.super Lorg/jsoup/nodes/m;
.source "SourceFile"


# virtual methods
.method public G()Lorg/jsoup/nodes/r;
    .locals 0

    invoke-super {p0}, Lorg/jsoup/nodes/n;->k()Lorg/jsoup/nodes/n;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/r;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/r;->G()Lorg/jsoup/nodes/r;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic k()Lorg/jsoup/nodes/n;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/r;->G()Lorg/jsoup/nodes/r;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->x()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public v()Ljava/lang/String;
    .locals 0

    const-string p0, "#text"

    return-object p0
.end method

.method public y(Lnw6;Lorg/jsoup/nodes/f$a;)V
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->E()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p1, p0, p2, v0}, Lorg/jsoup/nodes/j;->c(Lnw6;Ljava/lang/String;Lorg/jsoup/nodes/f$a;I)V

    return-void
.end method
