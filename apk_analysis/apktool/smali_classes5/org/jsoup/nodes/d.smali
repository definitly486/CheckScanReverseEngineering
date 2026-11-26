.class public final Lorg/jsoup/nodes/d;
.super Lorg/jsoup/nodes/m;
.source "SourceFile"


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/jsoup/nodes/n;->k()Lorg/jsoup/nodes/n;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/d;

    return-object p0
.end method

.method public final k()Lorg/jsoup/nodes/n;
    .locals 0

    invoke-super {p0}, Lorg/jsoup/nodes/n;->k()Lorg/jsoup/nodes/n;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/d;

    return-object p0
.end method

.method public final v()Ljava/lang/String;
    .locals 0

    const-string p0, "#comment"

    return-object p0
.end method

.method public final y(Lnw6;Lorg/jsoup/nodes/f$a;)V
    .locals 0

    const-string p2, "<!--"

    invoke-virtual {p1, p2}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->E()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object p0

    const-string p1, "-->"

    invoke-virtual {p0, p1}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    return-void
.end method
