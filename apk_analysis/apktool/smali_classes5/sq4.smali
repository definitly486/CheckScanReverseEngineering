.class public final Lsq4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le58;


# virtual methods
.method public final a(Lx05;Lg27;)Ljava/lang/Object;
    .locals 2

    new-instance p0, Lio/noties/markwon/core/spans/LinkSpan;

    iget-object v0, p1, Lx05;->a:Ld15;

    sget-object v1, Le12;->e:Lvr6;

    invoke-virtual {v1, p2}, Lvr6;->a(Lg27;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p1, p1, Lx05;->c:Lqq4;

    invoke-direct {p0, v0, p2, p1}, Lio/noties/markwon/core/spans/LinkSpan;-><init>(Ld15;Ljava/lang/String;Lqq4;)V

    return-object p0
.end method
