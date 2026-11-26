.class public final Ljr4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le58;


# virtual methods
.method public final a(Lx05;Lg27;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p1, Lx05;->a:Ld15;

    sget-object p1, Le12$a;->BULLET:Le12$a;

    sget-object v0, Le12;->a:Lvr6;

    invoke-virtual {v0, p2}, Lvr6;->a(Lg27;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    new-instance p1, Lgv0;

    sget-object v0, Le12;->b:Lvr6;

    invoke-virtual {v0, p2}, Lvr6;->a(Lg27;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p0, p2}, Lgv0;-><init>(Ld15;I)V

    return-object p1

    :cond_0
    sget-object p1, Le12;->c:Lvr6;

    invoke-virtual {p1, p2}, Lvr6;->a(Lg27;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ".\u00a0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Le06;

    invoke-direct {p2, p0, p1}, Le06;-><init>(Ld15;Ljava/lang/String;)V

    return-object p2
.end method
