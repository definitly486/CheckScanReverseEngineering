.class public final Lok2;
.super Lej3;
.source "SourceFile"


# virtual methods
.method public final b(Lej3;Lo22;)Lok2;
    .locals 1

    sget p0, Lnb9;->b:I

    sget-object p0, Lr22;->Key:Lr22$a;

    invoke-virtual {p1, p0}, Lej3;->get(Lo22$b;)Lo22$a;

    move-result-object p1

    check-cast p1, Lr22;

    invoke-interface {p2, p0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p0

    check-cast p0, Lr22;

    instance-of v0, p1, Lpk2;

    if-eqz v0, :cond_0

    if-eq p1, p0, :cond_0

    check-cast p1, Lpk2;

    const/4 p0, 0x0

    iput p0, p1, Lpk2;->d:I

    :cond_0
    new-instance p0, Lok2;

    invoke-direct {p0, p2}, Lej3;-><init>(Lo22;)V

    return-object p0
.end method
